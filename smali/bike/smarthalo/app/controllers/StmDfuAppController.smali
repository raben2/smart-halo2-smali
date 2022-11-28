.class public Lbike/smarthalo/app/controllers/StmDfuAppController;
.super Ljava/lang/Object;
.source "StmDfuAppController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;


# static fields
.field private static final MINIMUM_BATTERY_LEVEL_FOR_FIRMWARE_INSTALL:J = 0xaL

.field private static final RECONNECTION_TIMEOUT_DELAY:J = 0x7530L


# instance fields
.field private deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

.field private dfuSubscription:Lio/reactivex/disposables/Disposable;

.field private firmwareCheckSubscription:Lio/reactivex/disposables/Disposable;

.field private firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

.field private reconnectionTimeoutSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    .line 45
    iput-object p2, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    .line 46
    iput-object p3, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    .line 47
    iput-object p4, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    return-void
.end method

.method public static buildController(Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;)Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;
    .locals 1

    .line 55
    new-instance v0, Lbike/smarthalo/app/controllers/StmDfuAppController;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/controllers/StmDfuAppController;-><init>(Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;)V

    return-object v0
.end method

.method private clearDfuSubscription()V
    .locals 1

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearFirmwareCheckSubscription()V
    .locals 1

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->firmwareCheckSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->firmwareCheckSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearTimeoutSubscription()V
    .locals 1

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->reconnectionTimeoutSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->reconnectionTimeoutSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initializeDfu$1(Lbike/smarthalo/app/controllers/StmDfuAppController;Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 128
    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, [B

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$DuLFi3eqFhl2Dc1EfDPG3QRPRTg;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$DuLFi3eqFhl2Dc1EfDPG3QRPRTg;-><init>(Lbike/smarthalo/app/controllers/StmDfuAppController;)V

    invoke-virtual {v0, p1, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->initializeStmDfu([BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$installTransferredFirmware$4(Lbike/smarthalo/app/controllers/StmDfuAppController;Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V
    .locals 1

    .line 199
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->Success:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    if-ne p1, v0, :cond_0

    .line 201
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->startReconnectionTimeout()V

    goto :goto_0

    .line 202
    :cond_0
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->InstallError:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    if-ne p1, v0, :cond_1

    .line 203
    iget-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-static {}, Lbike/smarthalo/app/models/dfu/DfuState;->defaultError()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    goto :goto_0

    .line 204
    :cond_1
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->LowBattery:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    if-ne p1, v0, :cond_2

    .line 205
    iget-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {p1}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getStmDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object p1

    .line 206
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->LowBatteryError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 207
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$0(Lbike/smarthalo/app/controllers/StmDfuAppController;ZLbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {p1}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getStmDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object p1

    .line 132
    sget-object v0, Lbike/smarthalo/app/controllers/StmDfuAppController$1;->$SwitchMap$bike$smarthalo$sdk$bluetooth$stmDfuModels$StmDfuState:[I

    invoke-virtual {p2}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getCurrentState()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    sget-object p2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object p2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    const/16 p2, 0x64

    .line 140
    iput p2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    .line 141
    iget-object p2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq p2, v0, :cond_0

    .line 142
    sget-object p2, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iput-object p2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    goto :goto_0

    .line 135
    :pswitch_1
    sget-object p2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object p2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 136
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->startStmDfu()V

    .line 146
    :cond_0
    :goto_0
    iget-object p2, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {p2, p1}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$startReconnectionTimeout$5(Lbike/smarthalo/app/controllers/StmDfuAppController;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    iget-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-static {}, Lbike/smarthalo/app/models/dfu/DfuState;->defaultError()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

.method public static synthetic lambda$startStmDfu$2(Lbike/smarthalo/app/controllers/StmDfuAppController;Lbike/smarthalo/sdk/SHDeviceServiceBinder;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getStmDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getCurrentStmDfuInformation()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getCurrentState()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    move-result-object p1

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Completed:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    if-ne p1, v1, :cond_0

    .line 166
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    const/16 p1, 0x64

    .line 167
    iput p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    .line 168
    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object p2, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq p1, p2, :cond_1

    .line 169
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iput-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    goto :goto_0

    .line 172
    :cond_0
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 173
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    .line 175
    :cond_1
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

.method public static synthetic lambda$startStmDfu$3(Lbike/smarthalo/app/controllers/StmDfuAppController;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    iget-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-static {}, Lbike/smarthalo/app/models/dfu/DfuState;->defaultError()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

.method private startReconnectionTimeout()V
    .locals 3

    .line 214
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->clearTimeoutSubscription()V

    .line 216
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    .line 217
    invoke-static {v1, v2, v0}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$ViQXX0sOAjDUG8OJTHzBdhYX1-k;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$ViQXX0sOAjDUG8OJTHzBdhYX1-k;-><init>(Lbike/smarthalo/app/controllers/StmDfuAppController;)V

    .line 218
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->reconnectionTimeoutSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public initializeDfu(Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->clearFirmwareCheckSubscription()V

    .line 120
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 121
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    iget-object p1, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iget-object p1, p1, Lbike/smarthalo/app/models/LatestFirmwareInfo;->firmwareUrl:Ljava/lang/String;

    .line 124
    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;->getLatestFirmwareBytes(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$GCotOldXfAKi9N8MHAxNFBLeP0A;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$GCotOldXfAKi9N8MHAxNFBLeP0A;-><init>(Lbike/smarthalo/app/controllers/StmDfuAppController;)V

    .line 125
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->firmwareCheckSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public installTransferredFirmware()V
    .locals 6

    .line 183
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getDeviceState()Lbike/smarthalo/app/models/DeviceState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v1, v0, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0xa

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget-boolean v0, v0, Lbike/smarthalo/app/models/DeviceState;->isUSBPlugged:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getStmDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v1

    .line 195
    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v2, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 196
    iget-object v2, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v2, v1}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    .line 198
    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$7olH4HoMCcepm5rYiE1A7u4JKA8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$7olH4HoMCcepm5rYiE1A7u4JKA8;-><init>(Lbike/smarthalo/app/controllers/StmDfuAppController;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->installTransferredFirmware(Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;)V

    :cond_1
    return-void

    .line 186
    :cond_2
    :goto_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getStmDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 187
    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->LowBatteryError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 188
    iget-object v1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

.method public onDeviceConnectionEvent(Ljava/lang/Boolean;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getStmDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->isSTM()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 98
    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq p1, v1, :cond_1

    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq p1, v1, :cond_1

    .line 100
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 101
    iget-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    .line 104
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->clearDfuSubscription()V

    .line 105
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->clearFirmwareCheckSubscription()V

    return-void

    .line 109
    :cond_2
    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne p1, v1, :cond_3

    .line 110
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->clearTimeoutSubscription()V

    .line 111
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    const/16 p1, 0x64

    .line 112
    iput p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    .line 113
    iget-object p1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    :cond_3
    return-void
.end method

.method public onDispose()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->clearFirmwareCheckSubscription()V

    .line 65
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->clearDfuSubscription()V

    .line 66
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->startReconnectionTimeout()V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public startStmDfu()V
    .locals 3

    .line 155
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/StmDfuAppController;->clearDfuSubscription()V

    .line 156
    iget-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuSubscription:Lio/reactivex/disposables/Disposable;

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getCurrentStmDfuInformation()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->startStmDfu()Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$3sW4lJiSo0Do-TzJcBpQ0SZBDPI;

    invoke-direct {v2, p0, v0}, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$3sW4lJiSo0Do-TzJcBpQ0SZBDPI;-><init>(Lbike/smarthalo/app/controllers/StmDfuAppController;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$Nt9qsZZXZAwAum9CmKoPa1gQTvA;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$Nt9qsZZXZAwAum9CmKoPa1gQTvA;-><init>(Lbike/smarthalo/app/controllers/StmDfuAppController;)V

    .line 162
    invoke-virtual {v1, v2, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/StmDfuAppController;->dfuSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
