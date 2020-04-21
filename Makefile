#
# Copyright (C) 2020 AnYun <2789289348@qq.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=jmusupplicant
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/ShanQincheng/jmuSupplicant.git
PKG_REV:=9ddc31252146b481dc6bca116625be13d7f5bc7f

PKG_SOURCE_VERSION:=$(PKG_REV)
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_SOURCE_SUBDIR).tar.gz
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_SOURCE_SUBDIR)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/jmusupplicant
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Ruijie Client Daemon
  URL:=https://github.com/ShanQincheng/jmuSupplicant
  DEPENDS:=+libpcap
endef

define Package/jmusupplicant/description
  Client for Ruijie Authentication in JMU campus.
endef

define Package/jmusupplicant/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bin/jmusupplicant $(1)/usr/bin
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
