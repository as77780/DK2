################################################################################
#
# qt-sensor-demo
#
################################################################################

QT_SENSOR_DEMO_SITE = /home/as/Qt/qt-sensor-demo
QT_SENSOR_DEMO_SITE_METHOD = local

QT_SENSOR_DEMO_DEPENDENCIES = qt5base  qt5charts 

define QT_SENSOR_DEMO_CONFIGURE_CMDS
	(cd $(@D); $(QT5_QMAKE))
endef

define QT_SENSOR_DEMO_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define QT_SENSOR_DEMO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/qt-sensor-demo $(TARGET_DIR)/usr/bin/qt-sensor-demo

endef
define QT_SENSOR_DEMO_INSTALL_INIT_SYSV
        $(INSTALL) -D -m 755 package/qt-sensor-demo/S99qt-sensor-demo \
                $(TARGET_DIR)/etc/init.d/S99qt-sensor-demo
endef

$(eval $(generic-package))
