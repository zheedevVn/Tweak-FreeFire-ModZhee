ARCHS = arm64
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
THEOS_PACKAGE_SCHEME = rootless
TARGET = iphone:clang:latest:14.0
THEOS ?= /var/jb/var/mobile/theos

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ZheeModMenu

$(TWEAK_NAME)_CCFLAGS = -std=c++17 -fno-rtti -O3 -DNDEBUG -Wall -Wno-error -Wno-deprecated-declarations -Wno-deprecated -Wno-unused-variable -Wno-unused-function -Wno-unused-value -fvisibility=hidden
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -O3 -Wall -Wno-error -Wno-deprecated-declarations -Wno-deprecated -Wno-unused-variable -Wno-unused-function -Wno-unused-value -fvisibility=hidden

$(TWEAK_NAME)_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText AVFoundation Accelerate GLKit SystemConfiguration GameController

$(TWEAK_NAME)_LDFLAGS += Other/libdobby_fixed.a

$(TWEAK_NAME)_FILES = ImGuiDrawView.mm \
                      oxorany/oxorany.cpp \
                      $(wildcard Esp/*.mm) \
                      $(wildcard Esp/*.m) \
                      $(wildcard IMGUI/*.cpp) \
                      $(wildcard IMGUI/*.mm) \
                      $(wildcard Hosts/*.m)

include $(THEOS_MAKE_PATH)/tweak.mk