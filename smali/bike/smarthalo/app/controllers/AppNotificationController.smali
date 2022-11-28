.class public Lbike/smarthalo/app/controllers/AppNotificationController;
.super Ljava/lang/Object;
.source "AppNotificationController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;


# static fields
.field private static final DELAY_FOR_FITNESS_OFF_NOTIFICATION:J = 0x15180L

.field private static final NOTIF_FIRMWARE_UPDATE_NOTIF_TIME_DELAY_MS:J = 0x5265c00L


# instance fields
.field private appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

.field private batteryAnimSubscription:Lio/reactivex/disposables/Disposable;

.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private dfuStateSubscription:Lio/reactivex/disposables/Disposable;

.field private firmwareUpdateController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

.field private settingsStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

.field private userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->context:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    .line 62
    iput-object p2, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 63
    iput-object p4, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->firmwareUpdateController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    .line 64
    iput-object p5, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 65
    iput-object p6, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 66
    iput-object p7, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->settingsStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-void
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;
    .locals 9

    .line 76
    new-instance v8, Lbike/smarthalo/app/controllers/AppNotificationController;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/controllers/AppNotificationController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    return-object v8
.end method

.method private clearBatteryAnimSubscription()V
    .locals 1

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->batteryAnimSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->batteryAnimSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearConnectionStateSubscription()V
    .locals 1

    .line 87
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearDFUAvailabilitySubscription()V
    .locals 1

    .line 94
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->dfuStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->dfuStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$-qcYn3104OqVeICcuo5GG3E8L3g(Lbike/smarthalo/app/controllers/AppNotificationController;Lbike/smarthalo/app/models/DeviceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/AppNotificationController;->sendBatteryNotification(Lbike/smarthalo/app/models/DeviceState;)V

    return-void
.end method

.method public static synthetic lambda$getAndObserveHasNotification$0(Lbike/smarthalo/app/controllers/AppNotificationController;Lbike/smarthalo/app/models/dfu/DfuAvailability;Lbike/smarthalo/app/models/DeviceState;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 190
    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 192
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    if-nez v0, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-nez p1, :cond_4

    .line 193
    invoke-virtual {p2}, Lbike/smarthalo/app/models/DeviceState;->isLowBattery()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$observeBatteryNotificationSequence$2(Lbike/smarthalo/app/controllers/AppNotificationController;Lbike/smarthalo/app/models/Ping;)Lorg/reactivestreams/Publisher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {p1}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceState()Lio/reactivex/Flowable;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$observeDFUState$1(Lbike/smarthalo/app/controllers/AppNotificationController;Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq v0, v1, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH1:Lbike/smarthalo/sdk/models/FirmwareType;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_NRF:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v0, v1, :cond_2

    return-void

    .line 206
    :cond_2
    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    .line 209
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "NEXT_FIRMWARE_UPDATE_NOTIF_TIME"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 211
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    const/4 p1, 0x0

    :cond_4
    if-nez p1, :cond_5

    return-void

    .line 219
    :cond_5
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v0, "NEXT_FIRMWARE_UPDATE_NOTIF_TIME"

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-interface {p1, v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->context:Landroid/content/Context;

    const-class v1, Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->context:Landroid/content/Context;

    const/16 v1, 0x80

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 228
    iget-object v3, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->context:Landroid/content/Context;

    const v4, 0x7f1100ec

    const v5, 0x7f1100ea

    const/16 v7, 0x80

    const-string v8, "sh_app_notification"

    invoke-static/range {v3 .. v8}, Lbike/smarthalo/app/helpers/SHNotificationHelper;->buildAndSendDefaultNotification(Landroid/content/Context;IILandroid/app/PendingIntent;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$observeDisconnection$3(Lbike/smarthalo/app/controllers/AppNotificationController;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->observeBatteryNotificationSequence()V

    .line 258
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->observeDFUState()V

    .line 259
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->sendFitnessOffNotification()V

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->clearBatteryAnimSubscription()V

    .line 262
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->clearDFUAvailabilitySubscription()V

    :goto_0
    return-void
.end method

.method private observeBatteryNotificationSequence()V
    .locals 3

    .line 239
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->clearBatteryAnimSubscription()V

    .line 241
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 243
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveSmartHaloMovement()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 244
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$9m-X0oZwKvUMN27emP50qIAShbQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$9m-X0oZwKvUMN27emP50qIAShbQ;-><init>(Lbike/smarthalo/app/controllers/AppNotificationController;)V

    .line 245
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$-qcYn3104OqVeICcuo5GG3E8L3g;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$-qcYn3104OqVeICcuo5GG3E8L3g;-><init>(Lbike/smarthalo/app/controllers/AppNotificationController;)V

    .line 246
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->batteryAnimSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private observeDFUState()V
    .locals 4

    .line 199
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->firmwareUpdateController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->getAndObserveGlobalDfuState()Lio/reactivex/Flowable;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lio/reactivex/Flowable;->distinctUntilChanged()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    .line 201
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 202
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$SfPmauy00O6t5H9XQmF5joutdGM;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$SfPmauy00O6t5H9XQmF5joutdGM;-><init>(Lbike/smarthalo/app/controllers/AppNotificationController;)V

    .line 203
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->dfuStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private observeDisconnection()V
    .locals 2

    .line 250
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->clearConnectionStateSubscription()V

    .line 252
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 254
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$cFUCwzRZPB5uyDn2Kbaq37vHuKs;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$cFUCwzRZPB5uyDn2Kbaq37vHuKs;-><init>(Lbike/smarthalo/app/controllers/AppNotificationController;)V

    .line 255
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private sendBatteryNotification(Lbike/smarthalo/app/models/DeviceState;)V
    .locals 6

    .line 101
    invoke-virtual {p1}, Lbike/smarthalo/app/models/DeviceState;->isLowBattery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_lowBat(Lbike/smarthalo/sdk/CmdCallback;)V

    .line 107
    :cond_0
    iget-object p1, p1, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 108
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v0, "HAS_SENT_CRITICAL_BATTERY_NOTIF_KEY"

    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 111
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->context:Landroid/content/Context;

    const v1, 0x7f1102cf

    const v2, 0x7f1102d0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sh_app_notification"

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/helpers/SHNotificationHelper;->buildAndSendDefaultNotification(Landroid/content/Context;IILandroid/app/PendingIntent;ILjava/lang/String;)V

    .line 119
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v0, "HAS_SENT_CRITICAL_BATTERY_NOTIF_KEY"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v0, "HAS_SENT_LOW_BATTERY_NOTIF_KEY"

    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 125
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->context:Landroid/content/Context;

    const v1, 0x7f1102ce

    const v2, 0x7f1102d0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "sh_app_notification"

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/helpers/SHNotificationHelper;->buildAndSendDefaultNotification(Landroid/content/Context;IILandroid/app/PendingIntent;ILjava/lang/String;)V

    .line 133
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v0, "HAS_SENT_LOW_BATTERY_NOTIF_KEY"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v0, "HAS_SENT_LOW_BATTERY_NOTIF_KEY"

    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "HAS_SENT_CRITICAL_BATTERY_NOTIF_KEY"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "HAS_SENT_CRITICAL_BATTERY_NOTIF_KEY"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 145
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v0, "HAS_SENT_LOW_BATTERY_NOTIF_KEY"

    const-string v1, "false"

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private sendFitnessOffNotification()V
    .locals 10

    .line 151
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->settingsStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v3, "DONT_REMIND_FITNESS_OFF"

    invoke-interface {v2, v3}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 154
    iget-object v3, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v4, "FITNESS_OFF_NOTIFICATION_TIMESTAMP"

    invoke-interface {v3, v4}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v3}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v1

    sget-object v5, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v1, v5, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAutoTracking()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/32 v2, 0x15180

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 162
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->context:Landroid/content/Context;

    const-class v2, Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "REQUEST_CODE_EXTRA"

    const/16 v2, 0x81

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->context:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 171
    iget-object v4, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->context:Landroid/content/Context;

    const v5, 0x7f110156

    const v6, 0x7f110154

    const/16 v8, 0x81

    const-string v9, "sh_app_notification"

    invoke-static/range {v4 .. v9}, Lbike/smarthalo/app/helpers/SHNotificationHelper;->buildAndSendDefaultNotification(Landroid/content/Context;IILandroid/app/PendingIntent;ILjava/lang/String;)V

    .line 178
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->appStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "FITNESS_OFF_NOTIFICATION_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAndObserveHasNotification()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->firmwareUpdateController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    .line 185
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->getAndObserveDFUAvailability()Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 186
    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceState()Lio/reactivex/Flowable;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/controllers/AppNotificationController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 187
    invoke-interface {v2}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v2

    new-instance v3, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$Xi8g7TWCLlpqqLi_HdYpA6UaFW4;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$AppNotificationController$Xi8g7TWCLlpqqLi_HdYpA6UaFW4;-><init>(Lbike/smarthalo/app/controllers/AppNotificationController;)V

    .line 184
    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function3;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public onDispose()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->clearBatteryAnimSubscription()V

    .line 276
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->clearConnectionStateSubscription()V

    .line 277
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->clearDFUAvailabilitySubscription()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 269
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->observeBatteryNotificationSequence()V

    .line 270
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AppNotificationController;->observeDisconnection()V

    return-void
.end method
