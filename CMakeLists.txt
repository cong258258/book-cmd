cmake_minimum_required(VERSION 3.10)
project(book-cmd)

set(CMAKE_CXX_STANDARD 14)

add_executable(code main.cpp cmd.cpp everything.h user_man.cpp book_man.cpp ui_control.cpp file_control.cpp)