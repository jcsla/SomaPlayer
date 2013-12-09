LOCAL_PATH := $(call my-dir)
 
include $(CLEAR_VARS)
 
#LOCAL_MODULE 은 lib 명
LOCAL_MODULE    := ffmpeg

#LOCAL_SRC_FILES 는 자신의 소스 파일 명
LOCAL_SRC_FILES := player.c interface.c
LOCAL_LDLIBS := -llog -ljnigraphics -lz -landroid
LOCAL_SHARED_LIBRARIES := libavformat libavcodec libswscale libavutil
 
include $(BUILD_SHARED_LIBRARY)
$(call import-add-path, $(LOCAL_PATH))
$(call import-module,./library)
