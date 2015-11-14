set(CINDER_INCLUDE_DIRS)

if( CINDER_LINUX_EGL_RPI2 )
    list(APPEND CINDER_INCLUDE_DIRS 
		/opt/vc/include
		/opt/vc/include/interface/vcos/pthreads
		/opt/vc/include/interface/vmcs_host/linux
		${CINDER_INC_DIR} 
		${CINDER_INC_DIR}/freetype
		${CINDER_INC_DIR}/jsoncpp 
		${CINDER_INC_DIR}/oggvorbis
		${CINDER_SRC_DIR}/linebreak 
		${CINDER_SRC_DIR}/libtess2 
		${CINDER_SRC_DIR}/AntTweakBar
		${CINDER_SRC_DIR}/oggvorbis/vorbis
		${CINDER_SRC_DIR}/r8brain
		${BOOST_INC_DIR}  
	)
else()
    list(APPEND CINDER_INCLUDE_DIRS
		${CINDER_INC_DIR} 
		${CINDER_INC_DIR}/freetype
		${CINDER_INC_DIR}/glfw
		${CINDER_INC_DIR}/jsoncpp 
		${CINDER_INC_DIR}/oggvorbis
		${CINDER_SRC_DIR}/linebreak 
		${CINDER_SRC_DIR}/libtess2 
		${CINDER_SRC_DIR}/AntTweakBar
		${CINDER_SRC_DIR}/oggvorbis/vorbis
		${CINDER_SRC_DIR}/r8brain
		${BOOST_INC_DIR}  
	)
endif()

# GStreamer include paths.
list(APPEND CINDER_INCLUDE_DIRS 
		${CINDER_LIB_DIR}/gstreamer/gstreamer-1.0/include # gstconfig.h lives there since 1.5.1 .
		${CINDER_INC_DIR}/gstreamer/gstreamer-1.0		
)
