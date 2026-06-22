
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_SOCKETAPP_VERSOIN = bbf0f865a9438a4b15ab0fb3449fde50917dbd47
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_SOCKETAPP_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-mitchell-baye.git
AESD_SOCKETAPP_SITE_METHOD = git
AESD_SOCKETAPP_GIT_SUBMODULES = YES
AESD_SOCKETAPP_MAKE_OPTS += USE_AESD_CHAR_DEVICE=1
define AESD_SOCKETAPP_BUILD_CMDS
	$(MAKE) CC=$(TARGET_CC) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_SOCKETAPP_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdSocket
endef

$(eval $(generic-package))
