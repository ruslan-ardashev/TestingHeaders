GO_EASY_ON_ME = 1
TARGET = iphone:latest:9.0
ARCHS = armv7 armv7s arm64
THEOS_BUILD_DIR = Packages

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TestingHeaders

TestingHeaders_FILES = Tweak.xm
TestingHeaders_FILES += $(wildcard PassKit/*.xm)

TestingHeaders_FRAMEWORKS = UIKit

TestingHeaders_CFLAGS = -fobjc-arc
TestingHeaders_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
