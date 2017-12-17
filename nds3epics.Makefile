
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(REQUIRE_TOOLS)/driver.makefile

APP:=nds3epics

USR_CXXFLAGS += -std=c++0x -fvisibility=hidden -fvisibility-inlines-hidden

SOURCES  = $(wildcard ndsIocApp/src/epics*.cpp)
SOURCES += ndsIocApp/src/ndsRegister.cpp
