TEMPLATE = app

CONFIG += console c++17
CONFIG -= app_bundle qt debug_and_release debug_and_release_target

DEFINES += CL_TARGET_OPENCL_VERSION=100

SOURCES += \
    main.cpp

HEADERS += \
    CL/cl.h \
    CL/cl_ext.h \
    CL/cl_gl.h \
    CL/cl_gl_ext.h \
    CL/cl_platform.h \
    CL/cl_version.h \
    CL/opencl.h

INCLUDEPATH += \
    CL/

LIBS += \
    -L$$PWD/CL/ -lOpenCL

win32:bins.files += $$PWD/CL/OpenCL.dll
else:bins.files += $$PWD/CL/OpenCL.so

bins.path += $$OUT_PWD
INSTALLS += bins
INSTALLS.CONFIG += no_check_exist
