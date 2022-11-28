.class public Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;
.super Ljava/lang/Object;
.source "UserCloudManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/IUserCloudManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;,
        Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;,
        Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;
    }
.end annotation


# static fields
.field private static final EMAIL_AVAILABLE:Ljava/lang/String; = "email available"

.field private static final TAG:Ljava/lang/String; = "UserCloudManager"


# instance fields
.field private authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

.field private configsApi:Lbike/smarthalo/app/api/SHUserDeviceConfigsApi;

.field private consumerToken:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceConnectionsApi:Lbike/smarthalo/app/api/SHDeviceConnectionsApi;

.field private favouritesApi:Lbike/smarthalo/app/api/SHUserFavouritesApi;

.field private keyManager:Lbike/smarthalo/app/managers/KeyManager;

.field private settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

.field private userApi:Lbike/smarthalo/app/api/SHUserApi;

.field private userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->context:Landroid/content/Context;

    .line 75
    const-class p1, Lbike/smarthalo/app/api/SHUserApi;

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/SHUserApi;

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userApi:Lbike/smarthalo/app/api/SHUserApi;

    .line 76
    const-class p1, Lbike/smarthalo/app/api/SHUserFavouritesApi;

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/SHUserFavouritesApi;

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->favouritesApi:Lbike/smarthalo/app/api/SHUserFavouritesApi;

    .line 77
    const-class p1, Lbike/smarthalo/app/api/SHUserDeviceConfigsApi;

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/SHUserDeviceConfigsApi;

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->configsApi:Lbike/smarthalo/app/api/SHUserDeviceConfigsApi;

    .line 78
    const-class p1, Lbike/smarthalo/app/api/SHDeviceConnectionsApi;

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/SHDeviceConnectionsApi;

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->deviceConnectionsApi:Lbike/smarthalo/app/api/SHDeviceConnectionsApi;

    .line 79
    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 80
    iput-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 81
    invoke-virtual {p3}, Lbike/smarthalo/app/managers/KeyManager;->getAppConsumerToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->consumerToken:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 83
    iput-object p6, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .locals 0

    .line 51
    iget-object p0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-object p0
.end method

.method static synthetic access$100(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;)Lretrofit2/Callback;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getFavouriteChangeCallback(Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;)Lretrofit2/Callback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->deleteUserFavorite(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method

.method private createNewFavorite(Ljava/lang/String;Ljava/lang/Integer;Lbike/smarthalo/app/models/UserFavourite;)Lretrofit2/Call;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v9, Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;

    invoke-virtual {p3}, Lbike/smarthalo/app/models/UserFavourite;->getFavouriteType()Lbike/smarthalo/app/models/FavouriteType;

    move-result-object v2

    invoke-virtual {p3}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$label()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$latitude()D

    move-result-wide v5

    invoke-virtual {p3}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$longitude()D

    move-result-wide v7

    move-object v0, v9

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;-><init>(Ljava/lang/Integer;Lbike/smarthalo/app/models/FavouriteType;Ljava/lang/String;Ljava/lang/String;DD)V

    .line 257
    iget-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->favouritesApi:Lbike/smarthalo/app/api/SHUserFavouritesApi;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->consumerToken:Ljava/lang/String;

    invoke-interface {p3, p1, v0, p2, v9}, Lbike/smarthalo/app/api/SHUserFavouritesApi;->createUserFavourite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lbike/smarthalo/app/api/requests/SHCreateFavouriteRequest;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method private deleteUserFavorite(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->favouritesApi:Lbike/smarthalo/app/api/SHUserFavouritesApi;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->consumerToken:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2, p3}, Lbike/smarthalo/app/api/SHUserFavouritesApi;->deleteUserFavourite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method private getCreateAndDeleteCallback(Ljava/lang/String;Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Callback;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/api/RequestCallback;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v6, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$4;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lbike/smarthalo/app/api/RequestCallback;)V

    return-object v6
.end method

.method private getFavouriteChangeCallback(Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;)Lretrofit2/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/api/RequestCallback;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;

    invoke-direct {v0, p0, p2, p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$3;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Ljava/lang/Integer;Lbike/smarthalo/app/api/RequestCallback;)V

    return-object v0
.end method

.method static synthetic lambda$checkEmailAvailability$18(Lretrofit2/Response;)Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "email available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->Available:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    goto :goto_0

    :cond_0
    sget-object p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->NotAvailable:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    :goto_0
    return-object p0

    .line 396
    :cond_1
    sget-object p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->Error:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    return-object p0
.end method

.method static synthetic lambda$checkEmailAvailability$19(Ljava/lang/Throwable;)Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 400
    sget-object p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->Error:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    return-object p0
.end method

.method static synthetic lambda$forgotPassword$20(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 408
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getUser$2(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHUser;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->saveUser(Lbike/smarthalo/app/models/SHUser;)V

    .line 141
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 143
    :cond_0
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p1
.end method

.method static synthetic lambda$getUser$3(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$getUserDeviceConfigs$4(Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/api/responses/SHUserDeviceConfigsResponse;

    iget-boolean v0, v0, Lbike/smarthalo/app/api/responses/SHUserDeviceConfigsResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    .line 276
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/api/responses/SHUserDeviceConfigsResponse;

    iget-object p0, p0, Lbike/smarthalo/app/api/responses/SHUserDeviceConfigsResponse;->userConfigs:Ljava/util/HashMap;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$getUserDeviceConfigs$5(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$loginAndInitializeUser$10(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$loginAndInitializeUser$9(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/GenericResponse;)Lio/reactivex/SingleSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->updateLocalValuesWithCloudConfigs(I)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$FYgHw59TraIe5ngQTaX1a4wlT-o;

    invoke-direct {v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$FYgHw59TraIe5ngQTaX1a4wlT-o;-><init>(Lbike/smarthalo/app/models/GenericResponse;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 312
    :cond_0
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$null$8(Lbike/smarthalo/app/models/GenericResponse;Lbike/smarthalo/app/models/Ping;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    iget-object p0, p0, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic lambda$signUpAndInitializeUser$11(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/GenericResponse;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 324
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->initSettings(Ljava/util/HashMap;)V

    .line 327
    :cond_0
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$signUpAndInitializeUser$12(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$updateCloudConfigsWithLocalValues$13(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/SHSettings;ILbike/smarthalo/app/models/GenericResponse;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 336
    invoke-virtual {p3}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object p3, p3, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p3, Ljava/util/HashMap;

    invoke-static {p3, p1}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->getConfigsToUpdate(Ljava/util/HashMap;Lbike/smarthalo/app/models/SHSettings;)Ljava/util/HashMap;

    move-result-object p1

    .line 339
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 340
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->updaterUserDeviceConfigs(Ljava/lang/Integer;Ljava/util/HashMap;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 343
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$updateCloudConfigsWithLocalValues$14(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 345
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$updateLocalValuesWithCloudConfigs$15(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    iget-object v1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->initSettings(Ljava/util/HashMap;)V

    goto :goto_1

    .line 354
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->initSettings()V

    :goto_1
    return-void
.end method

.method static synthetic lambda$updateLocalValuesWithCloudConfigs$16(Lbike/smarthalo/app/models/GenericResponse;)Lbike/smarthalo/app/models/Ping;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    new-instance p0, Lbike/smarthalo/app/models/Ping;

    invoke-direct {p0}, Lbike/smarthalo/app/models/Ping;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$updateLocalValuesWithCloudConfigs$17(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/Ping;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    new-instance p0, Lbike/smarthalo/app/models/Ping;

    invoke-direct {p0}, Lbike/smarthalo/app/models/Ping;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$updateUser$0(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/SHUser;Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {p2, p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->saveUser(Lbike/smarthalo/app/models/SHUser;)V

    .line 107
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    const-string p2, "ok"

    invoke-direct {p1, p2}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 109
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 113
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "name"

    .line 114
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SequelizeUniqueConstraintError"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "emailTaken"

    goto :goto_0

    :cond_1
    const-string p1, "editFailed"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "editFailed"

    .line 123
    :goto_0
    new-instance p2, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p2, p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method static synthetic lambda$updateUser$1(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    const-string v0, "error"

    invoke-direct {p0, v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method static synthetic lambda$updaterUserDeviceConfigs$6(Lretrofit2/Response;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/api/responses/BasicApiResponse;

    iget-boolean p0, p0, Lbike/smarthalo/app/api/responses/BasicApiResponse;->isSuccess:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 296
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updaterUserDeviceConfigs$7(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 301
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private updateLocalValuesWithCloudConfigs(I)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation

    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getUserDeviceConfigs(Ljava/lang/Integer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$WO1y03rZz7TU6AfDcqOJLljO9DQ;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$WO1y03rZz7TU6AfDcqOJLljO9DQ;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;)V

    .line 350
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$aldiPuBGTNKtuQxsnBu_sL7oETQ;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$aldiPuBGTNKtuQxsnBu_sL7oETQ;

    .line 357
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$kvgIFixLerQOwRUtNi5PALMTkBU;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$kvgIFixLerQOwRUtNi5PALMTkBU;

    .line 358
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkEmailAvailability(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
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
            "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userApi:Lbike/smarthalo/app/api/SHUserApi;

    new-instance v1, Lbike/smarthalo/app/api/requests/SHUserCheckEmailRequest;

    invoke-direct {v1, p1}, Lbike/smarthalo/app/api/requests/SHUserCheckEmailRequest;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-interface {v0, v1}, Lbike/smarthalo/app/api/SHUserApi;->checkEmail(Lbike/smarthalo/app/api/requests/SHUserCheckEmailRequest;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$apYEm8fZPGWvhjGNFxns6rEsjPA;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$apYEm8fZPGWvhjGNFxns6rEsjPA;

    .line 390
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 399
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s3S0Xc0CQjSnYL49IEM_hr6EYZ0;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s3S0Xc0CQjSnYL49IEM_hr6EYZ0;

    .line 400
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public forgotPassword(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userApi:Lbike/smarthalo/app/api/SHUserApi;

    new-instance v1, Lbike/smarthalo/app/api/requests/SHUserEmailRequest;

    invoke-direct {v1, p1}, Lbike/smarthalo/app/api/requests/SHUserEmailRequest;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-interface {v0, v1}, Lbike/smarthalo/app/api/SHUserApi;->forgotPassword(Lbike/smarthalo/app/api/requests/SHUserEmailRequest;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;

    .line 407
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$3HVO5rQFiBMYPnQ96GHnKBIziro;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$3HVO5rQFiBMYPnQ96GHnKBIziro;

    .line 408
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 409
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getUser()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userApi:Lbike/smarthalo/app/api/SHUserApi;

    .line 137
    invoke-interface {v1, v0}, Lbike/smarthalo/app/api/SHUserApi;->getUser(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$iMa23SYdzyuCJHDHhCILg1zWu2A;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$iMa23SYdzyuCJHDHhCILg1zWu2A;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;)V

    .line 138
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$xQ0QeycIzrXzE99gNncL7jtv_Qk;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$xQ0QeycIzrXzE99gNncL7jtv_Qk;

    .line 146
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getUserDeviceConfigs(Ljava/lang/Integer;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 267
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 270
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->configsApi:Lbike/smarthalo/app/api/SHUserDeviceConfigsApi;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->consumerToken:Ljava/lang/String;

    .line 271
    invoke-interface {v1, v0, v2, p1}, Lbike/smarthalo/app/api/SHUserDeviceConfigsApi;->getUserConfigs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$4LTcbtb7NwXoYEHsE9bv1ztIyHo;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$4LTcbtb7NwXoYEHsE9bv1ztIyHo;

    .line 272
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$qOxV2nojZZerL640tekreIB59hA;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$qOxV2nojZZerL640tekreIB59hA;

    .line 279
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getUserFavorites(Ljava/lang/Integer;Lbike/smarthalo/app/api/RequestCallback;)V
    .locals 3

    .line 175
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    .line 177
    invoke-virtual {p2, p1}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->favouritesApi:Lbike/smarthalo/app/api/SHUserFavouritesApi;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->consumerToken:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p1}, Lbike/smarthalo/app/api/SHUserFavouritesApi;->getUserFavourites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$2;

    invoke-direct {v0, p0, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$2;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/api/RequestCallback;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public loginAndInitializeUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
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
            "Lbike/smarthalo/app/models/SHUser;",
            ">;>;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 307
    invoke-interface {v0, p1, p2}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->login(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$u4vZVsZpXQtDfdgVwJfrUHWw7-c;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$u4vZVsZpXQtDfdgVwJfrUHWw7-c;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;)V

    .line 308
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 315
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$TPY5PsX3xbPlT-VPBh8VSi3N-JY;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$TPY5PsX3xbPlT-VPBh8VSi3N-JY;

    .line 316
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public resendConfirmation(Ljava/lang/String;Lbike/smarthalo/app/api/RequestCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/api/RequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "error"

    .line 152
    invoke-virtual {p2, p1}, Lbike/smarthalo/app/api/RequestCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userApi:Lbike/smarthalo/app/api/SHUserApi;

    new-instance v2, Lbike/smarthalo/app/api/requests/SHUserEmailRequest;

    invoke-direct {v2, p1}, Lbike/smarthalo/app/api/requests/SHUserEmailRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lbike/smarthalo/app/api/SHUserApi;->sendConfirm(Ljava/lang/String;Lbike/smarthalo/app/api/requests/SHUserEmailRequest;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$1;

    invoke-direct {v0, p0, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$1;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/api/RequestCallback;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public sendDeviceConnectionEvent(Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;)V
    .locals 3
    .param p1    # Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 362
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    invoke-interface {p2, v1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;->onResult(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V

    .line 367
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->deviceConnectionsApi:Lbike/smarthalo/app/api/SHDeviceConnectionsApi;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->consumerToken:Ljava/lang/String;

    .line 368
    invoke-interface {v1, v0, v2, p1}, Lbike/smarthalo/app/api/SHDeviceConnectionsApi;->sendConnectionEvent(Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$5;

    invoke-direct {v0, p0, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$5;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;)V

    .line 369
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public signUpAndInitializeUser(Lbike/smarthalo/app/api/requests/SHUserSignupRequest;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Lbike/smarthalo/app/api/requests/SHUserSignupRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/api/requests/SHUserSignupRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;>;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 322
    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->signUp(Lbike/smarthalo/app/api/requests/SHUserSignupRequest;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$SbqoY9zL1oPmwwCwtKk5qyzvjeg;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$SbqoY9zL1oPmwwCwtKk5qyzvjeg;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;)V

    .line 323
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 329
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$cw8JbYnQXMhrHtAEIJ2vkkkD9JQ;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$cw8JbYnQXMhrHtAEIJ2vkkkD9JQ;

    .line 330
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public updateCloudConfigsWithLocalValues(ILbike/smarthalo/app/models/SHSettings;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbike/smarthalo/app/models/SHSettings;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getUserDeviceConfigs(Ljava/lang/Integer;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$dEam3tPksfHDFgFYjSaoOSa6T5w;

    invoke-direct {v1, p0, p2, p1}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$dEam3tPksfHDFgFYjSaoOSa6T5w;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/SHSettings;I)V

    .line 335
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s8PGzIHLc_O7VRqxA2ZJLgKJ-MA;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$s8PGzIHLc_O7VRqxA2ZJLgKJ-MA;

    .line 345
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public updateUser(Lbike/smarthalo/app/models/SHUser;)Lio/reactivex/Single;
    .locals 7
    .param p1    # Lbike/smarthalo/app/models/SHUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHUser;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    const-string v0, "error"

    invoke-direct {p1, v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$height()Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$height()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gtz v1, :cond_1

    .line 94
    invoke-virtual {p1, v2}, Lbike/smarthalo/app/models/SHUser;->realmSet$height(Ljava/lang/Double;)V

    .line 97
    :cond_1
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$weight()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$weight()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gtz v1, :cond_2

    .line 98
    invoke-virtual {p1, v2}, Lbike/smarthalo/app/models/SHUser;->realmSet$weight(Ljava/lang/Double;)V

    .line 101
    :cond_2
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->userApi:Lbike/smarthalo/app/api/SHUserApi;

    new-instance v2, Lbike/smarthalo/app/api/requests/SHUserUpdateRequest;

    invoke-direct {v2, p1}, Lbike/smarthalo/app/api/requests/SHUserUpdateRequest;-><init>(Lbike/smarthalo/app/models/SHUser;)V

    .line 102
    invoke-interface {v1, v0, v2}, Lbike/smarthalo/app/api/SHUserApi;->updateUser(Ljava/lang/String;Lbike/smarthalo/app/api/requests/SHUserUpdateRequest;)Lio/reactivex/Single;

    move-result-object v0

    .line 103
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$C3As0-OOvx_fUjnKZBK-UGqwc0M;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$C3As0-OOvx_fUjnKZBK-UGqwc0M;-><init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/SHUser;)V

    .line 104
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$6iGLUh2JK6XbTtvFT-GG_3O3Nlw;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$6iGLUh2JK6XbTtvFT-GG_3O3Nlw;

    .line 126
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public updateUserFavourites(Ljava/lang/Integer;Lbike/smarthalo/app/models/FavouritesChangedEvent;Lbike/smarthalo/app/api/RequestCallback;)V
    .locals 3

    .line 200
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p3}, Lbike/smarthalo/app/api/RequestCallback;->onFailure()V

    return-void

    .line 206
    :cond_0
    iget-object v1, p2, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changeType:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    sget-object v2, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->addedShouldRemovePrevious:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    if-ne v1, v2, :cond_1

    .line 207
    iget-object v1, p2, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changedFavourite:Lbike/smarthalo/app/models/UserFavourite;

    invoke-direct {p0, v0, p1, v1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->createNewFavorite(Ljava/lang/String;Ljava/lang/Integer;Lbike/smarthalo/app/models/UserFavourite;)Lretrofit2/Call;

    move-result-object v1

    iget-object p2, p2, Lbike/smarthalo/app/models/FavouritesChangedEvent;->previousFavouriteToRemove:Ljava/lang/Integer;

    invoke-direct {p0, v0, p3, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getCreateAndDeleteCallback(Ljava/lang/String;Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Callback;

    move-result-object p1

    invoke-interface {v1, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v1, p2, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changeType:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    sget-object v2, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->added:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    if-ne v1, v2, :cond_2

    .line 209
    iget-object p2, p2, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changedFavourite:Lbike/smarthalo/app/models/UserFavourite;

    invoke-direct {p0, v0, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->createNewFavorite(Ljava/lang/String;Ljava/lang/Integer;Lbike/smarthalo/app/models/UserFavourite;)Lretrofit2/Call;

    move-result-object p2

    invoke-direct {p0, p3, p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getFavouriteChangeCallback(Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;)Lretrofit2/Callback;

    move-result-object p1

    invoke-interface {p2, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p2, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changeType:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    sget-object v2, Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;->deleted:Lbike/smarthalo/app/models/FavouritesChangedEvent$FavouriteChangeType;

    if-ne v1, v2, :cond_3

    .line 211
    iget-object p2, p2, Lbike/smarthalo/app/models/FavouritesChangedEvent;->changedFavourite:Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/UserFavourite;->realmGet$id()Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->deleteUserFavorite(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p2

    invoke-direct {p0, p3, p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->getFavouriteChangeCallback(Lbike/smarthalo/app/api/RequestCallback;Ljava/lang/Integer;)Lretrofit2/Callback;

    move-result-object p1

    invoke-interface {p2, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updaterUserDeviceConfigs(Ljava/lang/Integer;Ljava/util/HashMap;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 285
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 288
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->configsApi:Lbike/smarthalo/app/api/SHUserDeviceConfigsApi;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->consumerToken:Ljava/lang/String;

    new-instance v3, Lbike/smarthalo/app/api/requests/SHUserConfigsRequest;

    .line 293
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lbike/smarthalo/app/api/requests/SHUserConfigsRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 289
    invoke-interface {v1, v0, v2, p1, v3}, Lbike/smarthalo/app/api/SHUserDeviceConfigsApi;->createOrUpdateUserConfigs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lbike/smarthalo/app/api/requests/SHUserConfigsRequest;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$J3bZPSWQAi3Q17Yx7TliwEDvnOU;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$J3bZPSWQAi3Q17Yx7TliwEDvnOU;

    .line 294
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$HO5AOsYCxpTfuzF5H7_1hFhRkMs;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$HO5AOsYCxpTfuzF5H7_1hFhRkMs;

    .line 301
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
