LOCAL_PATH := $(call my-dir)

# copy kernel headers to the build tree
$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr: $(wildcard $(TARGET_BOARD_KERNEL_HEADERS)/*)
	rm -rf $@
	mkdir -p $@/include
	cp -a $(TARGET_BOARD_KERNEL_HEADERS)/. $@/include