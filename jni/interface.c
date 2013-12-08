#include <jni.h>
#include <android/bitmap.h>
#include "player.h"

jint Java_com_software_maestro_MainActivity_initPlayer(JNIEnv *env, jobject thiz)
{
		av_register_all();
}
