##############################################################
#
# LDD
#
##############################################################

AESDCHAR_VERSION = fc6d5d51899978b3bd3dbd380bb2b1fca718150e
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-mitchell-baye.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver
USE_AESD_CHAR_DEVICE ?= 1
CFLAGS += -DUSE_AESD_CHAR_DEVICE=$(USE_AESD_CHAR_DEVICE)

$(eval $(kernel-module))
$(eval $(generic-package))

