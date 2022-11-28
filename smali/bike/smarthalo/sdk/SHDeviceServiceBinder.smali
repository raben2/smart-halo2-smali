.class public Lbike/smarthalo/sdk/SHDeviceServiceBinder;
.super Landroid/os/Binder;
.source "SHDeviceServiceBinder.java"


# instance fields
.field private service:Lbike/smarthalo/sdk/SHDeviceService;


# direct methods
.method public constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    return-void
.end method


# virtual methods
.method public areTouchInputsSupported()Ljava/lang/Boolean;
    .locals 1

    .line 344
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->areTouchInputsSupported()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public calibrateSwipe(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getExperimentalCommandsController()Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->calibrateSwipe(ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public calibrateTouch(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getExperimentalCommandsController()Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->calibrateTouch(ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public config_name([BLbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getDeviceCommandsController()Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->config_name([BLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public configureAlarm([BIIZZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 9

    .line 261
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getAlarmCommandsController()Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->configureAlarm([BIIZZZLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public configureAlarmSeverity([BIIZZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 9

    .line 257
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getAlarmCommandsController()Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    move-result-object v1

    const/4 v7, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->configureAlarm([BIIZZZLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public connect()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->manualConnect()Z

    move-result v0

    return v0
.end method

.method public forceInstallGoldenFirmware(Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getStmDfuController()Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->forceInstallGoldenFirmware(Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    return-void
.end method

.method public forgetSavedDeviceAndDisconnect()V
    .locals 1

    .line 316
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->resetLocalStorageAndDisconnect()V

    return-void
.end method

.method public getAlarmReport(Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getAlarmCommandsController()Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->getAlarmReport(Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;)V

    return-void
.end method

.method public getAndObserveStmDfuSource()Lio/reactivex/Flowable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getStmDfuController()Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->getAndObserveDfuFlowSource()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getBleDeviceFromDeviceId(Ljava/lang/String;)Lbike/smarthalo/sdk/models/BleDevice;
    .locals 1

    .line 336
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->getBleDeviceFromId(Ljava/lang/String;)Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object p1

    return-object p1
.end method

.method public getBleNotificationController()Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;
    .locals 1

    .line 415
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getBleNotificationSourceController()Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothSpeedMetrics()Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;
    .locals 1

    .line 398
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getBluetoothSpeedMonitor()Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->getBluetoothSpeedMetrics()Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;
    .locals 1

    .line 324
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;
    .locals 1

    .line 320
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getServiceStorage()Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStmDfuInformation()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 378
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getStmDfuController()Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->getCurrentStmDfuInformation()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    move-result-object v0

    return-object v0
.end method

.method public getDebugLoggerData()Lbike/smarthalo/sdk/helpers/DebugLoggerDataContract;
    .locals 1

    .line 427
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getDebugLogger()Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 403
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getDeviceCommandsController()Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/sdk/models/BleDevice;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceState(Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getDeviceCommandsController()Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceState(Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;)V

    return-void
.end method

.method public getPreviousConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;
    .locals 1

    .line 328
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getPreviousConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public get_alarm_seed(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getAlarmCommandsController()Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->get_alarm_seed(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public initializeStmDfu([BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getStmDfuController()Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->initializeStmDfu([BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;)V

    return-void
.end method

.method public installTransferredFirmware(Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getStmDfuController()Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->installTransferredFirmware(Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;)V

    return-void
.end method

.method public observeSmartHaloOSCrash()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getSmartHaloOSCrashReporter()Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporterContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporterContract;->observeSmartHaloOSCrash()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public play_sound(II[BLbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getSoundsCommandsController()Lbike/smarthalo/sdk/commands/SoundsCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbike/smarthalo/sdk/commands/SoundsCommandsController;->play_sound(II[BLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public requestBootloader(Lbike/smarthalo/sdk/CmdCallback;Z)V
    .locals 1

    .line 46
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getDeviceCommandsController()Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->requestBootloader(Lbike/smarthalo/sdk/CmdCallback;Z)V

    return-void
.end method

.method public requireExternalCommandForLight(ZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_front_external_toggle(ZLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public resetPasswordAndDisconnect()V
    .locals 1

    .line 308
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->resetPasswordAndDisconnect()V

    return-void
.end method

.method public resetPasswordAndDisconnect(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->resetPasswordAndDisconnect(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V

    return-void
.end method

.method public sendNotificationCommand(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->sendNotificationCommand(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 1

    .line 299
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getServiceStorage()Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->setId(Ljava/lang/String;)V

    return-object p0
.end method

.method public setMyDevice(Ljava/lang/String;Ljava/lang/String;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 1

    .line 289
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/SHDeviceService;->setMyDevice(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOledBrightness(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getExperimentalCommandsController()Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->setOledBrightness(ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public setOledContrast(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 364
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getExperimentalCommandsController()Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->setOledContrast(ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 1

    .line 294
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getServiceStorage()Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->setPassword(Ljava/lang/String;)V

    return-object p0
.end method

.method public set_alarm_state(IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getAlarmCommandsController()Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->set_alarm_state(IILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getCarouselCommandsController()Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showCarouselPosition(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getCarouselCommandsController()Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;->showCarouselPosition(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showChargeState(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_show_charge_state(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showClock(Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    .line 184
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_clock(Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showDemo(IIILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbike/smarthalo/sdk/commands/UICommandsController;->showDemo(IIILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showDemo(IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lbike/smarthalo/sdk/commands/UICommandsController;->showDemo(IIILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showDemo(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1, p2}, Lbike/smarthalo/sdk/commands/UICommandsController;->showDemo(IIILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showOled(IILbike/smarthalo/sdk/models/OledAnimationType;IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 8

    .line 352
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getExperimentalCommandsController()Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->showOled(IILbike/smarthalo/sdk/models/OledAnimationType;IILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showPointerIntro(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_pointer_intro(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showPointerIntroStandby(Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_pointer_intro_standby(Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public showTurnByTurnIntro(Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_turn_by_turn_intro(Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public startStmDfu()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getStmDfuController()Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->startStmDfu()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public startTouchTest(Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getDeviceCommandsController()Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->startTouchTest(Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    return-void
.end method

.method public stopAndRestartService()V
    .locals 1

    .line 340
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection()V

    return-void
.end method

.method public stopClock(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_clock_off(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public stopOled(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getExperimentalCommandsController()Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->stopOled(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public stopScan()V
    .locals 1

    .line 348
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->stopScan()V

    return-void
.end method

.method public stop_sound(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getSoundsCommandsController()Lbike/smarthalo/sdk/commands/SoundsCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/SoundsCommandsController;->stop_sound(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public toggleTouchSounds(ZILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getSoundsCommandsController()Lbike/smarthalo/sdk/commands/SoundsCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbike/smarthalo/sdk/commands/SoundsCommandsController;->touch_sounds(ZILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_anim_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_anim_off(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_central(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/CmdCallback;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 130
    iget-object v1, v0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v1

    new-instance v11, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;-><init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/CmdCallback;)V

    invoke-virtual {v1, v11}, Lbike/smarthalo/sdk/commands/UICommandsController;->sendNotificationCommand(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    return-void
.end method

.method public ui_central_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_central_off(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_compass(Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_compass(Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_compass_calibrate(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getDeviceCommandsController()Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->cmd_compass_calibrate(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_compass_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_compass_off(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_disconnect(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_disconnect(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_fitness_intro(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_fitness_intro(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_frontLight(ZZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_frontLight(ZZLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_hb(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIILbike/smarthalo/sdk/CmdCallback;)V
    .locals 10

    move-object v0, p0

    .line 151
    iget-object v1, v0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_hb(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_hb_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_hb_off(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_logo(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_logo(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_lowBat(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_lowBat(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_nav(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;ZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 10

    move-object v0, p0

    .line 54
    iget-object v1, v0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;ZLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_nav_angle_quick(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/models/SHColour;IIIILjava/lang/String;ZZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 15

    move-object v0, p0

    .line 81
    iget-object v1, v0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_angle_quick(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/models/SHColour;IIIILjava/lang/String;ZZLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_nav_experimental_destination_angle(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getExperimentalCommandsController()Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->ui_nav_experimental_destination_angle(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_nav_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_off(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 8

    .line 269
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_nav_pointer_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_pointer_off(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_nav_pointer_standby(Lbike/smarthalo/sdk/models/SHColour;ZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 7

    .line 277
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_pointer_standby(Lbike/smarthalo/sdk/models/SHColour;ZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_nav_reroute(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_reroute(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_nav_roundabout(IILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;[IIZLjava/lang/String;)V
    .locals 11

    move-object v0, p0

    .line 105
    iget-object v1, v0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_roundabout(IILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;[IIZLjava/lang/String;)V

    return-void
.end method

.method public ui_progress(Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_progress(Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_progress_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_progress_off(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_setBrightness(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_setBrightness(ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_speedometer_intro(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_speedometer_intro(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_speedometer_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_speedometer_off(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public ui_speedometer_speed(Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->service:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_speedometer_speed(Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method
