#
# author: yurenjimi 
# email: yurenjimi AT 163 DOT com
#
# - I like QtCreator more than VS**.. ;0)
# just support cocos2d-x 2.0.4, you can port if you want other cocos2d-x version
#


TEMPLATE = lib
TARGET = cocos2dx-qt

CONFIG -= qt

QMAKE_CFLAGS += -std=c99


# now, just support Windows
win32 {
	CONFIG += console
	CONFIG -= app_bundle

    CONFIG(debug,release|debug) {
        DEFINES += _DEBUG
        TARGET = $$join(TARGET,,,_d)
    }

    DESTDIR = lib
    DLLDESTDIR = bin
    QMAKE_POST_LINK = copy.bat


    DEFINES += WIN32
    DEFINES += _WINDOWS
    DEFINES += _USRDLL
    DEFINES += COCOS2DXWIN32_EXPORTS
    DEFINES += GL_GLEXT_PROTOTYPES
    DEFINES += COCOS2D_DEBUG=1
    DEFINES += _CRT_SECURE_NO_WARNINGS
    DEFINES += _SCL_SECURE_NO_WARNINGS

    QMAKE_LFLAGS_DEBUG   = /DEBUG /NODEFAULTLIB:libc.lib /NODEFAULTLIB:libcmt.lib \
        /NODEFAULTLIB:msvcrt.lib /NODEFAULTLIB:libcd.lib /NODEFAULTLIB:libcmtd.lib
    QMAKE_LFLAGS_RELEASE = /RELEASE /NODEFAULTLIB:libcmt.lib
    INCLUDEPATH += \
        $$PWD \
        $$PWD/../ \
        $$PWD/../include \
        $$PWD/../support \
        $$PWD/../platform \
        $$PWD/../platform/win32 \
        $$PWD/../platform/third_party/win32/iconv \
        $$PWD/../platform/third_party/win32/libjpeg \
        $$PWD/../platform/third_party/win32/libpng \
        $$PWD/../platform/third_party/win32/libtiff \
        $$PWD/../platform/third_party/win32/libxml2 \
        $$PWD/../platform/third_party/win32/OGLES \
        $$PWD/../platform/third_party/win32/pthread \
        $$PWD/../platform/third_party/win32/zlib \
        $$PWD/../kazmath/include
} else {
    ## other platform here
}



LIBS += -lopengl32  -L"../platform/third_party/win32/libraries" \
    -lglew32 -llibxml2 -llibzlib -llibpng -llibjpeg -llibtiff \
    -llibiconv -lpthreadVCE2 \
    -lgdi32 -lkernel32 -luser32 -lshell32 -ladvapi32


HEADERS += \
    $$PWD/../CCScheduler.h \
    $$PWD/../CCDrawingPrimitives.h \
    $$PWD/../CCDirector.h \
    $$PWD/../CCConfiguration.h \
    $$PWD/../CCCamera.h \
    $$PWD/../actions/CCActionTween.h \
    $$PWD/../actions/CCActionTiledGrid.h \
    $$PWD/../actions/CCActionProgressTimer.h \
    $$PWD/../actions/CCActionPageTurn3D.h \
    $$PWD/../actions/CCActionManager.h \
    $$PWD/../actions/CCActionInterval.h \
    $$PWD/../actions/CCActionInstant.h \
    $$PWD/../actions/CCActionGrid3D.h \
    $$PWD/../actions/CCActionGrid.h \
    $$PWD/../actions/CCActionEase.h \
    $$PWD/../actions/CCActionCatmullRom.h \
    $$PWD/../actions/CCActionCamera.h \
    $$PWD/../actions/CCAction.h \
    $$PWD/../base_nodes/CCNode.h \
    $$PWD/../base_nodes/CCAtlasNode.h \
    $$PWD/../cocoa/CCZone.h \
    $$PWD/../cocoa/CCString.h \
    $$PWD/../cocoa/CCSet.h \
    $$PWD/../cocoa/CCObject.h \
    $$PWD/../cocoa/CCNS.h \
    $$PWD/../cocoa/CCInteger.h \
    $$PWD/../cocoa/CCGeometry.h \
    $$PWD/../cocoa/CCDictionary.h \
    $$PWD/../cocoa/CCAutoreleasePool.h \
    $$PWD/../cocoa/CCArray.h \
    $$PWD/../cocoa/CCAffineTransform.h \
    $$PWD/../effects/CCGrid.h \
    $$PWD/../effects/CCGrabber.h \
    $$PWD/../include/cocos2d.h \
    $$PWD/../include/ccTypes.h \
    $$PWD/../include/ccTypeInfo.h \
    $$PWD/../include/CCProtocols.h \
    $$PWD/../include/ccMacros.h \
    $$PWD/../include/CCEventType.h \
    $$PWD/../include/ccConfig.h \
    $$PWD/../keypad_dispatcher/CCKeypadDispatcher.h \
    $$PWD/../keypad_dispatcher/CCKeypadDelegate.h \
    $$PWD/../keypad_dispatcher/CCKeypadDispatcher.h \
    $$PWD/../keypad_dispatcher/CCKeypadDelegate.h \
    $$PWD/../label_nodes/CCLabelTTF.h \
    $$PWD/../label_nodes/CCLabelBMFont.h \
    $$PWD/../label_nodes/CCLabelAtlas.h \
    $$PWD/../label_nodes/CCLabelTTF.h \
    $$PWD/../label_nodes/CCLabelBMFont.h \
    $$PWD/../label_nodes/CCLabelAtlas.h \
    $$PWD/../layers_scenes_transitions_nodes/CCTransitionProgress.h \
    $$PWD/../layers_scenes_transitions_nodes/CCTransitionPageTurn.h \
    $$PWD/../layers_scenes_transitions_nodes/CCTransition.h \
    $$PWD/../layers_scenes_transitions_nodes/CCScene.h \
    $$PWD/../layers_scenes_transitions_nodes/CCLayer.h \
    $$PWD/../menu_nodes/CCMenuItem.h \
    $$PWD/../menu_nodes/CCMenu.h \
    $$PWD/../misc_nodes/CCRenderTexture.h \
    $$PWD/../misc_nodes/CCProgressTimer.h \
    $$PWD/../misc_nodes/CCMotionStreak.h \
    $$PWD/../particle_nodes/CCParticleSystemQuad.h \
    $$PWD/../particle_nodes/CCParticleSystem.h \
    $$PWD/../particle_nodes/CCParticleExamples.h \
    $$PWD/../particle_nodes/CCParticleBatchNode.h \
    $$PWD/../platform/platform.h \
    $$PWD/../platform/CCThread.h \
    $$PWD/../platform/CCSAXParser.h \
    $$PWD/../platform/CCPlatformMacros.h \
    $$PWD/../platform/CCPlatformConfig.h \
    $$PWD/../platform/CCImageCommon_cpp.h \
    $$PWD/../platform/CCImage.h \
    $$PWD/../platform/CCFileUtilsCommon_cpp.h \
    $$PWD/../platform/CCFileUtils.h \
    $$PWD/../platform/CCEGLViewProtocol.h \
    $$PWD/../platform/CCCommon.h \
    $$PWD/../platform/CCApplicationProtocol.h \
    $$PWD/../platform/CCAccelerometerDelegate.h \
    $$PWD/../platform/win32/time_units.h \
    $$PWD/../platform/win32/stw_timer.h \
    $$PWD/../platform/win32/stw_system_timer.h \
    $$PWD/../platform/win32/safe_types.h \
    $$PWD/../platform/win32/safe_limits.h \
    $$PWD/../platform/win32/runtime_environment.h \
    $$PWD/../platform/win32/CCStdC.h \
    $$PWD/../platform/win32/CCPlatformDefine.h \
    $$PWD/../platform/win32/CCGL.h \
    $$PWD/../platform/win32/CCEGLView.h \
    $$PWD/../platform/win32/CCApplication.h \
    $$PWD/../platform/win32/CCAccelerometer.h \
    $$PWD/../script_support/CCScriptSupport.h \
    $$PWD/../shaders/ccShaders.h \
    $$PWD/../shaders/ccShaderEx_SwitchMask_frag.h \
    $$PWD/../shaders/CCShaderCache.h \
    $$PWD/../shaders/ccShader_PositionTextureColorAlphaTest_frag.h \
    $$PWD/../shaders/ccShader_PositionTextureColor_vert.h \
    $$PWD/../shaders/ccShader_PositionTextureColor_frag.h \
    $$PWD/../shaders/ccShader_PositionTextureA8Color_vert.h \
    $$PWD/../shaders/ccShader_PositionTextureA8Color_frag.h \
    $$PWD/../shaders/ccShader_PositionTexture_vert.h \
    $$PWD/../shaders/ccShader_PositionTexture_uColor_vert.h \
    $$PWD/../shaders/ccShader_PositionTexture_uColor_frag.h \
    $$PWD/../shaders/ccShader_PositionTexture_frag.h \
    $$PWD/../shaders/ccShader_PositionColor_vert.h \
    $$PWD/../shaders/ccShader_PositionColor_frag.h \
    $$PWD/../shaders/ccShader_Position_uColor_vert.h \
    $$PWD/../shaders/ccShader_Position_uColor_frag.h \
    $$PWD/../shaders/ccGLStateCache.h \
    $$PWD/../shaders/CCGLProgram.h \
    $$PWD/../sprite_nodes/CCSpriteFrameCache.h \
    $$PWD/../sprite_nodes/CCSpriteFrame.h \
    $$PWD/../sprite_nodes/CCSpriteBatchNode.h \
    $$PWD/../sprite_nodes/CCSprite.h \
    $$PWD/../sprite_nodes/CCAnimationCache.h \
    $$PWD/../sprite_nodes/CCAnimation.h \
    $$PWD/../support/TransformUtils.h \
    $$PWD/../support/CCVertex.h \
    $$PWD/../support/ccUtils.h \
    $$PWD/../support/CCUserDefault.h \
    $$PWD/../support/CCProfiling.h \
    $$PWD/../support/CCPointExtension.h \
    $$PWD/../support/CCNotificationCenter.h \
    $$PWD/../support/base64.h \
    $$PWD/../support/data_support/utlist.h \
    $$PWD/../support/data_support/uthash.h \
    $$PWD/../support/data_support/ccCArray.h \
    $$PWD/../support/image_support/TGAlib.h \
    $$PWD/../support/zip_support/ZipUtils.h \
    $$PWD/../support/zip_support/unzip.h \
    $$PWD/../support/zip_support/ioapi.h \
    $$PWD/../text_input_node/CCTextFieldTTF.h \
    $$PWD/../text_input_node/CCIMEDispatcher.h \
    $$PWD/../text_input_node/CCIMEDelegate.h \
    $$PWD/../textures/CCTexturePVR.h \
    $$PWD/../textures/CCTextureCache.h \
    $$PWD/../textures/CCTextureAtlas.h \
    $$PWD/../textures/CCTexture2D.h \
    $$PWD/../tilemap_parallax_nodes/CCTMXXMLParser.h \
    $$PWD/../tilemap_parallax_nodes/CCTMXTiledMap.h \
    $$PWD/../tilemap_parallax_nodes/CCTMXObjectGroup.h \
    $$PWD/../tilemap_parallax_nodes/CCTMXLayer.h \
    $$PWD/../tilemap_parallax_nodes/CCTileMapAtlas.h \
    $$PWD/../tilemap_parallax_nodes/CCParallaxNode.h \
    $$PWD/../touch_dispatcher/CCTouchHandler.h \
    $$PWD/../touch_dispatcher/CCTouchDispatcher.h \
    $$PWD/../touch_dispatcher/CCTouchDelegateProtocol.h \
    $$PWD/../touch_dispatcher/CCTouch.h

SOURCES += \
    $$PWD/../cocos2d.cpp \
    $$PWD/../CCScheduler.cpp \
    $$PWD/../CCDrawingPrimitives.cpp \
    $$PWD/../CCDirector.cpp \
    $$PWD/../CCConfiguration.cpp \
    $$PWD/../CCCamera.cpp \
    $$PWD/../actions/CCActionTween.cpp \
    $$PWD/../actions/CCActionTiledGrid.cpp \
    $$PWD/../actions/CCActionProgressTimer.cpp \
    $$PWD/../actions/CCActionPageTurn3D.cpp \
    $$PWD/../actions/CCActionManager.cpp \
    $$PWD/../actions/CCActionInterval.cpp \
    $$PWD/../actions/CCActionInstant.cpp \
    $$PWD/../actions/CCActionGrid3D.cpp \
    $$PWD/../actions/CCActionGrid.cpp \
    $$PWD/../actions/CCActionEase.cpp \
    $$PWD/../actions/CCActionCatmullRom.cpp \
    $$PWD/../actions/CCActionCamera.cpp \
    $$PWD/../actions/CCAction.cpp \
    $$PWD/../base_nodes/CCNode.cpp \
    $$PWD/../base_nodes/CCAtlasNode.cpp \
    $$PWD/../cocoa/CCZone.cpp \
    $$PWD/../cocoa/CCString.cpp \
    $$PWD/../cocoa/CCSet.cpp \
    $$PWD/../cocoa/CCObject.cpp \
    $$PWD/../cocoa/CCNS.cpp \
    $$PWD/../cocoa/CCGeometry.cpp \
    $$PWD/../cocoa/CCDictionary.cpp \
    $$PWD/../cocoa/CCAutoreleasePool.cpp \
    $$PWD/../cocoa/CCArray.cpp \
    $$PWD/../cocoa/CCAffineTransform.cpp \
    $$PWD/../effects/CCGrid.cpp \
    $$PWD/../effects/CCGrabber.cpp \
    $$PWD/../kazmath/src/vec4.c \
    $$PWD/../kazmath/src/vec3.c \
    $$PWD/../kazmath/src/vec2.c \
    $$PWD/../kazmath/src/utility.c \
    $$PWD/../kazmath/src/ray2.c \
    $$PWD/../kazmath/src/quaternion.c \
    $$PWD/../kazmath/src/plane.c \
    $$PWD/../kazmath/src/neon_matrix_impl.c \
    $$PWD/../kazmath/src/mat4.c \
    $$PWD/../kazmath/src/mat3.c \
    $$PWD/../kazmath/src/aabb.c \
    $$PWD/../kazmath/src/GL/matrix.c \
    $$PWD/../kazmath/src/GL/mat4stack.c \
    $$PWD/../keypad_dispatcher/CCKeypadDispatcher.cpp \
    $$PWD/../keypad_dispatcher/CCKeypadDelegate.cpp \
    $$PWD/../keypad_dispatcher/CCKeypadDispatcher.cpp \
    $$PWD/../keypad_dispatcher/CCKeypadDelegate.cpp \
    $$PWD/../label_nodes/CCLabelTTF.cpp \
    $$PWD/../label_nodes/CCLabelBMFont.cpp \
    $$PWD/../label_nodes/CCLabelAtlas.cpp \
    $$PWD/../label_nodes/CCLabelTTF.cpp \
    $$PWD/../label_nodes/CCLabelBMFont.cpp \
    $$PWD/../label_nodes/CCLabelAtlas.cpp \
    $$PWD/../layers_scenes_transitions_nodes/CCTransitionProgress.cpp \
    $$PWD/../layers_scenes_transitions_nodes/CCTransitionPageTurn.cpp \
    $$PWD/../layers_scenes_transitions_nodes/CCTransition.cpp \
    $$PWD/../layers_scenes_transitions_nodes/CCScene.cpp \
    $$PWD/../layers_scenes_transitions_nodes/CCLayer.cpp \
    $$PWD/../menu_nodes/CCMenuItem.cpp \
    $$PWD/../menu_nodes/CCMenu.cpp \
    $$PWD/../misc_nodes/CCRenderTexture.cpp \
    $$PWD/../misc_nodes/CCProgressTimer.cpp \
    $$PWD/../misc_nodes/CCMotionStreak.cpp \
    $$PWD/../particle_nodes/CCParticleSystemQuad.cpp \
    $$PWD/../particle_nodes/CCParticleSystem.cpp \
    $$PWD/../particle_nodes/CCParticleExamples.cpp \
    $$PWD/../particle_nodes/CCParticleBatchNode.cpp \
    $$PWD/../platform/platform.cpp \
    $$PWD/../platform/CCThread.cpp \
    $$PWD/../platform/CCSAXParser.cpp \
    $$PWD/../platform/CCEGLViewProtocol.cpp \
    $$PWD/../platform/win32/stw_timer.c \
    $$PWD/../platform/win32/stw_system_timer.c \
    $$PWD/../platform/win32/runtime_environment.c \
    $$PWD/../platform/win32/CCStdC.cpp \
    $$PWD/../platform/win32/CCImage.cpp \
    $$PWD/../platform/win32/CCFileUtils.cpp \
    $$PWD/../platform/win32/CCEGLView.cpp \
    $$PWD/../platform/win32/CCCommon.cpp \
    $$PWD/../platform/win32/CCApplication.cpp \
    $$PWD/../platform/win32/CCAccelerometer.cpp \
    $$PWD/../script_support/CCScriptSupport.cpp \
    $$PWD/../shaders/ccShaders.cpp \
    $$PWD/../shaders/CCShaderCache.cpp \
    $$PWD/../shaders/ccGLStateCache.cpp \
    $$PWD/../shaders/CCGLProgram.cpp \
    $$PWD/../sprite_nodes/CCSpriteFrameCache.cpp \
    $$PWD/../sprite_nodes/CCSpriteFrame.cpp \
    $$PWD/../sprite_nodes/CCSpriteBatchNode.cpp \
    $$PWD/../sprite_nodes/CCSprite.cpp \
    $$PWD/../sprite_nodes/CCAnimationCache.cpp \
    $$PWD/../sprite_nodes/CCAnimation.cpp \
    $$PWD/../support/TransformUtils.cpp \
    $$PWD/../support/CCVertex.cpp \
    $$PWD/../support/ccUtils.cpp \
    $$PWD/../support/CCUserDefault.cpp \
    $$PWD/../support/CCProfiling.cpp \
    $$PWD/../support/CCPointExtension.cpp \
    $$PWD/../support/CCNotificationCenter.cpp \
    $$PWD/../support/base64.cpp \
    $$PWD/../support/data_support/ccCArray.cpp \
    $$PWD/../support/image_support/TGAlib.cpp \
    $$PWD/../support/zip_support/ZipUtils.cpp \
    $$PWD/../support/zip_support/unzip.cpp \
    $$PWD/../support/zip_support/ioapi.cpp \
    $$PWD/../text_input_node/CCTextFieldTTF.cpp \
    $$PWD/../text_input_node/CCIMEDispatcher.cpp \
    $$PWD/../textures/CCTexturePVR.cpp \
    $$PWD/../textures/CCTextureCache.cpp \
    $$PWD/../textures/CCTextureAtlas.cpp \
    $$PWD/../textures/CCTexture2D.cpp \
    $$PWD/../tilemap_parallax_nodes/CCTMXXMLParser.cpp \
    $$PWD/../tilemap_parallax_nodes/CCTMXTiledMap.cpp \
    $$PWD/../tilemap_parallax_nodes/CCTMXObjectGroup.cpp \
    $$PWD/../tilemap_parallax_nodes/CCTMXLayer.cpp \
    $$PWD/../tilemap_parallax_nodes/CCTileMapAtlas.cpp \
    $$PWD/../tilemap_parallax_nodes/CCParallaxNode.cpp \
    $$PWD/../touch_dispatcher/CCTouchHandler.cpp \
    $$PWD/../touch_dispatcher/CCTouchDispatcher.cpp \
    $$PWD/../touch_dispatcher/CCTouch.cpp

OTHER_FILES += \
    copy.bat

