.class public Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;
.super Ljava/lang/Object;
.source "SettingsStorageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigsToUpdate(Ljava/util/HashMap;Lbike/smarthalo/app/models/SHSettings;)Ljava/util/HashMap;
    .locals 3
    .param p0    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbike/smarthalo/app/models/SHSettings;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALARM_TAPCODE"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ALARM_TAPCODE"

    .line 20
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "ALARM_AUTO"

    .line 22
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAlarmArmed()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ALARM_AUTO"

    .line 23
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAlarmArmed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "ALARM_AGGRESSIVE"

    .line 25
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAlarmAggressive()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ALARM_AGGRESSIVE"

    .line 26
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAlarmAggressive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "ASSIST_SMS"

    .line 28
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingSMS()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ASSIST_SMS"

    .line 29
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingSMS()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "ASSIST_WHATSAPP"

    .line 31
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWhatsapp()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ASSIST_WHATSAPP"

    .line 32
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWhatsapp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v1, "ASSIST_GMAIL"

    .line 34
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGmail()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ASSIST_GMAIL"

    .line 35
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGmail()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "ASSIST_MESSENGER"

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingMessenger()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ASSIST_MESSENGER"

    .line 38
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingMessenger()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "ASSIST_HANGOUTS"

    .line 40
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingHangouts()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ASSIST_HANGOUTS"

    .line 41
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingHangouts()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v1, "ASSIST_WECHAT"

    .line 43
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWechat()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ASSIST_WECHAT"

    .line 44
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWechat()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v1, "ASSIST_CALLS"

    .line 46
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingCalls()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ASSIST_CALLS"

    .line 47
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingCalls()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v1, "ASSIST_GLOBAL"

    .line 49
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGlobal()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "ASSIST_GLOBAL"

    .line 50
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGlobal()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v1, "ASSIST_SOUNDS"

    .line 52
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWithSound()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "ASSIST_SOUNDS"

    .line 53
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWithSound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v1, "ASSIST_VOLUME"

    .line 55
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$assistantVolume()I

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateIntegerCloudConfig(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "ASSIST_VOLUME"

    .line 56
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$assistantVolume()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v1, "LIGHT_AUTO"

    .line 58
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightNightMode()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "LIGHT_AUTO"

    .line 59
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightNightMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-string v1, "LIGHT_BLINK"

    .line 61
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightBlinking()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "LIGHT_BLINK"

    .line 62
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightBlinking()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v1, "LIGHT_BRIGHTNESS"

    .line 64
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightBrightness()I

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateIntegerCloudConfig(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "LIGHT_BRIGHTNESS"

    .line 65
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightBrightness()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string v1, "FITNESS_AUTO"

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAutoTracking()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "FITNESS_AUTO"

    .line 68
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAutoTracking()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v1, "NAV_VOLUME"

    .line 70
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navigationVolume()I

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateIntegerCloudConfig(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "NAV_VOLUME"

    .line 71
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navigationVolume()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string v1, "NAV_SOUNDS"

    .line 73
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationSoundOn()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "NAV_SOUNDS"

    .line 74
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationSoundOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v1, "TOUCH_SOUNDS_ON"

    .line 76
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isTouchSoundEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "TOUCH_SOUNDS_ON"

    .line 77
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isTouchSoundEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const-string v1, "TOUCH_SOUNDS_VOLUME"

    .line 79
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$touchSoundVolume()I

    move-result v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateIntegerCloudConfig(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "TOUCH_SOUNDS_VOLUME"

    .line 80
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$touchSoundVolume()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v1, "TOUCH_HORN"

    .line 82
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "TOUCH_HORN"

    .line 83
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string v1, "TOUCH_NAV_HOME"

    .line 85
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "TOUCH_NAV_HOME"

    .line 86
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v1, "TOUCH_NAV_WORK"

    .line 88
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "TOUCH_NAV_WORK"

    .line 89
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v1, "TOUCH_NAV_STOP"

    .line 91
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "TOUCH_NAV_STOP"

    .line 92
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string v1, "TOUCH_NAV_MODE"

    .line 94
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "TOUCH_NAV_MODE"

    .line 95
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v1, "TOUCH_NAV_DESTINATION_PROGRESS"

    .line 97
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "TOUCH_NAV_DESTINATION_PROGRESS"

    .line 98
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v1, "TOUCH_CLOCK"

    .line 100
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "TOUCH_CLOCK"

    .line 101
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    const-string v1, "TOUCH_LIGHT_STATE"

    .line 103
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "TOUCH_LIGHT_STATE"

    .line 104
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const-string v1, "TOUCH_LIGHT_MODE"

    .line 106
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "TOUCH_LIGHT_MODE"

    .line 107
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string v1, "TOUCH_LIGHT_MODE_CYCLE"

    .line 109
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "TOUCH_LIGHT_MODE_CYCLE"

    .line 110
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1e
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationCompassMode()Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "COMPASS"

    goto :goto_0

    :cond_1f
    const-string p1, "TURN"

    :goto_0
    const-string v1, "NAV_MODE"

    .line 114
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 115
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "NAV_MODE"

    .line 116
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-object v0
.end method

.method public static initializeSettings(ILjava/util/HashMap;)Lbike/smarthalo/app/models/SHSettings;
    .locals 4
    .param p1    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbike/smarthalo/app/models/SHSettings;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 203
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 205
    :cond_0
    new-instance v0, Lbike/smarthalo/app/models/SHSettings;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHSettings;-><init>()V

    .line 206
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$id(Ljava/lang/Integer;)V

    const-string p0, "NAV_MODE"

    .line 209
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    const-string p0, "NAV_MODE"

    .line 210
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v3, "COMPASS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isNavigationCompassMode(Z)V

    const-string p0, "NAV_SOUNDS"

    .line 211
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "NAV_SOUNDS"

    .line 212
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isNavigationSoundOn(Z)V

    const-string p0, "NAV_VOLUME"

    .line 214
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/16 v3, 0x32

    if-eqz p0, :cond_3

    const-string p0, "NAV_VOLUME"

    .line 215
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_3
    const/16 p0, 0x32

    :goto_2
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navigationVolume(I)V

    const-string p0, "LIGHT_AUTO"

    .line 219
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "LIGHT_AUTO"

    .line 220
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_3

    :cond_4
    const/4 p0, 0x1

    :goto_3
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isLightNightMode(Z)V

    const-string p0, "LIGHT_BLINK"

    .line 222
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "LIGHT_BLINK"

    .line 223
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    :goto_4
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isLightBlinking(Z)V

    .line 225
    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isToggledLightOn(Z)V

    const-string p0, "LIGHT_BRIGHTNESS"

    .line 226
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "LIGHT_BRIGHTNESS"

    .line 227
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_5

    :cond_6
    const/16 p0, 0x32

    :goto_5
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$lightBrightness(I)V

    const-string p0, "ALARM_AUTO"

    .line 231
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "ALARM_AUTO"

    .line 232
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_6

    :cond_7
    const/4 p0, 0x0

    :goto_6
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAlarmArmed(Z)V

    const-string p0, "ALARM_AGGRESSIVE"

    .line 234
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "ALARM_AGGRESSIVE"

    .line 235
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_7

    :cond_8
    const/4 p0, 0x1

    :goto_7
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAlarmAggressive(Z)V

    const/4 p0, 0x5

    .line 237
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$alarmTimer(I)V

    const-string p0, "ALARM_TAPCODE"

    .line 238
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "ALARM_TAPCODE"

    .line 239
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_8

    :cond_9
    const-string p0, ""

    :goto_8
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$alarmCode(Ljava/lang/String;)V

    const-string p0, "FITNESS_AUTO"

    .line 243
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "FITNESS_AUTO"

    .line 244
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_9

    :cond_a
    const/4 p0, 0x1

    :goto_9
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAutoTracking(Z)V

    const-string p0, "ASSIST_GLOBAL"

    .line 248
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "ASSIST_GLOBAL"

    .line 249
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_a

    :cond_b
    const/4 p0, 0x1

    :goto_a
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingGlobal(Z)V

    const-string p0, "ASSIST_CALLS"

    .line 251
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "ASSIST_CALLS"

    .line 252
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_b

    :cond_c
    const/4 p0, 0x1

    :goto_b
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingCalls(Z)V

    const-string p0, "ASSIST_SOUNDS"

    .line 254
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "ASSIST_SOUNDS"

    .line 255
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_c

    :cond_d
    const/4 p0, 0x1

    :goto_c
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingWithSound(Z)V

    const-string p0, "ASSIST_VOLUME"

    .line 257
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "ASSIST_VOLUME"

    .line 258
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_e
    invoke-virtual {v0, v3}, Lbike/smarthalo/app/models/SHSettings;->realmSet$assistantVolume(I)V

    const-string p0, "ASSIST_SMS"

    .line 260
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "ASSIST_SMS"

    .line 261
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_d

    :cond_f
    const/4 p0, 0x1

    :goto_d
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingSMS(Z)V

    const-string p0, "ASSIST_GMAIL"

    .line 263
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "ASSIST_GMAIL"

    .line 264
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_e

    :cond_10
    const/4 p0, 0x0

    :goto_e
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingGmail(Z)V

    const-string p0, "ASSIST_HANGOUTS"

    .line 266
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "ASSIST_HANGOUTS"

    .line 267
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_f

    :cond_11
    const/4 p0, 0x0

    :goto_f
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingHangouts(Z)V

    const-string p0, "ASSIST_MESSENGER"

    .line 269
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "ASSIST_MESSENGER"

    .line 270
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_10

    :cond_12
    const/4 p0, 0x0

    :goto_10
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingMessenger(Z)V

    const-string p0, "ASSIST_WHATSAPP"

    .line 272
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "ASSIST_WHATSAPP"

    .line 273
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_11

    :cond_13
    const/4 p0, 0x0

    :goto_11
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingWhatsapp(Z)V

    const-string p0, "ASSIST_WECHAT"

    .line 275
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "ASSIST_WECHAT"

    .line 276
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_12

    :cond_14
    const/4 p0, 0x0

    :goto_12
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingWechat(Z)V

    const-string p0, "ASSIST_SLACK"

    .line 278
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "ASSIST_SLACK"

    .line 279
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_15
    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingSlack(Z)V

    const-string p0, "TOUCH_SOUNDS_ON"

    .line 283
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "TOUCH_SOUNDS_ON"

    .line 284
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_16
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isTouchSoundEnabled(Z)V

    const-string p0, "TOUCH_SOUNDS_VOLUME"

    .line 286
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "TOUCH_SOUNDS_VOLUME"

    .line 287
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_13

    :cond_17
    const/16 p0, 0x28

    :goto_13
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$touchSoundVolume(I)V

    const-string p0, "TOUCH_CLOCK"

    .line 289
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const-string p0, "TOUCH_CLOCK"

    .line 290
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_14

    :cond_18
    const-string p0, "L"

    :goto_14
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$clockTouchCode(Ljava/lang/String;)V

    const-string p0, "lightStateTouchCode"

    .line 292
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "TOUCH_LIGHT_STATE"

    .line 293
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_15

    :cond_19
    const-string p0, "SS"

    :goto_15
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$lightStateTouchCode(Ljava/lang/String;)V

    const-string p0, "TOUCH_LIGHT_MODE"

    .line 295
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "TOUCH_LIGHT_MODE"

    .line 296
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_16

    :cond_1a
    const-string p0, "LL"

    :goto_16
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$lightModeTouchCode(Ljava/lang/String;)V

    const-string p0, "TOUCH_LIGHT_MODE_CYCLE"

    .line 298
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "TOUCH_LIGHT_MODE_CYCLE"

    .line 299
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_17

    :cond_1b
    const-string p0, ""

    :goto_17
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$lightModeCycleTouchCode(Ljava/lang/String;)V

    const-string p0, "TOUCH_NAV_HOME"

    .line 301
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "TOUCH_NAV_HOME"

    .line 302
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_18

    :cond_1c
    const-string p0, "SSS"

    :goto_18
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navHomeTouchCode(Ljava/lang/String;)V

    const-string p0, "TOUCH_NAV_WORK"

    .line 304
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "TOUCH_NAV_WORK"

    .line 305
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_19

    :cond_1d
    const-string p0, "SSSS"

    :goto_19
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navWorkTouchCode(Ljava/lang/String;)V

    const-string p0, "TOUCH_NAV_STOP"

    .line 307
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p0, "TOUCH_NAV_STOP"

    .line 308
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1a

    :cond_1e
    const-string p0, "LLLL"

    :goto_1a
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navStopTouchCode(Ljava/lang/String;)V

    const-string p0, "TOUCH_NAV_MODE"

    .line 310
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "TOUCH_NAV_MODE"

    .line 311
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1b

    :cond_1f
    const-string p0, "LLL"

    :goto_1b
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navModeTouchCode(Ljava/lang/String;)V

    const-string p0, "TOUCH_HORN"

    .line 313
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "TOUCH_HORN"

    .line 314
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1c

    :cond_20
    const-string p0, ""

    :goto_1c
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$hornTouchCode(Ljava/lang/String;)V

    const-string p0, "TOUCH_NAV_DESTINATION_PROGRESS"

    .line 316
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "TOUCH_NAV_DESTINATION_PROGRESS"

    .line 317
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1d

    :cond_21
    const-string p0, ""

    :goto_1d
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHSettings;->realmSet$progressToDestinationTouchCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static setSetting(Lbike/smarthalo/app/models/SHSettings;Ljava/lang/String;I)V
    .locals 3
    .param p0    # Lbike/smarthalo/app/models/SHSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "isToggledLightOn"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    .line 124
    :cond_0
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isToggledLightOn(Z)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "isLightNightMode"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v2, :cond_2

    const/4 v1, 0x1

    .line 126
    :cond_2
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isLightNightMode(Z)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "isLightBlinking"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v2, :cond_4

    const/4 v1, 0x1

    .line 128
    :cond_4
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isLightBlinking(Z)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "lightBrightness"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 130
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$lightBrightness(I)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "isAssistingGlobal"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-ne p2, v2, :cond_7

    const/4 v1, 0x1

    .line 132
    :cond_7
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingGlobal(Z)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "isAssistingSMS"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-ne p2, v2, :cond_9

    const/4 v1, 0x1

    .line 134
    :cond_9
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingSMS(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "isAssistingGmail"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-ne p2, v2, :cond_b

    const/4 v1, 0x1

    .line 136
    :cond_b
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingGmail(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "isAssistingHangouts"

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-ne p2, v2, :cond_d

    const/4 v1, 0x1

    .line 138
    :cond_d
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingHangouts(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "isAssistingMessenger"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-ne p2, v2, :cond_f

    const/4 v1, 0x1

    .line 140
    :cond_f
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingMessenger(Z)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "isAssistingWhatsapp"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-ne p2, v2, :cond_11

    const/4 v1, 0x1

    .line 142
    :cond_11
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingWhatsapp(Z)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "isAssistingWechat"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-ne p2, v2, :cond_13

    const/4 v1, 0x1

    .line 144
    :cond_13
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingWechat(Z)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "isAssistingSlack"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-ne p2, v2, :cond_15

    const/4 v1, 0x1

    .line 146
    :cond_15
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingSlack(Z)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "isAssistingCalls"

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-ne p2, v2, :cond_17

    const/4 v1, 0x1

    .line 148
    :cond_17
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingCalls(Z)V

    goto/16 :goto_0

    :cond_18
    const-string v0, "isAssistingWithSound"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne p2, v2, :cond_19

    const/4 v1, 0x1

    .line 150
    :cond_19
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAssistingWithSound(Z)V

    goto/16 :goto_0

    :cond_1a
    const-string v0, "assistantVolume"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 152
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$assistantVolume(I)V

    goto/16 :goto_0

    :cond_1b
    const-string v0, "isAlarmArmed"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-ne p2, v2, :cond_1c

    const/4 v1, 0x1

    .line 154
    :cond_1c
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAlarmArmed(Z)V

    goto/16 :goto_0

    :cond_1d
    const-string v0, "isAlarmSet"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-ne p2, v2, :cond_1e

    const/4 v1, 0x1

    .line 156
    :cond_1e
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAlarmSet(Z)V

    goto/16 :goto_0

    :cond_1f
    const-string v0, "alarmTimer"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 158
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$alarmTimer(I)V

    goto :goto_0

    :cond_20
    const-string v0, "isNavigationCompassMode"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    if-ne p2, v2, :cond_21

    const/4 v1, 0x1

    .line 160
    :cond_21
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isNavigationCompassMode(Z)V

    goto :goto_0

    :cond_22
    const-string v0, "isNavigationSoundOn"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-ne p2, v2, :cond_23

    const/4 v1, 0x1

    .line 162
    :cond_23
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isNavigationSoundOn(Z)V

    goto :goto_0

    :cond_24
    const-string v0, "navigationVolume"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 164
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navigationVolume(I)V

    goto :goto_0

    :cond_25
    const-string v0, "isAutoTracking"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-ne p2, v2, :cond_26

    const/4 v1, 0x1

    .line 166
    :cond_26
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAutoTracking(Z)V

    goto :goto_0

    :cond_27
    const-string v0, "isAlarmAggressive"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-ne p2, v2, :cond_28

    const/4 v1, 0x1

    .line 168
    :cond_28
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isAlarmAggressive(Z)V

    goto :goto_0

    :cond_29
    const-string v0, "isTouchSoundEnabled"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-ne p2, v2, :cond_2a

    const/4 v1, 0x1

    .line 170
    :cond_2a
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHSettings;->realmSet$isTouchSoundEnabled(Z)V

    goto :goto_0

    :cond_2b
    const-string v0, "touchSoundVolume"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 172
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$touchSoundVolume(I)V

    :cond_2c
    :goto_0
    return-void
.end method

.method public static setSetting(Lbike/smarthalo/app/models/SHSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lbike/smarthalo/app/models/SHSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "clockTouchCode"

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$clockTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "hornTouchCode"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$hornTouchCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "lightModeTouchCode"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$lightModeTouchCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "lightModeCycleTouchCode"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$lightModeCycleTouchCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "lightStateTouchCode"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$lightStateTouchCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "navHomeTouchCode"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navHomeTouchCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "navWorkTouchCode"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navWorkTouchCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "navModeTouchCode"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navModeTouchCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "navStopTouchCode"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$navStopTouchCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v0, "progressToDestinationTouchCode"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 196
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$progressToDestinationTouchCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v0, "alarmCode"

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 198
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/SHSettings;->realmSet$alarmCode(Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

.method private static shouldUpdateBooleanCloudConfig(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 328
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 329
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private static shouldUpdateIntegerCloudConfig(Ljava/lang/String;I)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 333
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 334
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private static shouldUpdateStringCloudConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
