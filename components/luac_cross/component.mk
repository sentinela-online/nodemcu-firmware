COMPONENT_OWNBUILDTARGET:=build
COMPONENT_ADD_LDFLAGS:=

build:
	$(MAKE) -f $(COMPONENT_PATH)/Makefile HOSTCC=$(HOSTCC) BUILD_DIR_BASE=$(BUILD_DIR_BASE) V=$V COMPONENT_PATH=$(COMPONENT_PATH) CONFIG_LUA_OPTIMIZE_DEBUG=$(CONFIG_LUA_OPTIMIZE_DEBUG)
	ar cr lib$(COMPONENT_NAME).a # work around IDF regression
