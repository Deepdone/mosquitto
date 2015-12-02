LOCAL_PATH:= $(call my-dir)
include $(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-android/config.mk

#mosquitto_pub
include $(CLEAR_VARS)

LOCAL_SDK_VERSION := 9

LOCAL_NDK_GNU_SUPC := supc_static

LOCAL_NDK_GNU_STL := gnu_stl

LOCAL_SRC_FILES = 	pub_client.c \
					client_shared.c


LOCAL_SHARED_LIBRARIES := libmosquitto libmosquittocpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-1.4.4/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-1.4.4/lib/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-1.4.4/lib/cpp

LOCAL_CFLAGS := -Wall -fexceptions  -Wno-unused-parameter  -Wno-non-virtual-dtor -Wno-type-limits   -frtti -DTARGET_LINUX_ARM_AML -DSIGNAL_TRY -DSIGNAL_TRY_ANDROID -I../lib -DVERSION="\"1.4.4\""

LOCAL_CPPFLAGS +=  -Wall -fexceptions   -Wno-unused-parameter -Wno-non-virtual-dtor -Wno-type-limits  -frtti -DTARGET_LINUX_ARM_AML -DSIGNAL_TRY -DSIGNAL_TRY_ANDROID -I../lib -DVERSION="\"1.4.4\""

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE:= mosquitto_pub

include $(BUILD_EXECUTABLE)



#mosquitto_sub
include $(CLEAR_VARS)

LOCAL_SDK_VERSION := 9

LOCAL_NDK_GNU_SUPC := supc_static

LOCAL_NDK_GNU_STL := gnu_stl

LOCAL_SRC_FILES =	sub_client.c \
					client_shared.c


LOCAL_SHARED_LIBRARIES := libmosquitto libmosquittocpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-1.4.4/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-1.4.4/lib/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-1.4.4/lib/cpp

LOCAL_CFLAGS := -Wall -fexceptions  -Wno-unused-parameter  -Wno-non-virtual-dtor -Wno-type-limits   -frtti -DTARGET_LINUX_ARM_AML -DSIGNAL_TRY -DSIGNAL_TRY_ANDROID -I../lib -DVERSION="\"1.4.4\""

LOCAL_CPPFLAGS +=  -Wall -fexceptions   -Wno-unused-parameter -Wno-non-virtual-dtor -Wno-type-limits  -frtti -DTARGET_LINUX_ARM_AML -DSIGNAL_TRY -DSIGNAL_TRY_ANDROID -I../lib -DVERSION="\"1.4.4\""

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE:= mosquitto_sub

include $(BUILD_EXECUTABLE)



