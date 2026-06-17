##############################################################
#
# LDD
#
##############################################################

AESDCHAR_VERSION = f27db1e190315d43e285028b2b0ff9eae532627a
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = git@github.com:cu-ecen-aeld/assignment-3-and-later-mitchell-baye.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver
USE_AESD_CHAR_DEVICE ?= 1
CFLAGS += -DUSE_AESD_CHAR_DEVICE=$(USE_AESD_CHAR_DEVICE)

$(eval $(kernel-module))
$(eval $(generic-package))

