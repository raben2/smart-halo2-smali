.class public Lbike/smarthalo/app/controllers/TouchInputController;
.super Ljava/lang/Object;
.source "TouchInputController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;


# instance fields
.field private MUTE_CALL_TOUCH_INPUT:Ljava/lang/String;

.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

.field private assistantControllerContract:Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private deviceStateSubscription:Lio/reactivex/disposables/Disposable;

.field private directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

.field private lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

.field private settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

.field private touchInputSubscription:Lio/reactivex/disposables/Disposable;

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

.field private userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

.field private userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "s"

    .line 65
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->MUTE_CALL_TOUCH_INPUT:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->context:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    .line 87
    iput-object p3, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 88
    iput-object p4, p0, Lbike/smarthalo/app/controllers/TouchInputController;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    .line 89
    iput-object p5, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    .line 90
    iput-object p6, p0, Lbike/smarthalo/app/controllers/TouchInputController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 91
    iput-object p7, p0, Lbike/smarthalo/app/controllers/TouchInputController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 92
    iput-object p8, p0, Lbike/smarthalo/app/controllers/TouchInputController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 93
    iput-object p9, p0, Lbike/smarthalo/app/controllers/TouchInputController;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    .line 94
    iput-object p11, p0, Lbike/smarthalo/app/controllers/TouchInputController;->assistantControllerContract:Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

    .line 95
    iput-object p10, p0, Lbike/smarthalo/app/controllers/TouchInputController;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 96
    iput-object p12, p0, Lbike/smarthalo/app/controllers/TouchInputController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static buildProvider(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;
    .locals 14

    .line 112
    new-instance v13, Lbike/smarthalo/app/controllers/TouchInputController;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lbike/smarthalo/app/controllers/TouchInputController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v13
.end method

.method private cleanUpSubscriptions()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->clearDeviceStateSubscription()V

    .line 143
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->clearConnectionSubscription()V

    .line 144
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->clearTouchInputSubscription()V

    return-void
.end method

.method private clearConnectionSubscription()V
    .locals 1

    .line 149
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearDeviceStateSubscription()V
    .locals 1

    .line 156
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearTouchInputSubscription()V
    .locals 1

    .line 163
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->touchInputSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->touchInputSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private handleTouchInput(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->areTouchInputsSupported()Ljava/lang/Boolean;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lbike/smarthalo/app/controllers/TouchInputController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v2

    .line 203
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    if-eqz v0, :cond_d

    .line 208
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 212
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->MUTE_CALL_TOUCH_INPUT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->assistantControllerContract:Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

    .line 213
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;->isPhoneSoundRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->assistantControllerContract:Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;->requestCallMute()V

    goto/16 :goto_0

    .line 217
    :cond_1
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$hornTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->playHorn()V

    .line 219
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->Horn:Lbike/smarthalo/app/models/TouchInputItemType;

    goto/16 :goto_0

    .line 222
    :cond_2
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightStateTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/TouchInputController;->onLightCodeTriggered(Ljava/lang/String;)V

    .line 224
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    goto/16 :goto_0

    .line 227
    :cond_3
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightModeCycleTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->onLightCycleTriggered()V

    .line 229
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    goto/16 :goto_0

    .line 232
    :cond_4
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navHomeTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->navigateHome()V

    .line 234
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationHome:Lbike/smarthalo/app/models/TouchInputItemType;

    goto :goto_0

    .line 237
    :cond_5
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navWorkTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->navigateToWork()V

    .line 239
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationWork:Lbike/smarthalo/app/models/TouchInputItemType;

    goto :goto_0

    .line 242
    :cond_6
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navStopTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->stopNavigation()V

    .line 244
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationStop:Lbike/smarthalo/app/models/TouchInputItemType;

    goto :goto_0

    .line 247
    :cond_7
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navModeTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 248
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->toggleNavigationMode()V

    .line 249
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationMode:Lbike/smarthalo/app/models/TouchInputItemType;

    goto :goto_0

    .line 252
    :cond_8
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$progressToDestinationTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->showProgressToDestination()V

    .line 254
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->ProgressToDestination:Lbike/smarthalo/app/models/TouchInputItemType;

    goto :goto_0

    .line 257
    :cond_9
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$clockTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 258
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->displayClock()V

    .line 259
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->Clock:Lbike/smarthalo/app/models/TouchInputItemType;

    goto :goto_0

    .line 262
    :cond_a
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightModeTouchCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 263
    invoke-direct {p0, v1, v2}, Lbike/smarthalo/app/controllers/TouchInputController;->toggleLightSetting(Lbike/smarthalo/app/models/SHSettings;Lbike/smarthalo/app/models/SHUser;)V

    .line 264
    sget-object v3, Lbike/smarthalo/app/models/TouchInputItemType;->LightMode:Lbike/smarthalo/app/models/TouchInputItemType;

    .line 266
    :cond_b
    :goto_0
    invoke-static {p1}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->fromString(Ljava/lang/String;)Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    move-result-object p1

    .line 267
    sget-object v0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->None:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    if-eq p1, v0, :cond_c

    .line 268
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {v3, p1}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getTouchInputEnteredEvent(Lbike/smarthalo/app/models/TouchInputItemType;Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    :cond_c
    return-void

    :cond_d
    :goto_1
    return-void
.end method

.method private initializeSubscriptions()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->observeConnectionState()V

    return-void
.end method

.method public static synthetic lambda$JD40652LQ04qkcuvbs3NrPrKk3U(Lbike/smarthalo/app/controllers/TouchInputController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/TouchInputController;->handleTouchInput(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$observeConnectionState$0(Lbike/smarthalo/app/controllers/TouchInputController;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$touchSoundVolume()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isTouchSoundEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->updateTouchSoundState(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 181
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->observeTouchEvents()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->clearTouchInputSubscription()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onLightCodeTriggered$1(Lbike/smarthalo/app/controllers/TouchInputController;Lbike/smarthalo/app/models/DeviceState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Lbike/smarthalo/app/models/DeviceState;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    iget-boolean p1, p1, Lbike/smarthalo/app/models/DeviceState;->isLightOn:Z

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    sget-object v2, Lbike/smarthalo/app/analytics/light/LightIlluminationSource;->Manual:Lbike/smarthalo/app/analytics/light/LightIlluminationSource;

    invoke-interface {v0, p1, v1, v2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->toggleFrontLight(ZZLbike/smarthalo/app/analytics/light/LightIlluminationSource;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onLightCycleTriggered$2(Lbike/smarthalo/app/controllers/TouchInputController;Lbike/smarthalo/app/models/DeviceState;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Lbike/smarthalo/app/models/DeviceState;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 295
    iget-object v1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->getLightState()Lbike/smarthalo/app/models/LightState;

    move-result-object v1

    sget-object v2, Lbike/smarthalo/app/models/LightState;->Blinking:Lbike/smarthalo/app/models/LightState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 297
    :goto_0
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightBlinking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    iget-boolean v0, p1, Lbike/smarthalo/app/models/DeviceState;->isLightOn:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 299
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->updateFrontLightSetting(Lbike/smarthalo/sdk/commands/light/LightMode;)V

    goto :goto_1

    .line 300
    :cond_1
    iget-boolean p1, p1, Lbike/smarthalo/app/models/DeviceState;->isLightOn:Z

    if-eqz p1, :cond_2

    .line 301
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    sget-object v0, Lbike/smarthalo/app/analytics/light/LightIlluminationSource;->Manual:Lbike/smarthalo/app/analytics/light/LightIlluminationSource;

    invoke-interface {p1, v4, v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->toggleFrontLight(ZLbike/smarthalo/app/analytics/light/LightIlluminationSource;)V

    goto :goto_1

    .line 303
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->updateFrontLightSetting(Lbike/smarthalo/sdk/commands/light/LightMode;)V

    .line 304
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    sget-object v0, Lbike/smarthalo/app/analytics/light/LightIlluminationSource;->Manual:Lbike/smarthalo/app/analytics/light/LightIlluminationSource;

    invoke-interface {p1, v3, v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->toggleFrontLight(ZLbike/smarthalo/app/analytics/light/LightIlluminationSource;)V

    goto :goto_1

    .line 307
    :cond_3
    iget-boolean v0, p1, Lbike/smarthalo/app/models/DeviceState;->isLightOn:Z

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 308
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->updateFrontLightSetting(Lbike/smarthalo/sdk/commands/light/LightMode;)V

    goto :goto_1

    .line 309
    :cond_4
    iget-boolean p1, p1, Lbike/smarthalo/app/models/DeviceState;->isLightOn:Z

    if-eqz p1, :cond_5

    .line 310
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    sget-object v0, Lbike/smarthalo/app/analytics/light/LightIlluminationSource;->Manual:Lbike/smarthalo/app/analytics/light/LightIlluminationSource;

    invoke-interface {p1, v4, v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->toggleFrontLight(ZLbike/smarthalo/app/analytics/light/LightIlluminationSource;)V

    goto :goto_1

    .line 312
    :cond_5
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->updateFrontLightSetting(Lbike/smarthalo/sdk/commands/light/LightMode;)V

    .line 313
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    sget-object v0, Lbike/smarthalo/app/analytics/light/LightIlluminationSource;->Manual:Lbike/smarthalo/app/analytics/light/LightIlluminationSource;

    invoke-interface {p1, v3, v4, v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->toggleFrontLight(ZZLbike/smarthalo/app/analytics/light/LightIlluminationSource;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private observeConnectionState()V
    .locals 2

    .line 170
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->clearConnectionSubscription()V

    .line 172
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 174
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$JcqvcVCOUO3gqHueuGzNc8bTv18;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$JcqvcVCOUO3gqHueuGzNc8bTv18;-><init>(Lbike/smarthalo/app/controllers/TouchInputController;)V

    .line 175
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private observeTouchEvents()V
    .locals 2

    .line 189
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getBleNotificationController()Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;->observeTouch()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$JD40652LQ04qkcuvbs3NrPrKk3U;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$JD40652LQ04qkcuvbs3NrPrKk3U;-><init>(Lbike/smarthalo/app/controllers/TouchInputController;)V

    .line 195
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->touchInputSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private onLightCodeTriggered(Ljava/lang/String;)V
    .locals 1

    .line 273
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->clearDeviceStateSubscription()V

    .line 275
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 276
    invoke-interface {p1}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->refreshDeviceState()Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$osbgZmQ1i3-v2zjhyROmrE38_aE;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$osbgZmQ1i3-v2zjhyROmrE38_aE;-><init>(Lbike/smarthalo/app/controllers/TouchInputController;)V

    .line 277
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private toggleLightSetting(Lbike/smarthalo/app/models/SHSettings;Lbike/smarthalo/app/models/SHUser;)V
    .locals 2
    .param p1    # Lbike/smarthalo/app/models/SHSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/models/SHUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 321
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightBlinking()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 322
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    const-string v1, "isLightBlinking"

    invoke-interface {v0, v1, p2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->updateUserSettings(Ljava/lang/String;I)V

    .line 323
    iget-object p2, p0, Lbike/smarthalo/app/controllers/TouchInputController;->context:Landroid/content/Context;

    const/4 v0, 0x7

    invoke-static {p2, v0}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    .line 325
    iget-object p2, p0, Lbike/smarthalo/app/controllers/TouchInputController;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightBlinking()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    :goto_0
    invoke-interface {p2, p1}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->updateFrontLightSetting(Lbike/smarthalo/sdk/commands/light/LightMode;)V

    return-void
.end method


# virtual methods
.method public onDispose()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->cleanUpSubscriptions()V

    return-void
.end method

.method public onLightCycleTriggered()V
    .locals 2

    .line 286
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->clearDeviceStateSubscription()V

    .line 288
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 289
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->refreshDeviceState()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$9ZWnmuNATTWKLzBOu2b2fWnRB8Y;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$9ZWnmuNATTWKLzBOu2b2fWnRB8Y;-><init>(Lbike/smarthalo/app/controllers/TouchInputController;)V

    .line 290
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TouchInputController;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TouchInputController;->initializeSubscriptions()V

    return-void
.end method
