
where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(REQUIRE_TOOLS)/driver.makefile

APP:=nds3epics
APPSRC=ndsIocApp/src

USR_CXXFLAGS += -std=c++0x -fvisibility=hidden -fvisibility-inlines-hidden

SOURCES  = $(wildcard $(APPSRC)/epics*.cpp)
SOURCES += $(APPSRC)/ndsRegister.cpp

DBDS = $(APPSRC)/nds.dbd
