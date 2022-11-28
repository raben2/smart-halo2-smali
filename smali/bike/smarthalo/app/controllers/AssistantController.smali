.class public Lbike/smarthalo/app/controllers/AssistantController;
.super Landroid/telephony/PhoneStateListener;
.source "AssistantController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;


# instance fields
.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private callReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private hasUserRequestedCallMute:Z

.field private isCallRinging:Z

.field private notificationReceiver:Landroid/content/BroadcastReceiver;

.field private settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->isCallRinging:Z

    .line 115
    new-instance v0, Lbike/smarthalo/app/controllers/AssistantController$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/AssistantController$1;-><init>(Lbike/smarthalo/app/controllers/AssistantController;)V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->notificationReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    new-instance v0, Lbike/smarthalo/app/controllers/AssistantController$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/AssistantController$2;-><init>(Lbike/smarthalo/app/controllers/AssistantController;)V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->callReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lbike/smarthalo/app/controllers/AssistantController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 54
    iput-object p3, p0, Lbike/smarthalo/app/controllers/AssistantController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 55
    iput-object p4, p0, Lbike/smarthalo/app/controllers/AssistantController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 56
    iput-object p5, p0, Lbike/smarthalo/app/controllers/AssistantController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
    .locals 0

    .line 35
    iget-object p0, p0, Lbike/smarthalo/app/controllers/AssistantController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-object p0
.end method

.method static synthetic access$100(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
    .locals 0

    .line 35
    iget-object p0, p0, Lbike/smarthalo/app/controllers/AssistantController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    return-object p0
.end method

.method static synthetic access$200(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 0

    .line 35
    iget-object p0, p0, Lbike/smarthalo/app/controllers/AssistantController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object p0
.end method

.method static synthetic access$300(Lbike/smarthalo/app/controllers/AssistantController;Lbike/smarthalo/app/models/AssistantNotificationType;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/AssistantController;->getNotificationText(Lbike/smarthalo/app/models/AssistantNotificationType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;
    .locals 0

    .line 35
    iget-object p0, p0, Lbike/smarthalo/app/controllers/AssistantController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    return-object p0
.end method

.method static synthetic access$500(Lbike/smarthalo/app/controllers/AssistantController;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/AssistantController;->toggleTelephoneListener(Z)V

    return-void
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;
    .locals 7

    .line 65
    new-instance v6, Lbike/smarthalo/app/controllers/AssistantController;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/controllers/AssistantController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v6
.end method

.method private getNotificationText(Lbike/smarthalo/app/models/AssistantNotificationType;)Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lbike/smarthalo/app/controllers/AssistantController$3;->$SwitchMap$bike$smarthalo$app$models$AssistantNotificationType:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/AssistantNotificationType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    .line 109
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    const v0, 0x7f110068

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    const v0, 0x7f11006a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    const v0, 0x7f110069

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 103
    :pswitch_3
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    const v0, 0x7f110066

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :pswitch_4
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    const v0, 0x7f11006b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_5
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    const v0, 0x7f110065

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_6
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    const v0, 0x7f110064

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playCallSequence(Ljava/lang/String;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    .line 151
    iget-boolean v1, p0, Lbike/smarthalo/app/controllers/AssistantController;->isCallRinging:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGlobal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingCalls()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 155
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getIsConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->PhoneCalls:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getNotificationReceivedEvent(Lbike/smarthalo/app/models/AssistantNotificationType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->isCallRinging:Z

    .line 159
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/AssistantController;->ringCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ringCall(Ljava/lang/String;)V
    .locals 14

    .line 164
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    const v1, 0x7f110059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 171
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    new-instance v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    new-instance v3, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v2, 0xdb

    const/16 v4, 0x8f

    const/16 v5, 0xc6

    invoke-direct {v3, v4, v2, v5}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    new-instance v5, Lbike/smarthalo/sdk/models/SHColour;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v2, v6}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    sget-object v10, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Call:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const/16 v6, 0x64

    const/16 v7, 0x100

    const/16 v8, 0x64

    const/4 v9, 0x0

    const/16 v12, 0xff

    const/4 v13, 0x0

    move-object v2, v1

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v12

    move-object v12, v13

    invoke-direct/range {v2 .. v12}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;-><init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWithSound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->hasUserRequestedCallMute:Z

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$assistantVolume()I

    move-result p1

    const/16 v1, 0x32

    sget-object v2, Lbike/smarthalo/app/models/SHSounds;->call_sound:[B

    invoke-interface {v0, p1, v1, v2}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->playSound(II[B)V

    :cond_0
    return-void
.end method

.method private stopCall()V
    .locals 1

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->hasUserRequestedCallMute:Z

    .line 221
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->isCallRinging:Z

    .line 222
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/AssistantController;->toggleTelephoneListener(Z)V

    .line 224
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->centralLedOff()V

    .line 225
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->stopSound()V

    return-void
.end method

.method private toggleTelephoneListener(Z)V
    .locals 2

    .line 244
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 246
    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getContactDisplayNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 192
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 195
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "_id"

    const-string v1, "display_name"

    .line 196
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const-string p1, "display_name"

    .line 207
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_0
    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public isPhoneSoundRinging()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->isCallRinging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->hasUserRequestedCallMute:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 253
    invoke-direct {p0, p2}, Lbike/smarthalo/app/controllers/AssistantController;->playCallSequence(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AssistantController;->stopCall()V

    :goto_0
    return-void
.end method

.method public onDispose()V
    .locals 2

    .line 76
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/AssistantController;->callReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/AssistantController;->notificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/AssistantController;->callReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/AssistantController;->notificationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "new_notification_intent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public requestCallMute()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/AssistantController;->isPhoneSoundRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->hasUserRequestedCallMute:Z

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->stopSound()V

    .line 85
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AssistantController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->PhoneCalls:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getNotificationSilencedEvent(Lbike/smarthalo/app/models/AssistantNotificationType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    :cond_0
    return-void
.end method
