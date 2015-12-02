LOCAL_PATH:= $(call my-dir)
LIBICONV_PATH:=$(LOCAL_PATH)
include $(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-android/config.mk

####share libmosquitto.so####
include $(CLEAR_VARS)

#编译模块名称
LOCAL_MODULE := libmosquitto

LOCAL_SDK_VERSION := 9
LOCAL_NDK_GNU_SUPC := supc_static
LOCAL_NDK_GNU_STL := gnu_stl

#编译的源代码文件列表
LOCAL_SRC_FILES := 	\
					mosquitto.c \
					logging_mosq.c \
					memory_mosq.c \
					messages_mosq.c \
					net_mosq.c \
					read_handle.c \
					read_handle_client.c \
					read_handle_shared.c \
					send_mosq.c \
					send_client_mosq.c \
					socks_mosq.c \
					srv_mosq.c \
					thread_mosq.c \
					time_mosq.c \
					tls_mosq.c \
					util_mosq.c \
					will_mosq.c

#头文件的搜索路径					
LOCAL_C_INCLUDES := \
					$(LIBICONV_PATH)/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-android/ \
					$(ANDROID_BUILD_TOP)/bionic \
					$(ANDROID_BUILD_TOP)/system/core/include \
					$(ANDROID_BUILD_TOP)/prebuilts/ndk/9/sources/cxx-stl/gnu-libstdc++/include \
                    $(ANDROID_BUILD_TOP)/prebuilts/ndk/9/sources/cxx-stl/gnu-libstdc++/4.7/libs/armeabi/include \
					$(ANDROID_BUILD_TOP)/android/prefix/include/ \
					$(ANDROID_BUILD_TOP)/android/prefix/lib/
	
#可选的编译器选项，编译 C 代码文件的时候使用	
LOCAL_CFLAGS :=	\
				$(LIB_CFLAGS)
	
#可选的编译器选项，编译 C 和 C++ 都适用	
LOCAL_CPPFLAGS :=	\
					$(LIB_CXXFLAGS)

#静态库链接				
LOCAL_STATIC_LIBRARIES := libcares

#动态库链接
LOCAL_SHARED_LIBRARIES :=

#编译模块时要使用的附加的链接器选项
LOCAL_LDLIBS := \
				${LIB_LIBS}

LOCAL_ARM_MODE := arm

LOCAL_MODULE_TAGS := eng
			
include $(BUILD_SHARED_LIBRARY)




####static libmosquitto.a####
include $(CLEAR_VARS)

#编译模块名称
LOCAL_MODULE := libmosquitto

LOCAL_SDK_VERSION := 9
LOCAL_NDK_GNU_SUPC := supc_static
LOCAL_NDK_GNU_STL := gnu_stl

#编译的源代码文件列表
LOCAL_SRC_FILES := 	\
					mosquitto.c \
					logging_mosq.c \
					memory_mosq.c \
					messages_mosq.c \
					net_mosq.c \
					read_handle.c \
					read_handle_client.c \
					read_handle_shared.c \
					send_mosq.c \
					send_client_mosq.c \
					socks_mosq.c \
					srv_mosq.c \
					thread_mosq.c \
					time_mosq.c \
					tls_mosq.c \
					util_mosq.c \
					will_mosq.c

#头文件的搜索路径					
LOCAL_C_INCLUDES := \
					$(LIBICONV_PATH)/ \
					$(ANDROID_BUILD_TOP)/packages/apps/smarthome/mosquitto-android/ \
					$(ANDROID_BUILD_TOP)/bionic \
					$(ANDROID_BUILD_TOP)/system/core/include \
					$(ANDROID_BUILD_TOP)/prebuilts/ndk/9/sources/cxx-stl/gnu-libstdc++/include \
                    $(ANDROID_BUILD_TOP)/prebuilts/ndk/9/sources/cxx-stl/gnu-libstdc++/4.7/libs/armeabi/include \
					$(ANDROID_BUILD_TOP)/android/prefix/include/ \
					$(ANDROID_BUILD_TOP)/android/prefix/lib/
	
#可选的编译器选项，编译 C 代码文件的时候使用	
LOCAL_CFLAGS :=	\
				$(LIB_CFLAGS)
	
#可选的编译器选项，编译 C 和 C++ 都适用	
LOCAL_CPPFLAGS :=	\
					$(LIB_CFLAGS)

#静态库链接				
LOCAL_STATIC_LIBRARIES := libcares

#动态库链接
LOCAL_SHARED_LIBRARIES :=

#编译模块时要使用的附加的链接器选项
LOCAL_LDLIBS := \
				${LIB_LIBS}

LOCAL_ARM_MODE := arm

LOCAL_MODULE_TAGS := eng
				
include $(BUILD_STATIC_LIBRARY)
