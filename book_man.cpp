#include <iostream>
#include <sstream>
#include <fstream>
#include <cstdio>
#include <cstring>
#include <vector>
#include "everything.h"
#pragma pack(1)
extern int login_stat;
extern int user_total;
extern int user_del;
extern int now_select;
extern int book_total;
extern double book_sold_money;
extern double book_import_money;
fstream book_table_cnt;
fstream book_table;
class book
{
public:
    char ISBN[30] = {};
    char name[100] = {};
    char author[100] = {};
    char keyword[100] = {};
    int quantity = 0;
    double price = 0.0;
    explicit book(const char* ISBNN, const char* namee = "", const char* authorr = "", const char* keywordd = "", int quantityy = 0, double pricee = 0.0)
    {
        memset(ISBN, 0, sizeof(ISBN));
        memset(author, 0, sizeof(author));
        memset(name, 0, sizeof(name));
        memset(keyword, 0, sizeof(keyword));
        strcpy(ISBN, ISBNN);
        strcpy(name, namee);
        strcpy(author, authorr);
        strcpy(keyword, keywordd);
        quantity = quantityy;
        price = pricee;
    };
    book()
    {
        memset(ISBN, 0, sizeof(ISBN));
        memset(author, 0, sizeof(author));
        memset(name, 0, sizeof(name));
        memset(keyword, 0, sizeof(keyword));
    };
};
void test_auth(int needed_stat)
{
    if(login_stat < needed_stat)
        throw needed_stat;
}
void test_now_select()
{
    if(now_select == -1)
        throw now_select;
}
int find_book_ISBN(char* ISBNN)
{
    book_table.seekg(0);
    book* finding = new book();
    for(int i = 0; i < book_total; i++)
    {
        book_table.seekg(i * sizeof(book));
        book_table.read(reinterpret_cast<char*>(finding), sizeof(book));
        if(strcmp(ISBNN, finding->ISBN) == 0)
        {
            delete finding;
            return i;
        }
    }
    delete finding;
    return -1;
}
int find_book_name(char* name)
{
    book_table.seekg(0);
    book* finding = new book();
    for(int i = 0; i < book_total; i++)
    {
        book_table.seekg(i * sizeof(book));
        book_table.read(reinterpret_cast<char*>(finding), sizeof(book));
        if(strcmp(name, finding->name) == 0)
        {
            delete finding;
            return i;
        }
    }
    delete finding;
    return -1;
}
vector<int> find_book_author(char* author)
{
    vector<int> finding_no;
    book_table.seekg(0);
    book* finding = new book();
    for(int i = 0; i < book_total; i++)
    {
        book_table.seekg(i * sizeof(book));
        book_table.read(reinterpret_cast<char*>(finding), sizeof(book));
        if(strcmp(author, finding->author) == 0)
            finding_no.push_back(i);
    }
    delete finding;
    return finding_no;
}
vector<int> find_book_keyword(char* keyword)
{
    vector<int> finding_no;
    book_table.seekg(0);
    book* finding = new book();
    char finding_key[30];
    for(int i = 0; i < book_total; i++)
    {
        int flag = -1;
        book_table.seekg(i * sizeof(book));
        book_table.read(reinterpret_cast<char*>(finding), sizeof(book));
        stringstream tmpkey(finding->keyword);
        while(true)
        {
            tmpkey.get(finding_key, 100, '|');
            if (tmpkey.get() == -1)
                break;
            flag = strcmp(finding_key, keyword);
            if (flag == 0)
                break;
        }
        if(flag == 0)
            finding_no.push_back(i);
    }
    delete finding;
    return finding_no;
}
void showshowshow(int no)
{
	if(no == -1)
		return;
    book *found = new book();
    book_table.seekg(no * sizeof(book));
    book_table.read(reinterpret_cast<char*>(found), sizeof(book));
    cout << found->ISBN << "\t" << found->name << "\t" << found->author << "\t" << found->keyword << "\t";
    printf("%.2f\t", found->price);
    cout << found->quantity << "本" << endl;
    delete found;
}
void cmd_book_man(char* cmd)
{
    try
    {
        book_table_cnt.open("book_table_cnt.txt");
        book_table_cnt.seekg(0);
        book_table_cnt.read(reinterpret_cast<char *>(&book_total), sizeof(int));
        book_table_cnt.seekg(sizeof(int));
        book_table_cnt.read(reinterpret_cast<char *>(&book_sold_money), sizeof(double));
        book_table_cnt.seekg(sizeof(int) + sizeof(double));
        book_table_cnt.read(reinterpret_cast<char *>(&book_import_money), sizeof(double));
        book_table.open("book_table.txt");
        book_table.seekg(0);
        stringstream cmdd(cmd);
        char cmd_head[100];
        cmdd >> cmd_head;
        if (strcmp(cmd_head, "select") == 0)
        {
            test_auth(3);
            char ISBNN[25];
            cmdd >> ISBNN;
            now_select = find_book_ISBN(ISBNN);
            if (now_select == -1)
            {
                book *new_book = new book(ISBNN);
                book_table.seekp(0, ios::end);
                book_table.write(reinterpret_cast<char *>(new_book), sizeof(book));
                now_select = book_total;
                book_total++;
                delete new_book;
            }
        }
        else if (strcmp(cmd_head, "show") == 0)
        {
            test_auth(1);
            cmdd.get();
            if(cmdd.get() == -1)
                for(int i = 0; i < book_total; i++)
                    showshowshow(i);
            else
            {
                char what_to_show[10], what_to_show_content[80];
                cmdd.get(what_to_show, 9, '=');
                cmdd.get();
                if (strcmp(what_to_show, "ISBN") == 0)
                {
                    cmdd >> what_to_show_content;
                    int found_no = find_book_ISBN(what_to_show_content);
                    showshowshow(found_no);
                }
                else if (strcmp(what_to_show, "name") == 0)
                {
                    cmdd.get();
                    cmdd.get(what_to_show_content, 70, '\"');
                    cmdd.get();
                    int found_no = find_book_name(what_to_show_content);
                    showshowshow(found_no);
                }
                else if (strcmp(what_to_show, "author") == 0)
                {
                    cmdd.get();
                    cmdd.get(what_to_show_content, 70, '\"');
                    cmdd.get();
                    vector<int> found_no = find_book_author(what_to_show_content);
                    for (int i : found_no)
                        showshowshow(i);
                }
                else if (strcmp(what_to_show, "keyword") == 0)
                {
                    cmdd.get();
                    cmdd.get(what_to_show_content, 70, '\"');
                    cmdd.get();
                    vector<int> found_no = find_book_keyword(what_to_show_content);
                     for (int i : found_no)
                          showshowshow(i);
                }
                else
                    cout << "Invalid" << endl;
            }
        }
        else if (strcmp(cmd_head, "modify") == 0)
        {
            test_auth(3);
            test_now_select();
            book_table.seekp(now_select * sizeof(book));
            book *now_book = new book();
            book_table.read(reinterpret_cast<char *>(now_book), sizeof(book));
            char what_to_modify[10], after_modify[80];
            while (true)
            {
                char got = cmdd.get();
                if (got == -1)
                    break;
                cmdd.get();
                cmdd.get(what_to_modify, 9, '=');
                cmdd.get();
                if (strcmp(what_to_modify, "price") == 0)
                {
                    double price_after_modify;
                    cmdd >> price_after_modify;
                    now_book->price = price_after_modify;
                }
                else if (strcmp(what_to_modify, "ISBN") == 0)
                {
                    cmdd >> after_modify;
                    strcpy(now_book->ISBN, after_modify);
                }
                else if (strcmp(what_to_modify, "name") == 0)
                {
                    cmdd.get();
                    cmdd.get(after_modify, 70, '\"');
                    cmdd.get();
                    strcpy(now_book->name, after_modify);
                }
                else if (strcmp(what_to_modify, "author") == 0)
                {
                    cmdd.get();
                    cmdd.get(after_modify, 70, '\"');
                    cmdd.get();
                    strcpy(now_book->author, after_modify);
                }
                else if (strcmp(what_to_modify, "keyword") == 0)
                {
                    cmdd.get();
                    cmdd.get(after_modify, 70, '\"');
                    cmdd.get();
                    strcpy(now_book->keyword, after_modify);
                }
                else
                    cout << "Invalid" << endl;
            }
            book_table.seekg(now_select * sizeof(book));
            book_table.write(reinterpret_cast<char *>(now_book), sizeof(book));
            delete now_book;
        }
        else if(strcmp(cmd_head, "import") == 0)
        {
            book *now_book = new book();
            test_auth(3);
            int quantity;
            double cost_price_in_total;
            cmdd >> quantity >> cost_price_in_total;
            if(now_select == -1)
                cout << "Invalid" << endl;
            else
            {
                book_table.seekp(now_select * sizeof(book));
                book_table.read(reinterpret_cast<char *>(now_book), sizeof(book));
                now_book->quantity += quantity;
                book_import_money += cost_price_in_total;
                book_table.seekg(now_select * sizeof(book));
                book_table.write(reinterpret_cast<char *>(now_book), sizeof(book));
            }
            delete now_book;
        }
        book_table_cnt.seekp(0);
        book_table_cnt.write(reinterpret_cast<char *>(&book_total), sizeof(int));
        book_table_cnt.seekp(sizeof(int));
        book_table_cnt.write(reinterpret_cast<char *>(&book_sold_money), sizeof(double));
        book_table_cnt.seekp(sizeof(int) + sizeof(double));
        book_table_cnt.write(reinterpret_cast<char *>(&book_import_money), sizeof(double));
//        book *finding = new book();
//        for(int i = 0; i < book_total; i++)
//        {
//            book_table.seekg(i * sizeof(book));
//            book_table.read(reinterpret_cast<char *>(finding), sizeof(book));
//            cout << finding->ISBN << "    list    " << finding->name << "        " << finding->author << finding->keyword << finding->quantity << endl;
//        }
//        cout << endl << endl << endl;
//        delete finding;

        book_table.flush();
        book_table.close();
        book_table_cnt.flush();
        book_table_cnt.close();
    }
    catch(int ex)
    {
        if(ex < 0)
            cout << "Invalid" << endl;
        else
            cout << "Invalid" << endl;
    }
}