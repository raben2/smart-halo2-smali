.class public Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;
.super Ljava/lang/Object;
.source "ActivityCloudManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityCloudManager"


# instance fields
.field private activityApi:Lbike/smarthalo/app/api/ActivityApi;

.field private authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

.field private consumerToken:Ljava/lang/String;

.field private keyManager:Lbike/smarthalo/app/managers/KeyManager;

.field private userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lbike/smarthalo/app/api/ActivityApi;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/ActivityApi;

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->activityApi:Lbike/smarthalo/app/api/ActivityApi;

    .line 38
    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 39
    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 40
    invoke-virtual {p2}, Lbike/smarthalo/app/managers/KeyManager;->getAppConsumerToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->consumerToken:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-void
.end method

.method public static buildManager(Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;
    .locals 1

    .line 45
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;-><init>(Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    return-object v0
.end method

.method static synthetic lambda$sendConnectionActivity$0(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 90
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public sendConnectionActivity(Lbike/smarthalo/sdk/models/DeviceInformation;Ljava/lang/String;Lbike/smarthalo/app/models/DeviceState;)Lio/reactivex/Single;
    .locals 3
    .param p1    # Lbike/smarthalo/sdk/models/DeviceInformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/models/DeviceState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/sdk/models/DeviceInformation;",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/models/DeviceState;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 52
    iget-object v2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 56
    :cond_0
    new-instance v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;

    invoke-direct {v2}, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;-><init>()V

    .line 57
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$authLevel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->userAuthLevel:Ljava/lang/String;

    const-string v1, "1.18.0 (646)"

    .line 58
    iput-object v1, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->appVersion:Ljava/lang/String;

    const-string v1, "Android"

    .line 59
    iput-object v1, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->phoneOS:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v1

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/DeviceModel;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->deviceModel:Ljava/lang/String;

    .line 61
    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->phoneOSVersion:Ljava/lang/String;

    .line 62
    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getPhoneVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->phoneModel:Ljava/lang/String;

    .line 63
    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->deviceId:Ljava/lang/String;

    .line 65
    iget-object p2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

    invoke-virtual {p2}, Lbike/smarthalo/sdk/models/HardwareVersion;->getStringValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->hardwareVersion:Ljava/lang/String;

    .line 66
    iget-object p2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->nordicFirmware:Ljava/lang/String;

    .line 67
    iget-object p2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicBootloaderVersion:Ljava/lang/String;

    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->nordicBootloader:Ljava/lang/String;

    .line 68
    iget-object p2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->stmFirmwareVersion:Ljava/lang/String;

    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->stmFirmware:Ljava/lang/String;

    .line 69
    iget-object p2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->stmBootloaderVersion:Ljava/lang/String;

    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->stmBootloader:Ljava/lang/String;

    .line 70
    iget-object p2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->accelerometer:Ljava/lang/String;

    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->accelerometer:Ljava/lang/String;

    .line 72
    iget-object p2, p3, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->batteryStateOfCharge:Ljava/lang/Integer;

    .line 73
    iget-boolean p2, p3, Lbike/smarthalo/app/models/DeviceState;->isUSBPlugged:Z

    iput-boolean p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->batteryInCharge:Z

    .line 75
    iget-object p2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object p2, p2, Lbike/smarthalo/sdk/models/DeviceSerials;->product:Ljava/lang/String;

    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->productSerial:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object p2

    sget-object p3, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne p2, p3, :cond_1

    .line 77
    iget-object p2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object p2, p2, Lbike/smarthalo/sdk/models/DeviceSerials;->pcba:Ljava/lang/String;

    iput-object p2, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->pcbaSerial:Ljava/lang/String;

    .line 78
    iget-object p2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object p2, p2, Lbike/smarthalo/sdk/models/DeviceSerials;->lock:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 79
    iget-object p1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object p1, p1, Lbike/smarthalo/sdk/models/DeviceSerials;->lock:Ljava/lang/String;

    iput-object p1, v2, Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;->lockSerial:Ljava/lang/String;

    .line 83
    :cond_1
    new-instance p1, Lbike/smarthalo/app/api/requests/ActivityRequest;

    invoke-direct {p1}, Lbike/smarthalo/app/api/requests/ActivityRequest;-><init>()V

    .line 84
    iput-object v2, p1, Lbike/smarthalo/app/api/requests/ActivityRequest;->attributes:Lbike/smarthalo/app/api/requests/ConnectionActivityRequest;

    const-string p2, "device_connection"

    .line 85
    iput-object p2, p1, Lbike/smarthalo/app/api/requests/ActivityRequest;->type:Ljava/lang/String;

    .line 87
    iget-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->activityApi:Lbike/smarthalo/app/api/ActivityApi;

    iget-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->consumerToken:Ljava/lang/String;

    new-instance v1, Lbike/smarthalo/app/api/requests/GenericApiPayload;

    invoke-direct {v1, p1}, Lbike/smarthalo/app/api/requests/GenericApiPayload;-><init>(Ljava/lang/Object;)V

    .line 88
    invoke-interface {p2, p3, v0, v1}, Lbike/smarthalo/app/api/ActivityApi;->sendConnectionActivity(Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/api/requests/GenericApiPayload;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;

    .line 89
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ActivityCloudManager$OqIkVnMmy0-vc90uqnRfy3LY5MU;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ActivityCloudManager$OqIkVnMmy0-vc90uqnRfy3LY5MU;

    .line 90
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
