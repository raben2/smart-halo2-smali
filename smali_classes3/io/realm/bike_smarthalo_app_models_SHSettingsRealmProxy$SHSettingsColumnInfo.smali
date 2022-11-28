.class final Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "bike_smarthalo_app_models_SHSettingsRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHSettingsColumnInfo"
.end annotation


# instance fields
.field alarmCodeIndex:J

.field alarmTimerIndex:J

.field assistantVolumeIndex:J

.field clockTouchCodeIndex:J

.field deviceIdIndex:J

.field hornTouchCodeIndex:J

.field idIndex:J

.field isAlarmAggressiveIndex:J

.field isAlarmArmedIndex:J

.field isAlarmSetIndex:J

.field isAssistingCallsIndex:J

.field isAssistingGlobalIndex:J

.field isAssistingGmailIndex:J

.field isAssistingHangoutsIndex:J

.field isAssistingMessengerIndex:J

.field isAssistingSMSIndex:J

.field isAssistingSlackIndex:J

.field isAssistingWechatIndex:J

.field isAssistingWhatsappIndex:J

.field isAssistingWithSoundIndex:J

.field isAutoTrackingIndex:J

.field isLightBlinkingIndex:J

.field isLightNightModeIndex:J

.field isNavigationCompassModeIndex:J

.field isNavigationSoundOnIndex:J

.field isToggledLightOnIndex:J

.field isTouchSoundEnabledIndex:J

.field lightBrightnessIndex:J

.field lightModeCycleTouchCodeIndex:J

.field lightModeTouchCodeIndex:J

.field lightStateTouchCodeIndex:J

.field maxColumnIndexValue:J

.field navHomeTouchCodeIndex:J

.field navModeTouchCodeIndex:J

.field navStopTouchCodeIndex:J

.field navWorkTouchCodeIndex:J

.field navigationVolumeIndex:J

.field progressToDestinationTouchCodeIndex:J

.field touchSoundVolumeIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 127
    invoke-virtual {p0, p1, p0}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x26

    .line 82
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "SHSettings"

    .line 83
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    const-string v1, "id"

    .line 84
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    const-string v0, "deviceId"

    const-string v1, "deviceId"

    .line 85
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    const-string v0, "isToggledLightOn"

    const-string v1, "isToggledLightOn"

    .line 86
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    const-string v0, "isLightNightMode"

    const-string v1, "isLightNightMode"

    .line 87
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    const-string v0, "isLightBlinking"

    const-string v1, "isLightBlinking"

    .line 88
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    const-string v0, "lightBrightness"

    const-string v1, "lightBrightness"

    .line 89
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    const-string v0, "isAlarmArmed"

    const-string v1, "isAlarmArmed"

    .line 90
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    const-string v0, "isAlarmAggressive"

    const-string v1, "isAlarmAggressive"

    .line 91
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    const-string v0, "isAlarmSet"

    const-string v1, "isAlarmSet"

    .line 92
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    const-string v0, "alarmTimer"

    const-string v1, "alarmTimer"

    .line 93
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    const-string v0, "alarmCode"

    const-string v1, "alarmCode"

    .line 94
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    const-string v0, "isNavigationCompassMode"

    const-string v1, "isNavigationCompassMode"

    .line 95
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    const-string v0, "isNavigationSoundOn"

    const-string v1, "isNavigationSoundOn"

    .line 96
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    const-string v0, "navigationVolume"

    const-string v1, "navigationVolume"

    .line 97
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    const-string v0, "isAutoTracking"

    const-string v1, "isAutoTracking"

    .line 98
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    const-string v0, "isTouchSoundEnabled"

    const-string v1, "isTouchSoundEnabled"

    .line 99
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    const-string v0, "touchSoundVolume"

    const-string v1, "touchSoundVolume"

    .line 100
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    const-string v0, "lightStateTouchCode"

    const-string v1, "lightStateTouchCode"

    .line 101
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    const-string v0, "lightModeTouchCode"

    const-string v1, "lightModeTouchCode"

    .line 102
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    const-string v0, "lightModeCycleTouchCode"

    const-string v1, "lightModeCycleTouchCode"

    .line 103
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    const-string v0, "hornTouchCode"

    const-string v1, "hornTouchCode"

    .line 104
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    const-string v0, "clockTouchCode"

    const-string v1, "clockTouchCode"

    .line 105
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    const-string v0, "navHomeTouchCode"

    const-string v1, "navHomeTouchCode"

    .line 106
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    const-string v0, "navWorkTouchCode"

    const-string v1, "navWorkTouchCode"

    .line 107
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    const-string v0, "navStopTouchCode"

    const-string v1, "navStopTouchCode"

    .line 108
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    const-string v0, "navModeTouchCode"

    const-string v1, "navModeTouchCode"

    .line 109
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    const-string v0, "progressToDestinationTouchCode"

    const-string v1, "progressToDestinationTouchCode"

    .line 110
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    const-string v0, "isAssistingGlobal"

    const-string v1, "isAssistingGlobal"

    .line 111
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    const-string v0, "isAssistingCalls"

    const-string v1, "isAssistingCalls"

    .line 112
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    const-string v0, "isAssistingWithSound"

    const-string v1, "isAssistingWithSound"

    .line 113
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    const-string v0, "assistantVolume"

    const-string v1, "assistantVolume"

    .line 114
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    const-string v0, "isAssistingSMS"

    const-string v1, "isAssistingSMS"

    .line 115
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    const-string v0, "isAssistingMessenger"

    const-string v1, "isAssistingMessenger"

    .line 116
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    const-string v0, "isAssistingWhatsapp"

    const-string v1, "isAssistingWhatsapp"

    .line 117
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    const-string v0, "isAssistingGmail"

    const-string v1, "isAssistingGmail"

    .line 118
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    const-string v0, "isAssistingHangouts"

    const-string v1, "isAssistingHangouts"

    .line 119
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    const-string v0, "isAssistingWechat"

    const-string v1, "isAssistingWechat"

    .line 120
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    const-string v0, "isAssistingSlack"

    const-string v1, "isAssistingSlack"

    .line 121
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    .line 122
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->getMaxColumnIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->maxColumnIndexValue:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 132
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 137
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    .line 138
    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;

    .line 139
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->idIndex:J

    .line 140
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->deviceIdIndex:J

    .line 141
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isToggledLightOnIndex:J

    .line 142
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightNightModeIndex:J

    .line 143
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isLightBlinkingIndex:J

    .line 144
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightBrightnessIndex:J

    .line 145
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmArmedIndex:J

    .line 146
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmAggressiveIndex:J

    .line 147
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAlarmSetIndex:J

    .line 148
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmTimerIndex:J

    .line 149
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->alarmCodeIndex:J

    .line 150
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationCompassModeIndex:J

    .line 151
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isNavigationSoundOnIndex:J

    .line 152
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navigationVolumeIndex:J

    .line 153
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAutoTrackingIndex:J

    .line 154
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isTouchSoundEnabledIndex:J

    .line 155
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->touchSoundVolumeIndex:J

    .line 156
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightStateTouchCodeIndex:J

    .line 157
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeTouchCodeIndex:J

    .line 158
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->lightModeCycleTouchCodeIndex:J

    .line 159
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->hornTouchCodeIndex:J

    .line 160
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->clockTouchCodeIndex:J

    .line 161
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navHomeTouchCodeIndex:J

    .line 162
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navWorkTouchCodeIndex:J

    .line 163
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navStopTouchCodeIndex:J

    .line 164
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->navModeTouchCodeIndex:J

    .line 165
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->progressToDestinationTouchCodeIndex:J

    .line 166
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGlobalIndex:J

    .line 167
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingCallsIndex:J

    .line 168
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWithSoundIndex:J

    .line 169
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->assistantVolumeIndex:J

    .line 170
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSMSIndex:J

    .line 171
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingMessengerIndex:J

    .line 172
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWhatsappIndex:J

    .line 173
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingGmailIndex:J

    .line 174
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingHangoutsIndex:J

    .line 175
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingWechatIndex:J

    .line 176
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->isAssistingSlackIndex:J

    .line 177
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->maxColumnIndexValue:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHSettingsRealmProxy$SHSettingsColumnInfo;->maxColumnIndexValue:J

    return-void
.end method
