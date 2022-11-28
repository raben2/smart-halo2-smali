.class public Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;
.super Ljava/lang/Object;
.source "FirmwareCloudManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "FirmwareCloudManager"


# instance fields
.field private authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

.field private consumerToken:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private firmwareApi:Lbike/smarthalo/app/api/FirmwareApi;

.field private keyManager:Lbike/smarthalo/app/managers/KeyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->context:Landroid/content/Context;

    .line 40
    const-class p1, Lbike/smarthalo/app/api/FirmwareApi;

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/FirmwareApi;

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->firmwareApi:Lbike/smarthalo/app/api/FirmwareApi;

    .line 41
    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 42
    iput-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 43
    invoke-virtual {p3}, Lbike/smarthalo/app/managers/KeyManager;->getAppConsumerToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->consumerToken:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$getLatestFirmware$2(Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;Ljava/lang/String;Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "dfu-"

    .line 75
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 76
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/ResponseBody;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p2

    invoke-static {p2, p1}, Lbike/smarthalo/app/helpers/SHFileHelper;->getFileFromBytes([BLjava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 78
    :cond_0
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p1
.end method

.method static synthetic lambda$getLatestFirmware$3(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$getLatestFirmwareBytes$4(Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 93
    :cond_0
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$getLatestFirmwareBytes$5(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$getLatestFirmwareBytes$6(Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;Lbike/smarthalo/app/models/GenericResponse;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, Lbike/smarthalo/app/models/LatestFirmwareInfo;

    iget-object p1, p1, Lbike/smarthalo/app/models/LatestFirmwareInfo;->firmwareUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->getLatestFirmwareBytes(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getLatestFirmwareBytes$7(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$getLatestFirmwareInfo$0(Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/api/responses/GenericApiResponse;

    invoke-virtual {v0}, Lbike/smarthalo/app/api/responses/GenericApiResponse;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/api/responses/GenericApiResponse;

    invoke-virtual {p0}, Lbike/smarthalo/app/api/responses/GenericApiResponse;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 62
    :cond_0
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$getLatestFirmwareInfo$1(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getLatestFirmware(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->firmwareApi:Lbike/smarthalo/app/api/FirmwareApi;

    .line 72
    invoke-interface {v0, p1}, Lbike/smarthalo/app/api/FirmwareApi;->getLatestFirmware(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$yq8pj5YYDwHCHBC6eU6jocnSY5c;

    invoke-direct {v0, p0, p2}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$yq8pj5YYDwHCHBC6eU6jocnSY5c;-><init>(Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 81
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$QLokVFfxwMv9etuQcGWE4V8-Dt8;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$QLokVFfxwMv9etuQcGWE4V8-Dt8;

    .line 82
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getLatestFirmwareBytes(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "[B>;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->firmwareApi:Lbike/smarthalo/app/api/FirmwareApi;

    .line 88
    invoke-interface {v0, p1}, Lbike/smarthalo/app/api/FirmwareApi;->getLatestFirmware(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$Z0L6Cwo01E079tCTgV6ikNQFvxY;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$Z0L6Cwo01E079tCTgV6ikNQFvxY;

    .line 89
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 96
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$FQ-pN1LzscZu10as10YnM4fuuvI;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$FQ-pN1LzscZu10as10YnM4fuuvI;

    .line 97
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getLatestFirmwareBytes(Ljava/lang/String;Lbike/smarthalo/sdk/models/FirmwareType;)Lio/reactivex/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/sdk/models/FirmwareType;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "[B>;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->getLatestFirmwareInfo(Ljava/lang/String;Lbike/smarthalo/sdk/models/FirmwareType;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$z0Yl9K0ZQ-rnii5oVb3Y-sdGWqM;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$z0Yl9K0ZQ-rnii5oVb3Y-sdGWqM;-><init>(Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;)V

    .line 103
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 109
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$FeRnMHhH0PBxNIzieOjgls8Gx-Q;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$FeRnMHhH0PBxNIzieOjgls8Gx-Q;

    .line 110
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getLatestFirmwareInfo(Ljava/lang/String;Lbike/smarthalo/sdk/models/FirmwareType;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/sdk/models/FirmwareType;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/LatestFirmwareInfo;",
            ">;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->firmwareApi:Lbike/smarthalo/app/api/FirmwareApi;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;->consumerToken:Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Lbike/smarthalo/sdk/models/FirmwareType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, v0, p1, p2}, Lbike/smarthalo/app/api/FirmwareApi;->getLatestFirmwareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$GeWQNihDYkszCpTDEImgbtCiHlY;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$GeWQNihDYkszCpTDEImgbtCiHlY;

    .line 56
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 65
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$DscdUFmX695EpV1l7kBvY_Q8d9g;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FirmwareCloudManager$DscdUFmX695EpV1l7kBvY_Q8d9g;

    .line 66
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
