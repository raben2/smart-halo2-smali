.class public Lbike/smarthalo/app/managers/storageManagers/SettingsStorageManager;
.super Ljava/lang/Object;
.source "SettingsStorageManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;


# static fields
.field public static final ALARM_AGGRESSIVE:Ljava/lang/String; = "isAlarmAggressive"

.field public static final ALARM_ARMED:Ljava/lang/String; = "isAlarmArmed"

.field public static final ALARM_CODE:Ljava/lang/String; = "alarmCode"

.field public static final ALARM_SET:Ljava/lang/String; = "isAlarmSet"

.field public static final ALARM_TAPCODE_KEY:Ljava/lang/String; = "ALARM_TAPCODE"

.field public static final ALARM_TIMER:Ljava/lang/String; = "alarmTimer"

.field public static final ASSISTANT_CALLS:Ljava/lang/String; = "isAssistingCalls"

.field public static final ASSISTANT_GLOBAL:Ljava/lang/String; = "isAssistingGlobal"

.field public static final ASSISTANT_GMAIL:Ljava/lang/String; = "isAssistingGmail"

.field public static final ASSISTANT_HANGOUTS:Ljava/lang/String; = "isAssistingHangouts"

.field public static final ASSISTANT_MESSENGER:Ljava/lang/String; = "isAssistingMessenger"

.field public static final ASSISTANT_SLACK:Ljava/lang/String; = "isAssistingSlack"

.field public static final ASSISTANT_SMS:Ljava/lang/String; = "isAssistingSMS"

.field public static final ASSISTANT_SOUNDS:Ljava/lang/String; = "isAssistingWithSound"

.field public static final ASSISTANT_VOLUME:Ljava/lang/String; = "assistantVolume"

.field public static final ASSISTANT_WECHAT:Ljava/lang/String; = "isAssistingWechat"

.field public static final ASSISTANT_WHATSAPP:Ljava/lang/String; = "isAssistingWhatsapp"

.field public static final ASSIST_VOLUME_KEY:Ljava/lang/String; = "ASSIST_VOLUME"

.field public static final DEFAULT_CLOCK_TOUCH_CODE:Ljava/lang/String; = "L"

.field public static final DEFAULT_IS_TOUCH_SOUND_ENABLED_VALUE:Z = true

.field public static final DEFAULT_LIGHT_MODE_TOUCH_CODE:Ljava/lang/String; = "LL"

.field public static final DEFAULT_LIGHT_TOUCH_CODE:Ljava/lang/String; = "SS"

.field public static final DEFAULT_TOUCH_NAV_HOME_CODE:Ljava/lang/String; = "SSS"

.field public static final DEFAULT_TOUCH_NAV_MODE_CODE:Ljava/lang/String; = "LLL"

.field public static final DEFAULT_TOUCH_NAV_STOP_CODE:Ljava/lang/String; = "LLLL"

.field public static final DEFAULT_TOUCH_NAV_WORK_CODE:Ljava/lang/String; = "SSSS"

.field public static final DEFAULT_TOUCH_SOUNDS_VOLUME:I = 0x28

.field public static final FOUR_LONG:Ljava/lang/String; = "LLLL"

.field public static final FOUR_SHORT:Ljava/lang/String; = "SSSS"

.field public static final IS_ALARM_AGGRESSIVE_KEY:Ljava/lang/String; = "ALARM_AGGRESSIVE"

.field public static final IS_ALARM_ON_KEY:Ljava/lang/String; = "ALARM_AUTO"

.field public static final IS_ASSISTANT_SOUND_ON_KEY:Ljava/lang/String; = "ASSIST_SOUNDS"

.field public static final IS_ASSISTING_CALLS_KEY:Ljava/lang/String; = "ASSIST_CALLS"

.field public static final IS_ASSISTING_GLOBAL_KEY:Ljava/lang/String; = "ASSIST_GLOBAL"

.field public static final IS_ASSISTING_GMAIL_KEY:Ljava/lang/String; = "ASSIST_GMAIL"

.field public static final IS_ASSISTING_HANGOUTS_KEY:Ljava/lang/String; = "ASSIST_HANGOUTS"

.field public static final IS_ASSISTING_MESSENGER_KEY:Ljava/lang/String; = "ASSIST_MESSENGER"

.field public static final IS_ASSISTING_SLACK_KEY:Ljava/lang/String; = "ASSIST_SLACK"

.field public static final IS_ASSISTING_SMS_KEY:Ljava/lang/String; = "ASSIST_SMS"

.field public static final IS_ASSISTING_WECHAT_KEY:Ljava/lang/String; = "ASSIST_WECHAT"

.field public static final IS_ASSISTING_WHATSAPP_KEY:Ljava/lang/String; = "ASSIST_WHATSAPP"

.field public static final IS_FITNESS_AUTO:Ljava/lang/String; = "FITNESS_AUTO"

.field public static final IS_LIGHT_AUTO_KEY:Ljava/lang/String; = "LIGHT_AUTO"

.field public static final IS_LIGHT_BLINKING_KEY:Ljava/lang/String; = "LIGHT_BLINK"

.field public static final IS_NAV_SOUND_ON:Ljava/lang/String; = "NAV_SOUNDS"

.field public static final LIGHT_AUTOMATIC:Ljava/lang/String; = "isLightNightMode"

.field public static final LIGHT_BLINKING:Ljava/lang/String; = "isLightBlinking"

.field public static final LIGHT_BRIGHTNESS:Ljava/lang/String; = "lightBrightness"

.field public static final LIGHT_BRIGHTNESS_KEY:Ljava/lang/String; = "LIGHT_BRIGHTNESS"

.field public static final LIGHT_ON:Ljava/lang/String; = "isToggledLightOn"

.field public static final NAVIGATION_MODE:Ljava/lang/String; = "isNavigationCompassMode"

.field public static final NAVIGATION_SOUNDS:Ljava/lang/String; = "isNavigationSoundOn"

.field public static final NAVIGATION_VOLUME:Ljava/lang/String; = "navigationVolume"

.field public static final NAV_MODE_COMPASS:Ljava/lang/String; = "COMPASS"

.field public static final NAV_MODE_KEY:Ljava/lang/String; = "NAV_MODE"

.field public static final NAV_MODE_TURN:Ljava/lang/String; = "TURN"

.field public static final NAV_VOLUME_KEY:Ljava/lang/String; = "NAV_VOLUME"

.field public static final ONE_LONG:Ljava/lang/String; = "L"

.field public static final ONE_SHORT:Ljava/lang/String; = "S"

.field public static final THREE_LONG:Ljava/lang/String; = "LLL"

.field public static final THREE_SHORT:Ljava/lang/String; = "SSS"

.field public static final TOUCH_CLOCK_CODE:Ljava/lang/String; = "clockTouchCode"

.field public static final TOUCH_CLOCK_CODE_KEY:Ljava/lang/String; = "TOUCH_CLOCK"

.field public static final TOUCH_HORN_CODE:Ljava/lang/String; = "hornTouchCode"

.field public static final TOUCH_HORN_CODE_KEY:Ljava/lang/String; = "TOUCH_HORN"

.field public static final TOUCH_LIGHT_MODE_CODE:Ljava/lang/String; = "lightModeTouchCode"

.field public static final TOUCH_LIGHT_MODE_CODE_KEY:Ljava/lang/String; = "TOUCH_LIGHT_MODE"

.field public static final TOUCH_LIGHT_MODE_CYCLE_CODE:Ljava/lang/String; = "lightModeCycleTouchCode"

.field public static final TOUCH_LIGHT_MODE_CYCLE_CODE_KEY:Ljava/lang/String; = "TOUCH_LIGHT_MODE_CYCLE"

.field public static final TOUCH_LIGHT_STATE_CODE:Ljava/lang/String; = "lightStateTouchCode"

.field public static final TOUCH_LIGHT_STATE_CODE_KEY:Ljava/lang/String; = "TOUCH_LIGHT_STATE"

.field public static final TOUCH_NAV_DESTINATION_PROGRESS_CODE:Ljava/lang/String; = "progressToDestinationTouchCode"

.field public static final TOUCH_NAV_DESTINATION_PROGRESS_CODE_KEY:Ljava/lang/String; = "TOUCH_NAV_DESTINATION_PROGRESS"

.field public static final TOUCH_NAV_HOME_CODE:Ljava/lang/String; = "navHomeTouchCode"

.field public static final TOUCH_NAV_HOME_CODE_KEY:Ljava/lang/String; = "TOUCH_NAV_HOME"

.field public static final TOUCH_NAV_MODE_CODE:Ljava/lang/String; = "navModeTouchCode"

.field public static final TOUCH_NAV_MODE_CODE_KEY:Ljava/lang/String; = "TOUCH_NAV_MODE"

.field public static final TOUCH_NAV_STOP_CODE:Ljava/lang/String; = "navStopTouchCode"

.field public static final TOUCH_NAV_STOP_CODE_KEY:Ljava/lang/String; = "TOUCH_NAV_STOP"

.field public static final TOUCH_NAV_WORK_CODE:Ljava/lang/String; = "navWorkTouchCode"

.field public static final TOUCH_NAV_WORK_CODE_KEY:Ljava/lang/String; = "TOUCH_NAV_WORK"

.field public static final TOUCH_SOUND_ENABLED:Ljava/lang/String; = "isTouchSoundEnabled"

.field public static final TOUCH_SOUND_ENABLE_CODE_KEY:Ljava/lang/String; = "TOUCH_SOUNDS_ON"

.field public static final TOUCH_SOUND_VOLUME:Ljava/lang/String; = "touchSoundVolume"

.field public static final TOUCH_SOUND_VOLUME_CODE_KEY:Ljava/lang/String; = "TOUCH_SOUNDS_VOLUME"

.field public static final TRACKING_AUTO:Ljava/lang/String; = "isAutoTracking"

.field public static final TWO_LONG:Ljava/lang/String; = "LL"

.field public static final TWO_SHORT:Ljava/lang/String; = "SS"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
    .locals 1

    .line 123
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageManager;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageManager;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$initSettings$0(Ljava/util/HashMap;Lio/realm/Realm;)V
    .locals 4

    .line 132
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "current"

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 136
    :goto_0
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHSettings;

    if-eqz v1, :cond_1

    return-void

    .line 141
    :cond_1
    invoke-static {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->initializeSettings(ILjava/util/HashMap;)Lbike/smarthalo/app/models/SHSettings;

    move-result-object p0

    .line 142
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 143
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 144
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateUserSettings$1(Ljava/lang/String;ILio/realm/Realm;)V
    .locals 3

    .line 168
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p2, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "current"

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p2, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHSettings;

    if-nez v0, :cond_1

    return-void

    .line 178
    :cond_1
    invoke-virtual {p2}, Lio/realm/Realm;->beginTransaction()V

    .line 179
    invoke-static {v0, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->setSetting(Lbike/smarthalo/app/models/SHSettings;Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 180
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p2, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 181
    invoke-virtual {p2}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateUserSettings$2(Ljava/lang/String;Ljava/lang/String;Lio/realm/Realm;)V
    .locals 3

    .line 187
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p2, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "current"

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p2, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHSettings;

    if-nez v0, :cond_1

    return-void

    .line 197
    :cond_1
    invoke-virtual {p2}, Lio/realm/Realm;->beginTransaction()V

    .line 198
    invoke-static {v0, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->setSetting(Lbike/smarthalo/app/models/SHSettings;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 199
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p2, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 200
    invoke-virtual {p2}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method


# virtual methods
.method public getUserSettings()Lbike/smarthalo/app/models/SHSettings;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 150
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 152
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "current"

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 153
    const-class v3, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHSettings;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    return-object v2

    .line 159
    :cond_1
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHSettings;

    .line 161
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public initSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageManager;->initSettings(Ljava/util/HashMap;)V

    return-void
.end method

.method public initSettings(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$NM_mZGcEs9Kozf0XUrj61dkpi8s;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$NM_mZGcEs9Kozf0XUrj61dkpi8s;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public updateUserSettings(Ljava/lang/String;I)V
    .locals 1

    .line 167
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$nuGwJ3q7LXu-38lBT6qbSifY0h0;

    invoke-direct {v0, p1, p2}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$nuGwJ3q7LXu-38lBT6qbSifY0h0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public updateUserSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 186
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$v3YdjoKU_mHb6_dd8LK7id-yOtM;

    invoke-direct {v0, p1, p2}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$v3YdjoKU_mHb6_dd8LK7id-yOtM;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method
