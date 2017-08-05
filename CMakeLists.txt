cmake_minimum_required(VERSION 3.0.2)

project(DeGeM)

find_package(Qt5 COMPONENTS Core Gui Qml Quick REQUIRED)

set(headers
    src/DeGeM/ExpenseSummaryModel.h
    )

set(sources
    src/DeGeM/main.cpp
    src/DeGeM/ExpenseSummaryModel.cpp
    )

set(resources
    res/qml_resources.qrc
    )
qt5_add_resources(rcc_generated ${resources})

add_executable(DeGeM ${sources} ${headers} ${rcc_generated})
target_link_libraries(DeGeM
                      PUBLIC Qt5::Core
                      PUBLIC Qt5::Gui
                      PUBLIC Qt5::Quick
                      PUBLIC Qt5::Qml
                      )
