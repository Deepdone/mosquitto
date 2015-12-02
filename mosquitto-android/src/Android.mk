LOCAL_PATH:= $(call my-dir)
LIBICONV_PATH:=$(LOCAL_PATH)
include $(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-android/config.mk

$(warning "the value of BROKER_CFLAGS is $(BROKER_CFLAGS)")
$(warning "the value of BROKER_LIBS is $(BROKER_LIBS)")

####EXE mosquitto####
include $(CLEAR_VARS)

#编译模块名称
LOCAL_MODULE := mosquitto

LOCAL_SDK_VERSION := 9
LOCAL_NDK_GNU_SUPC := supc_static
LOCAL_NDK_GNU_STL := gnu_stl

#编译的源代码文件列表
LOCAL_SRC_FILES := 	\
					mosquitto.c \
					bridge.c \
					conf.c \
					context.c \
					database.c \
					logging.c \
					loop.c \
					../lib/memory_mosq.c \
					net.c \
					../lib/net_mosq.c \
					persist.c \
					read_handle.c \
					read_handle_client.c \
					read_handle_server.c \
					../lib/read_handle_shared.c \
					security.c \
					security_default.c \
					../lib/send_client_mosq.c \
					../lib/send_mosq.c \
					send_server.c \
					service.c \
					subs.c \
					sys_tree.c \
					../lib/time_mosq.c \
					../lib/tls_mosq.c \
					../lib/util_mosq.c \
					websockets.c \
					../lib/will_mosq.c

#头文件的搜索路径					
LOCAL_C_INCLUDES := \
					$(LIBICONV_PATH)/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-android/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-android/lib/ \
					$(ANDROID_BUILD_TOP)/bionic \
					$(ANDROID_BUILD_TOP)/system/core/include \
					$(ANDROID_BUILD_TOP)/prebuilts/ndk/9/sources/cxx-stl/gnu-libstdc++/include \
                    $(ANDROID_BUILD_TOP)/prebuilts/ndk/9/sources/cxx-stl/gnu-libstdc++/4.7/libs/armeabi/include \
					$(ANDROID_BUILD_TOP)/prebuilts/ndk/9/platforms/android-18/arch-arm/usr/include/ \
					$(ANDROID_BUILD_TOP)/android/prefix/include/ \
					$(ANDROID_BUILD_TOP)/android/prefix/lib/ \
					$(ANDROID_BUILD_TOP)/external/zlib/src \
					
	
#可选的编译器选项，编译 C 代码文件的时候使用	
LOCAL_CFLAGS :=	\
				-DANDROID \
				$(BROKER_CFLAGS)
	
#可选的编译器选项，编译 C 和 C++ 都适用	
LOCAL_CPPFLAGS :=	\
					$(LIB_CXXFLAGS)

#静态库链接				
LOCAL_STATIC_LIBRARIES :=

#动态库链接
LOCAL_SHARED_LIBRARIES := libdl

#编译模块时要使用的附加的链接器选项
LOCAL_LDLIBS := \
				${BROKER_LIBS}

LOCAL_ARM_MODE := arm

LOCAL_MODULE_TAGS := eng
			
include $(BUILD_EXECUTABLE)