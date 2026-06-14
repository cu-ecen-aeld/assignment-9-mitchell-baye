##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 5dec86fa4f0af5fe5f87123c550265b73b2a605a
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-mitchell-baye.git
LDD_SITE_METHOD = git
LDD_MODULE_SUBDIRS = misc-modules scull
LDD_GIT_SUBMODULES = YES

$(eval $(kernel-module))
$(eval $(generic-package))
