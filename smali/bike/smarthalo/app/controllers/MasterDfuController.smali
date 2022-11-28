.class public Lbike/smarthalo/app/controllers/MasterDfuController;
.super Ljava/lang/Object;
.source "MasterDfuController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;
.implements Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;
.implements Lbike/smarthalo/app/controllers/controllerContracts/FetchDfuAvailabilityContract;


# static fields
.field private static final DEFAULT_BOOTLOADER_FIRMWARE_VERSION:Ljava/lang/String; = "0.0.0.0"

.field private static final STM_GOLDEN_VERSION_PREFIX:C = '0'

.field private static final TAG:Ljava/lang/String; = "MasterDfuController"


# instance fields
.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private dfuStateSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/models/dfu/DfuState;",
            ">;"
        }
    .end annotation
.end field

.field private firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

.field private globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

.field private latestFirmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

.field private latestFirmwareSubscription:Lio/reactivex/disposables/Disposable;

.field private nordicDfuController:Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;

.field private nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

.field private stmDfuAppController:Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;

.field private stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

.field private userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 55
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 56
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 80
    iput-object p1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->context:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 82
    iput-object p4, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    .line 83
    iput-object p5, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 84
    iput-object p7, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 85
    iput-object p6, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 86
    iput-object p8, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const/4 p4, 0x1

    .line 87
    invoke-static {p4}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p4

    invoke-virtual {p4}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p4

    iput-object p4, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->dfuStateSource:Lio/reactivex/processors/FlowableProcessor;

    .line 88
    iget-object p4, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->dfuStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object p5, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-virtual {p4, p5}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 90
    iget-object p4, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    invoke-static {p3, p4, p0, p2}, Lbike/smarthalo/app/controllers/StmDfuAppController;->buildController(Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;)Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;

    move-result-object p3

    iput-object p3, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuAppController:Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;

    .line 91
    iget-object p3, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    invoke-static {p2, p3, p0, p0, p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->buildController(Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;Lbike/smarthalo/app/controllers/controllerContracts/FetchDfuAvailabilityContract;Landroid/content/Context;)Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuController:Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;

    return-void
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;
    .locals 10

    .line 103
    new-instance v9, Lbike/smarthalo/app/controllers/MasterDfuController;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lbike/smarthalo/app/controllers/MasterDfuController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v9
.end method

.method private checkNordicAvailability(Lbike/smarthalo/sdk/models/DeviceInformation;)Lio/reactivex/Flowable;
    .locals 3
    .param p1    # Lbike/smarthalo/sdk/models/DeviceInformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    iget-object v0, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    if-eq v0, v1, :cond_0

    sget-object v0, Lbike/smarthalo/sdk/models/FirmwareType;->SH1:Lbike/smarthalo/sdk/models/FirmwareType;

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_NRF:Lbike/smarthalo/sdk/models/FirmwareType;

    .line 206
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    iget-object v2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    .line 207
    invoke-interface {v1, v2, v0}, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;->getLatestFirmwareInfo(Ljava/lang/String;Lbike/smarthalo/sdk/models/FirmwareType;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$4-kzzp2-OaxXv_lh6Nl4oYAtd2E;

    invoke-direct {v2, p0, v0, p1}, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$4-kzzp2-OaxXv_lh6Nl4oYAtd2E;-><init>(Lbike/smarthalo/app/controllers/MasterDfuController;Lbike/smarthalo/sdk/models/FirmwareType;Lbike/smarthalo/sdk/models/DeviceInformation;)V

    .line 208
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lio/reactivex/Single;->toFlowable()Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method private checkStAvailability(Lbike/smarthalo/sdk/models/DeviceInformation;)Lio/reactivex/Flowable;
    .locals 3
    .param p1    # Lbike/smarthalo/sdk/models/DeviceInformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 227
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    iget-object v1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->stmFirmwareVersion:Ljava/lang/String;

    sget-object v2, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    .line 228
    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;->getLatestFirmwareInfo(Ljava/lang/String;Lbike/smarthalo/sdk/models/FirmwareType;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$3PSd7jQAhqx6iQBrH948MHt8Qes;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$3PSd7jQAhqx6iQBrH948MHt8Qes;-><init>(Lbike/smarthalo/app/controllers/MasterDfuController;Lbike/smarthalo/sdk/models/DeviceInformation;)V

    .line 229
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lio/reactivex/Single;->toFlowable()Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method private clearConnectionStateSubscription()V
    .locals 1

    .line 131
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearLatestFirmwareSubscription()V
    .locals 1

    .line 138
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->latestFirmwareSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->latestFirmwareSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private getLatestFirmwareInfo(Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 2
    .param p1    # Lbike/smarthalo/sdk/models/DeviceInformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 234
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->clearLatestFirmwareSubscription()V

    .line 236
    iget-object v0, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    if-ne v0, v1, :cond_0

    .line 238
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/MasterDfuController;->checkStAvailability(Lbike/smarthalo/sdk/models/DeviceInformation;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 239
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/MasterDfuController;->checkNordicAvailability(Lbike/smarthalo/sdk/models/DeviceInformation;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 237
    invoke-static {v0, p1}, Lio/reactivex/Flowable;->concat(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object p1

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/MasterDfuController;->checkNordicAvailability(Lbike/smarthalo/sdk/models/DeviceInformation;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 245
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/Flowable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->latestFirmwareSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic lambda$checkNordicAvailability$1(Lbike/smarthalo/app/controllers/MasterDfuController;Lbike/smarthalo/sdk/models/FirmwareType;Lbike/smarthalo/sdk/models/DeviceInformation;Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    invoke-direct {p0, p3, p1, p2}, Lbike/smarthalo/app/controllers/MasterDfuController;->onFirmwareInfoResponse(Lbike/smarthalo/app/models/GenericResponse;Lbike/smarthalo/sdk/models/FirmwareType;Lbike/smarthalo/sdk/models/DeviceInformation;)V

    return-void
.end method

.method public static synthetic lambda$checkStAvailability$2(Lbike/smarthalo/app/controllers/MasterDfuController;Lbike/smarthalo/sdk/models/DeviceInformation;Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    sget-object v0, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    invoke-direct {p0, p2, v0, p1}, Lbike/smarthalo/app/controllers/MasterDfuController;->onFirmwareInfoResponse(Lbike/smarthalo/app/models/GenericResponse;Lbike/smarthalo/sdk/models/FirmwareType;Lbike/smarthalo/sdk/models/DeviceInformation;)V

    return-void
.end method

.method static synthetic lambda$getAndObserveDFUAvailability$0(Lbike/smarthalo/app/models/dfu/DfuState;)Lbike/smarthalo/app/models/dfu/DfuAvailability;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    iget-object p0, p0, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    return-object p0
.end method

.method public static synthetic lambda$observeConnectionState$3(Lbike/smarthalo/app/controllers/MasterDfuController;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->resetDFUStates()V

    .line 268
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_1

    .line 271
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/MasterDfuController;->getLatestFirmwareInfo(Lbike/smarthalo/sdk/models/DeviceInformation;)V

    .line 277
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuController:Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;->onDeviceConnectionEvent(Ljava/lang/Boolean;)V

    .line 280
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuAppController:Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;->onDeviceConnectionEvent(Ljava/lang/Boolean;)V

    :cond_3
    return-void
.end method

.method private observeConnectionState()V
    .locals 2

    .line 260
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->clearConnectionStateSubscription()V

    .line 261
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 262
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$sJNb9GWW4jI5O79Ad__1o2YrqK8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$sJNb9GWW4jI5O79Ad__1o2YrqK8;-><init>(Lbike/smarthalo/app/controllers/MasterDfuController;)V

    .line 263
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onFirmwareInfoResponse(Lbike/smarthalo/app/models/GenericResponse;Lbike/smarthalo/sdk/models/FirmwareType;Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/LatestFirmwareInfo;",
            ">;",
            "Lbike/smarthalo/sdk/models/FirmwareType;",
            "Lbike/smarthalo/sdk/models/DeviceInformation;",
            ")V"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 160
    sget-object v0, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne p2, v0, :cond_0

    iget-object v0, p3, Lbike/smarthalo/sdk/models/DeviceInformation;->stmFirmwareVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    .line 161
    :goto_0
    invoke-static {v0}, Lbike/smarthalo/sdk/firmware/FirmwareVersionHelper;->getFormattedFirmwareVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast v1, Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iget-object v1, v1, Lbike/smarthalo/app/models/LatestFirmwareInfo;->firmwareVersion:Ljava/lang/String;

    invoke-static {v1}, Lbike/smarthalo/sdk/firmware/FirmwareVersionHelper;->getFormattedFirmwareVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 168
    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iput-object p1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->latestFirmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    .line 170
    new-instance p1, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {p1}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    .line 171
    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH1:Lbike/smarthalo/sdk/models/FirmwareType;

    if-eq p2, v1, :cond_3

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_NRF:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne p2, v1, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    iget-object p3, p3, Lbike/smarthalo/sdk/models/DeviceInformation;->stmFirmwareVersion:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x30

    if-ne p3, v0, :cond_2

    .line 179
    sget-object p3, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iput-object p3, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    goto :goto_3

    .line 181
    :cond_2
    sget-object p3, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Preparing:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iput-object p3, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    goto :goto_3

    :cond_3
    :goto_1
    const-string p3, "0.0.0.0"

    .line 172
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 173
    sget-object p3, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Required:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iput-object p3, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    goto :goto_3

    .line 175
    :cond_4
    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHUser;->getAuthLevel()Lbike/smarthalo/app/models/AuthLevel;

    move-result-object p3

    sget-object v0, Lbike/smarthalo/app/models/AuthLevel;->BETA:Lbike/smarthalo/app/models/AuthLevel;

    if-ne p3, v0, :cond_5

    sget-object p3, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredForTester:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    goto :goto_2

    :cond_5
    sget-object p3, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    :goto_2
    iput-object p3, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    .line 184
    :goto_3
    iput-object p2, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    .line 185
    iget-object p3, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->latestFirmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iput-object p3, p1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    .line 186
    iget-object p3, p3, Lbike/smarthalo/app/models/LatestFirmwareInfo;->firmwareDescription:Ljava/lang/String;

    iput-object p3, p1, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    .line 188
    sget-object p3, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne p2, p3, :cond_6

    .line 189
    iget-object p2, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuAppController:Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;

    invoke-interface {p2, p1}, Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;->initializeDfu(Lbike/smarthalo/app/models/dfu/DfuState;)V

    goto :goto_5

    .line 191
    :cond_6
    iget-object p2, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuController:Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;

    invoke-interface {p2, p1}, Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;->initializeDfu(Lbike/smarthalo/app/models/dfu/DfuState;)V

    goto :goto_5

    .line 193
    :cond_7
    sget-object p1, Lbike/smarthalo/sdk/models/FirmwareType;->SH1:Lbike/smarthalo/sdk/models/FirmwareType;

    if-eq p2, p1, :cond_9

    sget-object p1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_NRF:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne p2, p1, :cond_8

    goto :goto_4

    .line 195
    :cond_8
    sget-object p1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    if-ne p2, p1, :cond_a

    .line 196
    new-instance p1, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {p1}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/MasterDfuController;->updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    goto :goto_5

    .line 194
    :cond_9
    :goto_4
    new-instance p1, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {p1}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/MasterDfuController;->updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    :cond_a
    :goto_5
    return-void
.end method

.method private resetDFUStates()V
    .locals 1

    .line 409
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 410
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 411
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->updateGlobalDfuState()V

    return-void
.end method

.method private sendCompletionAnalytics()V
    .locals 3

    .line 400
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v2, v2, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iget-object v2, v2, Lbike/smarthalo/app/models/LatestFirmwareInfo;->firmwareVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection;->getDfuCompletedEvent(Lbike/smarthalo/sdk/models/FirmwareType;Ljava/lang/String;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_1

    .line 404
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareType:Lbike/smarthalo/sdk/models/FirmwareType;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v2, v2, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iget-object v2, v2, Lbike/smarthalo/app/models/LatestFirmwareInfo;->firmwareVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection;->getDfuCompletedEvent(Lbike/smarthalo/sdk/models/FirmwareType;Ljava/lang/String;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    :cond_1
    return-void
.end method

.method private updateGlobalDfuState()V
    .locals 6

    .line 331
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/dfu/DfuState;-><init>()V

    .line 335
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->sendCompletionAnalytics()V

    .line 338
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v1, v2, :cond_0

    .line 339
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->getCopy()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 342
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v1, v2, :cond_2

    .line 344
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->getCopy()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 348
    :cond_2
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 349
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 352
    :goto_0
    iget-object v4, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v4, v4, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v5, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v4, v5, :cond_4

    .line 353
    iget-object v4, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget v4, v4, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    :cond_4
    if-lez v2, :cond_5

    .line 358
    div-int/2addr v1, v2

    .line 359
    iput v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    .line 363
    :cond_5
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq v1, v2, :cond_6

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v2, v2, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v2, v2, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->description:Ljava/lang/String;

    .line 368
    :cond_6
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne v1, v2, :cond_7

    .line 369
    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    .line 372
    :cond_7
    iput-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 373
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->dfuStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-virtual {v1, v2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne v1, v2, :cond_8

    .line 377
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuAppController:Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;->installTransferredFirmware()V

    .line 381
    :cond_8
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v1, v2, :cond_9

    .line 382
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuController:Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;->startDfu()V

    .line 386
    :cond_9
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v1, v1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v1, v2, :cond_a

    .line 387
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendLogoAnimation()V

    .line 391
    :cond_a
    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_b

    .line 392
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "POSTPONED_FIRMWARE_UPDATE_TIME"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->removeItem(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "NEXT_FIRMWARE_UPDATE_NOTIF_TIME"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->removeItem(Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public finalizeDfu()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->resetDFUStates()V

    return-void
.end method

.method public forceFetchNordicDfuAvailability(Lbike/smarthalo/sdk/models/HardwareVersion;)V
    .locals 9

    .line 215
    new-instance v8, Lbike/smarthalo/sdk/models/DeviceInformation;

    const-string v1, "0.0.0.0"

    const-string v2, "0.0.0.0"

    const-string v3, "0.0.0.0"

    const-string v4, "0.0.0.0"

    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/sdk/models/DeviceInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/sdk/models/HardwareVersion;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceSerials;)V

    .line 223
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->clearLatestFirmwareSubscription()V

    .line 224
    invoke-direct {p0, v8}, Lbike/smarthalo/app/controllers/MasterDfuController;->checkNordicAvailability(Lbike/smarthalo/sdk/models/DeviceInformation;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Flowable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->latestFirmwareSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getAndObserveDFUAvailability()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/dfu/DfuAvailability;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->dfuStateSource:Lio/reactivex/processors/FlowableProcessor;

    sget-object v1, Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$iOFHzKTH_qabPULddV8BCg3jXig;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$MasterDfuController$iOFHzKTH_qabPULddV8BCg3jXig;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveGlobalDfuState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/dfu/DfuState;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->dfuStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method

.method public getGlobalDfuState()Lbike/smarthalo/app/models/dfu/DfuState;
    .locals 1

    .line 305
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    return-object v0
.end method

.method public getLatestFirmware()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->latestFirmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    iget-object v0, v0, Lbike/smarthalo/app/models/LatestFirmwareInfo;->firmwareUrl:Ljava/lang/String;

    const-string v2, ".zip"

    .line 256
    invoke-interface {v1, v0, v2}, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;->getLatestFirmware(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getNordicDfuState()Lbike/smarthalo/app/models/dfu/DfuState;
    .locals 1

    .line 310
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    return-object v0
.end method

.method public getStmDfuState()Lbike/smarthalo/app/models/dfu/DfuState;
    .locals 1

    .line 321
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    return-object v0
.end method

.method public onDispose()V
    .locals 1

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuAppController:Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;->onDispose()V

    .line 124
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuController:Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;->onDispose()V

    .line 125
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->clearConnectionStateSubscription()V

    .line 126
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->clearLatestFirmwareSubscription()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 116
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuAppController:Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;->onStart()V

    .line 117
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuController:Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;->onStart()V

    .line 118
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->observeConnectionState()V

    return-void
.end method

.method public performNextDfuStep()V
    .locals 2

    .line 294
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 295
    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->isNordic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuController:Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;->startDfu()V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->globalDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 298
    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->isSTM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuAppController:Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;->installTransferredFirmware()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->nordicDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 316
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->updateGlobalDfuState()V

    return-void
.end method

.method public updateStmDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lbike/smarthalo/app/controllers/MasterDfuController;->stmDfuState:Lbike/smarthalo/app/models/dfu/DfuState;

    .line 327
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/MasterDfuController;->updateGlobalDfuState()V

    return-void
.end method
