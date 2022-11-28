.class public Lbike/smarthalo/app/controllers/NordicDfuController;
.super Ljava/lang/Object;
.source "NordicDfuController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;


# static fields
.field private static final BOOTLOADER_TIMEOUT:J = 0x4e20L

.field private static final FIRMWARE_UPDATE_TIME_OUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "NordicDfuController"


# instance fields
.field private bootloaderSubscription:Lio/reactivex/disposables/Disposable;

.field private bootloaderTimeoutSubscription:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field dfuProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

.field private dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

.field private fetchDfuAvailabilityContract:Lbike/smarthalo/app/controllers/controllerContracts/FetchDfuAvailabilityContract;

.field private firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

.field private firmwareDownloadSubscription:Lio/reactivex/disposables/Disposable;

.field private hasRequestedBootloader:Z

.field private latestBootloaderAddressFound:Ljava/lang/String;

.field private latestFirmwareFile:Ljava/io/File;

.field private nordicDfuServiceController:Lno/nordicsemi/android/dfu/DfuServiceController;

.field private reconnectionTimeoutSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;Lbike/smarthalo/app/controllers/controllerContracts/FetchDfuAvailabilityContract;Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->hasRequestedBootloader:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->latestBootloaderAddressFound:Ljava/lang/String;

    .line 140
    new-instance v0, Lbike/smarthalo/app/controllers/NordicDfuController$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/NordicDfuController$1;-><init>(Lbike/smarthalo/app/controllers/NordicDfuController;)V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    .line 75
    iput-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 76
    iput-object p2, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    .line 77
    iput-object p3, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    .line 78
    iput-object p4, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->fetchDfuAvailabilityContract:Lbike/smarthalo/app/controllers/controllerContracts/FetchDfuAvailabilityContract;

    .line 79
    iput-object p5, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/controllers/NordicDfuController;Lbike/smarthalo/app/models/dfu/DfuStepType;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/controllers/NordicDfuController;->updateDFUStateStepTypeAndProgress(Lbike/smarthalo/app/models/dfu/DfuStepType;I)V

    return-void
.end method

.method static synthetic access$102(Lbike/smarthalo/app/controllers/NordicDfuController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->latestBootloaderAddressFound:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lbike/smarthalo/app/controllers/NordicDfuController;Lbike/smarthalo/app/models/dfu/DfuStepType;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->updateDFUStateStepType(Lbike/smarthalo/app/models/dfu/DfuStepType;)V

    return-void
.end method

.method static synthetic access$300(Lbike/smarthalo/app/controllers/NordicDfuController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->clearReconnectionTimeoutSubscription()V

    return-void
.end method

.method static synthetic access$402(Lbike/smarthalo/app/controllers/NordicDfuController;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 46
    iput-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->reconnectionTimeoutSubscription:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$500(Lbike/smarthalo/app/controllers/NordicDfuController;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lbike/smarthalo/app/controllers/NordicDfuController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lbike/smarthalo/app/controllers/NordicDfuController;)Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;
    .locals 0

    .line 46
    iget-object p0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    return-object p0
.end method

.method public static buildController(Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;Lbike/smarthalo/app/controllers/controllerContracts/FetchDfuAvailabilityContract;Landroid/content/Context;)Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;
    .locals 7

    .line 88
    new-instance v6, Lbike/smarthalo/app/controllers/NordicDfuController;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/controllers/NordicDfuController;-><init>(Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;Lbike/smarthalo/app/controllers/controllerContracts/FetchDfuAvailabilityContract;Landroid/content/Context;)V

    return-object v6
.end method

.method private clearBootloaderSubscription()V
    .locals 1

    .line 120
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->bootloaderSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->bootloaderSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearBootloaderTimeoutSubscription()V
    .locals 1

    .line 127
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->bootloaderTimeoutSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->bootloaderTimeoutSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearFirmwareDownloadSubscription()V
    .locals 1

    .line 113
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->firmwareDownloadSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->firmwareDownloadSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearReconnectionTimeoutSubscription()V
    .locals 1

    .line 134
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->reconnectionTimeoutSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->reconnectionTimeoutSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private initiateDfuService(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .line 313
    new-instance v0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;-><init>(Ljava/lang/String;)V

    const-string v1, "SmartHalo"

    .line 314
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setDeviceName(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    .line 315
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->setZip(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    .line 316
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_0

    .line 317
    iget-object p2, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->context:Landroid/content/Context;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->createDfuNotificationChannel(Landroid/content/Context;)V

    .line 320
    :cond_0
    sget-object p2, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-direct {p0, p2}, Lbike/smarthalo/app/controllers/NordicDfuController;->updateDFUStateStepType(Lbike/smarthalo/app/models/dfu/DfuStepType;)V

    .line 321
    sget-object p2, Lbike/smarthalo/app/controllers/NordicDfuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting dfu service with address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->context:Landroid/content/Context;

    const-class p2, Lbike/smarthalo/app/services/SHDFUService;

    invoke-virtual {v0, p1, p2}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->start(Landroid/content/Context;Ljava/lang/Class;)Lno/nordicsemi/android/dfu/DfuServiceController;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->nordicDfuServiceController:Lno/nordicsemi/android/dfu/DfuServiceController;

    return-void
.end method

.method public static synthetic lambda$observeBootloaderInfo$1(Lbike/smarthalo/app/controllers/NordicDfuController;Lbike/smarthalo/app/models/BootloaderInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    sget-object v0, Lbike/smarthalo/app/controllers/NordicDfuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bootloader detected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lbike/smarthalo/app/models/BootloaderInfo;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getNordicDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 256
    iget-boolean v1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->hasRequestedBootloader:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->hasRequestedBootloader:Z

    .line 258
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->clearBootloaderTimeoutSubscription()V

    .line 259
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->latestFirmwareFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 260
    iget-object p1, p1, Lbike/smarthalo/app/models/BootloaderInfo;->address:Ljava/lang/String;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->latestFirmwareFile:Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/controllers/NordicDfuController;->initiateDfuService(Ljava/lang/String;Ljava/io/File;)V

    const/4 p1, 0x0

    .line 261
    iput-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->latestFirmwareFile:Ljava/io/File;

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->latestBootloaderAddressFound:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_1

    .line 266
    iget-object v0, p1, Lbike/smarthalo/app/models/BootloaderInfo;->address:Ljava/lang/String;

    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->latestBootloaderAddressFound:Ljava/lang/String;

    .line 267
    iget-object p1, p1, Lbike/smarthalo/app/models/BootloaderInfo;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Lbike/smarthalo/sdk/models/HardwareVersion;->blDeviceName(Ljava/lang/String;)Lbike/smarthalo/sdk/models/HardwareVersion;

    move-result-object p1

    .line 268
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->fetchDfuAvailabilityContract:Lbike/smarthalo/app/controllers/controllerContracts/FetchDfuAvailabilityContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/FetchDfuAvailabilityContract;->forceFetchNordicDfuAvailability(Lbike/smarthalo/sdk/models/HardwareVersion;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$observeBootloaderInfo$2(Lbike/smarthalo/app/controllers/NordicDfuController;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-static {}, Lbike/smarthalo/app/models/dfu/DfuState;->defaultError()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

.method public static synthetic lambda$requestBootloader$3(Lbike/smarthalo/app/controllers/NordicDfuController;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    iget-boolean p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->hasRequestedBootloader:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->hasRequestedBootloader:Z

    .line 300
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->updateDFUStateStepType(Lbike/smarthalo/app/models/dfu/DfuStepType;)V

    .line 301
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {p1}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object p1

    .line 302
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device bootloader : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/BleDevice;->getBootloaderAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 308
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "Bootloader Time out"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$startDfu$0(Lbike/smarthalo/app/controllers/NordicDfuController;Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->onFirmwareFileDownloaded(Ljava/io/File;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-static {}, Lbike/smarthalo/app/models/dfu/DfuState;->defaultError()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    :goto_0
    return-void
.end method

.method private observeBootloaderInfo()V
    .locals 3

    .line 248
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->clearBootloaderSubscription()V

    .line 249
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveBootloaderInfo()Lio/reactivex/Flowable;

    move-result-object v0

    .line 250
    sget-object v1, Lbike/smarthalo/app/controllers/-$$Lambda$a_id8lS-x2eAuRu3dz-rpUP8sUs;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$a_id8lS-x2eAuRu3dz-rpUP8sUs;

    .line 251
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$Qpk76KtNuL2CSN09G5m5wi_4D60;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$Qpk76KtNuL2CSN09G5m5wi_4D60;-><init>(Lbike/smarthalo/app/controllers/NordicDfuController;)V

    new-instance v2, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$G4Hb2U8kAfrCz7vzldw2L9YNhJA;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$G4Hb2U8kAfrCz7vzldw2L9YNhJA;-><init>(Lbike/smarthalo/app/controllers/NordicDfuController;)V

    .line 252
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->bootloaderSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onFirmwareFileDownloaded(Ljava/io/File;)V
    .locals 2

    .line 276
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloaded:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/NordicDfuController;->updateDFUStateStepType(Lbike/smarthalo/app/models/dfu/DfuStepType;)V

    .line 278
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getNordicDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 279
    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Required:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->latestBootloaderAddressFound:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->initiateDfuService(Ljava/lang/String;Ljava/io/File;)V

    return-void

    .line 284
    :cond_0
    iput-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->latestFirmwareFile:Ljava/io/File;

    .line 285
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->requestBootloader()V

    return-void
.end method

.method private requestBootloader()V
    .locals 3

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->hasRequestedBootloader:Z

    .line 290
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->requestBootloader()V

    .line 292
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->clearBootloaderTimeoutSubscription()V

    .line 293
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4e20

    .line 294
    invoke-static {v1, v2, v0}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$1djjwRIWZQs7Z4AI8vVNnUyM06A;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$1djjwRIWZQs7Z4AI8vVNnUyM06A;-><init>(Lbike/smarthalo/app/controllers/NordicDfuController;)V

    .line 295
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->bootloaderTimeoutSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private updateDFUStateStepType(Lbike/smarthalo/app/models/dfu/DfuStepType;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getNordicDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 327
    iput-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 328
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

.method private updateDFUStateStepTypeAndProgress(Lbike/smarthalo/app/models/dfu/DfuStepType;I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getNordicDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 333
    iput-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 334
    iput p2, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepProgress:I

    .line 335
    iget-object p1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 241
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->nordicDfuServiceController:Lno/nordicsemi/android/dfu/DfuServiceController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/DfuServiceController;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->nordicDfuServiceController:Lno/nordicsemi/android/dfu/DfuServiceController;

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/DfuServiceController;->abort()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->nordicDfuServiceController:Lno/nordicsemi/android/dfu/DfuServiceController;

    :cond_0
    return-void
.end method

.method public initializeDfu(Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 1

    .line 217
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 218
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method

.method public onDeviceConnectionEvent(Ljava/lang/Boolean;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getNordicDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lbike/smarthalo/app/models/dfu/DfuState;->isNordic()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 346
    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne p1, v1, :cond_1

    .line 347
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->clearReconnectionTimeoutSubscription()V

    .line 348
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->updateDFUStateStepType(Lbike/smarthalo/app/models/dfu/DfuStepType;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloaded:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne p1, v1, :cond_2

    .line 353
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->requestBootloader()V

    goto :goto_0

    .line 354
    :cond_2
    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq p1, v0, :cond_4

    .line 355
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->updateDFUStateStepType(Lbike/smarthalo/app/models/dfu/DfuStepType;)V

    goto :goto_0

    .line 357
    :cond_3
    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloaded:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq p1, v1, :cond_4

    iget-object p1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-eq p1, v0, :cond_4

    .line 358
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->updateDFUStateStepType(Lbike/smarthalo/app/models/dfu/DfuStepType;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDispose()V
    .locals 2

    .line 104
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->unregisterProgressListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    .line 105
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->clearFirmwareDownloadSubscription()V

    .line 106
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->clearBootloaderSubscription()V

    .line 107
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->clearReconnectionTimeoutSubscription()V

    .line 109
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->cancel()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 98
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuProgressListener:Lno/nordicsemi/android/dfu/DfuProgressListener;

    invoke-static {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->registerProgressListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    .line 99
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->observeBootloaderInfo()V

    return-void
.end method

.method public startDfu()V
    .locals 3

    .line 223
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/NordicDfuController;->clearFirmwareDownloadSubscription()V

    .line 224
    iget-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->getNordicDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    .line 225
    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloading:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v1, v0, Lbike/smarthalo/app/models/dfu/DfuState;->stepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 226
    iget-object v1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->dfuStateContract:Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;

    invoke-interface {v1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/DfuStateContract;->updateNordicDfuState(Lbike/smarthalo/app/models/dfu/DfuState;)V

    .line 228
    iget-object v1, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    iget-object v0, v0, Lbike/smarthalo/app/models/dfu/DfuState;->firmwareInfo:Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iget-object v0, v0, Lbike/smarthalo/app/models/LatestFirmwareInfo;->firmwareUrl:Ljava/lang/String;

    const-string v2, ".zip"

    .line 229
    invoke-interface {v1, v0, v2}, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;->getLatestFirmware(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$im8yrCuk-5bHIi4bK21MzWM4AYc;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$im8yrCuk-5bHIi4bK21MzWM4AYc;-><init>(Lbike/smarthalo/app/controllers/NordicDfuController;)V

    .line 230
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/NordicDfuController;->firmwareDownloadSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method
