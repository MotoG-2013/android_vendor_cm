# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common_full.mk)

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

# Include CM LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/dictionaries

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Tethys.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg \
    ro.config.ringtone=CyanTone.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/cm/config/telephony.mk)
