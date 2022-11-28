.class public Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;
.super Ljava/lang/Object;
.source "StravaCloudManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;,
        Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;
    }
.end annotation


# static fields
.field private static final DUPLICATED_STRAVA_ACTIVITY_MESSAGE:Ljava/lang/String; = "duplicate"

.field private static final SECONDS_BEFORE_TOKEN_EXPIRATION_TO_RENEW:J = 0xe10L

.field private static final TAG:Ljava/lang/String; = "StravaCloudManager"

.field private static final TOKEN_REFRESH_GRANT_TYPE:Ljava/lang/String; = "refresh_token"


# instance fields
.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private apiKey:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

.field private gpxParser:Lbike/smarthalo/app/gpx/GPXParser;

.field private gson:Lcom/google/gson/Gson;

.field private keyManager:Lbike/smarthalo/app/managers/KeyManager;

.field private retrofit:Lretrofit2/Retrofit;

.field private stravaApi:Lbike/smarthalo/app/api/strava/StravaApi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/gpx/GPXParser;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://www.strava.com/"

    .line 80
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 81
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 82
    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 83
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p3}, Lretrofit2/Retrofit$Builder;->callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p3

    .line 85
    invoke-virtual {p3}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p3

    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->retrofit:Lretrofit2/Retrofit;

    .line 87
    iput-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->gpxParser:Lbike/smarthalo/app/gpx/GPXParser;

    .line 88
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->context:Landroid/content/Context;

    .line 89
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->retrofit:Lretrofit2/Retrofit;

    const-class p3, Lbike/smarthalo/app/api/strava/StravaApi;

    invoke-virtual {p1, p3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/strava/StravaApi;

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->stravaApi:Lbike/smarthalo/app/api/strava/StravaApi;

    .line 90
    iput-object p5, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 91
    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->gson:Lcom/google/gson/Gson;

    .line 92
    iput-object p6, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 93
    iput-object p7, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 95
    invoke-virtual {p5}, Lbike/smarthalo/app/managers/KeyManager;->getStravaClientId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->clientId:Ljava/lang/String;

    .line 96
    invoke-virtual {p5}, Lbike/smarthalo/app/managers/KeyManager;->getStravaKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->apiKey:Ljava/lang/String;

    return-void
.end method

.method private checkActivityAvailability(JLbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v0

    .line 243
    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->DeactivatedAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-ne p3, v1, :cond_0

    .line 244
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->DeactivatedAccount:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_3

    .line 247
    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->NoAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-ne p3, v1, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-ne p3, v1, :cond_2

    .line 252
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->Unknown:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 255
    :cond_2
    iget-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->stravaApi:Lbike/smarthalo/app/api/strava/StravaApi;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-interface {p3, p1, p2, v0}, Lbike/smarthalo/app/api/strava/StravaApi;->checkActivityStatus(JLjava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$VluzeFdfWrZ_hV4dUmmuxG843N0;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$VluzeFdfWrZ_hV4dUmmuxG843N0;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V

    .line 257
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$U5P0hxI2e9lsYPoF5xHT19kqoQc;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$U5P0hxI2e9lsYPoF5xHT19kqoQc;

    .line 258
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 259
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 248
    :cond_3
    :goto_0
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->NoAccount:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private disconnectAccount(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v0

    .line 211
    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->DeactivatedAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-ne p1, v1, :cond_0

    .line 212
    sget-object p1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Success:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 215
    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->NoAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->stravaApi:Lbike/smarthalo/app/api/strava/StravaApi;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-interface {p1, v0}, Lbike/smarthalo/app/api/strava/StravaApi;->disconnectUser(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$eI85p7U4lsmmvuR5H0_3IkgR6IQ;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$eI85p7U4lsmmvuR5H0_3IkgR6IQ;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V

    .line 223
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$xsr0GSTwW6YkycXETpQJxRHsWak;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$xsr0GSTwW6YkycXETpQJxRHsWak;

    .line 231
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 232
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 218
    :cond_2
    :goto_0
    sget-object p1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private getAndUpdateStravaLinkedAccount(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse<",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            ">;>;"
        }
    .end annotation

    .line 168
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->DeactivatedAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->NoAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object p1

    if-nez p1, :cond_1

    .line 176
    new-instance p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;

    invoke-direct {p1, p0, v2, v1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Ljava/lang/Object;Z)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 179
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->stravaApi:Lbike/smarthalo/app/api/strava/StravaApi;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-interface {v0, p1}, Lbike/smarthalo/app/api/strava/StravaApi;->getAuthenticatedAthlete(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$2VRSSEqnat5obuJnyQ3TSPLxJiQ;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$2VRSSEqnat5obuJnyQ3TSPLxJiQ;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V

    .line 181
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$dTNegHr11t4f88x71LoE9Hddr-k;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$dTNegHr11t4f88x71LoE9Hddr-k;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V

    .line 197
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 198
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 171
    :cond_2
    :goto_0
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;

    sget-object v3, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p0, v2, v1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Ljava/lang/Object;Z)V

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private getGenericStravaRideResponse(Lretrofit2/Response;Z)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ">;Z)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ">;"
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    .line 297
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 298
    sget-object p1, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->None:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    iput-object p1, v0, Lbike/smarthalo/app/api/strava/StravaRideResponse;->errorType:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    .line 299
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p2}, Lbike/smarthalo/app/analytics/fitness/AnalyticsFitness;->getTripExportedToStravaEvent(Z)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 300
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 301
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p2

    const/16 v0, 0x191

    if-ne p2, v0, :cond_1

    .line 305
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->deleteStravaLinkedAccount()V

    .line 306
    invoke-direct {p0}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->sendStravaDeactivatedNotification()V

    .line 307
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->DeactivatedAccount:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 308
    :cond_1
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p2

    const/16 v0, 0x190

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 309
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    const-class p2, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->gson:Lcom/google/gson/Gson;

    invoke-static {p1, p2, v0}, Lbike/smarthalo/app/helpers/GsonHelper;->deserializeHttpResponseBody(Lokhttp3/ResponseBody;Ljava/lang/Class;Lcom/google/gson/Gson;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    if-eqz p1, :cond_2

    .line 311
    iget-object p2, p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;->error:Ljava/lang/String;

    const-string v0, "duplicate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 312
    new-instance p2, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object v0, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->DuplicatedActivity:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p2, v0}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    .line 313
    iget-object p1, p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;->id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lbike/smarthalo/app/api/strava/StravaRideResponse;->id:Ljava/lang/String;

    .line 314
    invoke-static {p2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 316
    :cond_2
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->BadRequest:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 319
    :cond_3
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->Unknown:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$a3IkB1GqMSfiSk1FzPPnOOFLSsM(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/Single;
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->getAndUpdateStravaLinkedAccount(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$authenticateWithStrava$0(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lretrofit2/Response;)Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/strava/StravaAuthenticationResponse;

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v1, p1, Lbike/smarthalo/app/api/strava/StravaAuthenticationResponse;->accessToken:Ljava/lang/String;

    iget-object v2, p1, Lbike/smarthalo/app/api/strava/StravaAuthenticationResponse;->refreshToken:Ljava/lang/String;

    iget-wide v3, p1, Lbike/smarthalo/app/api/strava/StravaAuthenticationResponse;->expiresAt:J

    iget-object v5, p1, Lbike/smarthalo/app/api/strava/StravaAuthenticationResponse;->athlete:Lbike/smarthalo/app/api/strava/StravaAthlete;

    invoke-interface/range {v0 .. v5}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->addStravaAccount(Ljava/lang/String;Ljava/lang/String;JLbike/smarthalo/app/api/strava/StravaAthlete;)V

    .line 111
    sget-object p1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Success:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    return-object p1

    .line 114
    :cond_0
    sget-object p1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    return-object p1
.end method

.method static synthetic lambda$authenticateWithStrava$1(Ljava/lang/Throwable;)Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    sget-object p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    return-object p0
.end method

.method public static synthetic lambda$checkActivityAvailability$10(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;JLbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/SingleSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2, p3}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->checkActivityAvailability(JLbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$checkActivityAvailability$8(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->getGenericStravaRideResponse(Lretrofit2/Response;Z)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$checkActivityAvailability$9(Ljava/lang/Throwable;)Lbike/smarthalo/app/api/strava/StravaRideResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    new-instance p0, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object v0, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->Unknown:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    return-object p0
.end method

.method public static synthetic lambda$disconnectAccount$6(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lretrofit2/Response;)Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->deleteStravaLinkedAccount()V

    .line 226
    sget-object p1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Success:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    return-object p1

    .line 228
    :cond_0
    sget-object p1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    return-object p1
.end method

.method static synthetic lambda$disconnectAccount$7(Ljava/lang/Throwable;)Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 231
    sget-object p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    return-object p0
.end method

.method public static synthetic lambda$getAndUpdateStravaLinkedAccount$4(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lretrofit2/Response;)Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/strava/StravaAthlete;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateStravaAccount(Lbike/smarthalo/app/api/strava/StravaAthlete;)V

    .line 184
    new-instance p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 185
    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v0

    invoke-direct {p1, p0, v0, v1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Ljava/lang/Object;Z)V

    return-object p1

    .line 188
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0x191

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 189
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->deleteStravaLinkedAccount()V

    .line 190
    new-instance p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v2, v0}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Ljava/lang/Object;Z)V

    return-object p1

    .line 194
    :cond_1
    new-instance p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;

    invoke-direct {p1, p0, v2, v1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Ljava/lang/Object;Z)V

    return-object p1
.end method

.method public static synthetic lambda$getAndUpdateStravaLinkedAccount$5(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Ljava/lang/Throwable;)Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    new-instance p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Ljava/lang/Object;Z)V

    return-object p1
.end method

.method public static synthetic lambda$observeCreateNewActivity$14(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;ZLretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    invoke-direct {p0, p2, p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->getGenericStravaRideResponse(Lretrofit2/Response;Z)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$rc1gWjEewuv1YbV6SBuEksp1ed8(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/Single;
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->disconnectAccount(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$refreshStravaTokens$2(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lretrofit2/Response;)Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/strava/StravaAuthenticationResponse;

    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v1, p1, Lbike/smarthalo/app/api/strava/StravaAuthenticationResponse;->accessToken:Ljava/lang/String;

    iget-object v2, p1, Lbike/smarthalo/app/api/strava/StravaAuthenticationResponse;->refreshToken:Ljava/lang/String;

    iget-wide v3, p1, Lbike/smarthalo/app/api/strava/StravaAuthenticationResponse;->expiresAt:J

    invoke-interface {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateStravaAccountTokens(Ljava/lang/String;Ljava/lang/String;J)V

    .line 148
    sget-object p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->Success:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    return-object p1

    .line 150
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    const-class v0, Lbike/smarthalo/app/api/strava/StravaTokenErrorResponse;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->gson:Lcom/google/gson/Gson;

    invoke-static {p1, v0, v1}, Lbike/smarthalo/app/helpers/GsonHelper;->deserializeHttpResponseBody(Lokhttp3/ResponseBody;Ljava/lang/Class;Lcom/google/gson/Gson;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/strava/StravaTokenErrorResponse;

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Lbike/smarthalo/app/api/strava/StravaTokenErrorResponse;->isUnauthorizedTokenError()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->deleteStravaLinkedAccount()V

    .line 154
    sget-object p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->DeactivatedAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    return-object p1

    .line 158
    :cond_1
    sget-object p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    return-object p1
.end method

.method static synthetic lambda$refreshStravaTokens$3(Ljava/lang/Throwable;)Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    sget-object p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    return-object p0
.end method

.method public static synthetic lambda$sendRideToStrava$11(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lbike/smarthalo/app/models/StravaLinkedAccount;Lbike/smarthalo/app/models/SHRide;ZLbike/smarthalo/app/gpx/RideParsingResponse;)Lio/reactivex/SingleSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->observeCreateNewActivity(Lbike/smarthalo/app/models/StravaLinkedAccount;JLbike/smarthalo/app/gpx/RideParsingResponse;Z)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$sendRideToStrava$12(Ljava/lang/Throwable;)Lbike/smarthalo/app/api/strava/StravaRideResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    new-instance p0, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object v0, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->Unknown:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    return-object p0
.end method

.method public static synthetic lambda$sendRideToStrava$13(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lbike/smarthalo/app/models/SHRide;ZLbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/SingleSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    invoke-direct {p0, p1, p3, p2}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->sendRideToStrava(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;Z)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private observeCreateNewActivity(Lbike/smarthalo/app/models/StravaLinkedAccount;JLbike/smarthalo/app/gpx/RideParsingResponse;Z)Lio/reactivex/Single;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            "J",
            "Lbike/smarthalo/app/gpx/RideParsingResponse;",
            "Z)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ">;"
        }
    .end annotation

    .line 347
    iget-boolean v0, p4, Lbike/smarthalo/app/gpx/RideParsingResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    const-string v0, "multipart/form-data"

    .line 349
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    const-string v1, "ride"

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    const-string v0, "multipart/form-data"

    .line 351
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    const-string v1, "gpx"

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    const-string v0, "text/plain"

    .line 353
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iget-object v1, p4, Lbike/smarthalo/app/gpx/RideParsingResponse;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    const-string v1, "file"

    .line 354
    iget-object p4, p4, Lbike/smarthalo/app/gpx/RideParsingResponse;->file:Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v7

    const-string p4, "multipart/form-data"

    .line 355
    invoke-static {p4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    .line 357
    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->stravaApi:Lbike/smarthalo/app/api/strava/StravaApi;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$authenticationToken()Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-interface/range {v2 .. v7}, Lbike/smarthalo/app/api/strava/StravaApi;->createNewActivity(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$esAb9Lb6KnYgw3wdT2i150b5Jn8;

    invoke-direct {p2, p0, p5}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$esAb9Lb6KnYgw3wdT2i150b5Jn8;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Z)V

    .line 364
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 365
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 367
    :cond_0
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->Unknown:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private refreshStravaTokens()Lio/reactivex/Single;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->NoAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$authenticationTokenExpiration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xe10

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 138
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->stravaApi:Lbike/smarthalo/app/api/strava/StravaApi;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->apiKey:Ljava/lang/String;

    const-string v4, "refresh_token"

    invoke-virtual {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$refreshToken()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-interface {v1, v2, v3, v4, v0}, Lbike/smarthalo/app/api/strava/StravaApi;->refreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$FdomUJcdJb6NFWmkBrlMia6vZ-Y;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$FdomUJcdJb6NFWmkBrlMia6vZ-Y;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V

    .line 140
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$J7w7qr__vaTn4c26cuwkuwobJIU;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$J7w7qr__vaTn4c26cuwkuwobJIU;

    .line 160
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 161
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 164
    :cond_3
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->Success:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method private sendRideToStrava(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;Z)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;",
            "Z)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v0

    .line 270
    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->DeactivatedAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-ne p2, v1, :cond_0

    .line 271
    invoke-direct {p0}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->sendStravaDeactivatedNotification()V

    .line 272
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->DeactivatedAccount:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_3

    .line 275
    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->NoAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    if-ne p2, v1, :cond_2

    .line 280
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->Unknown:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 283
    :cond_2
    iget-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->gpxParser:Lbike/smarthalo/app/gpx/GPXParser;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->context:Landroid/content/Context;

    .line 284
    invoke-static {p1, p2, v1}, Lbike/smarthalo/app/gpx/GPXFileWriter;->observeGPXFileFromRide(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$Ty9hobBTkI4hkiMIe9c0ELz2k-8;

    invoke-direct {v1, p0, v0, p1, p3}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$Ty9hobBTkI4hkiMIe9c0ELz2k-8;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lbike/smarthalo/app/models/StravaLinkedAccount;Lbike/smarthalo/app/models/SHRide;Z)V

    .line 285
    invoke-virtual {p2, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$2KjVZR7QREOa1_70b3_eCtg8iz4;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$2KjVZR7QREOa1_70b3_eCtg8iz4;

    .line 286
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 287
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 276
    :cond_3
    :goto_0
    new-instance p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    sget-object p2, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->NoAccount:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/api/strava/StravaRideResponse;-><init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private sendStravaDeactivatedNotification()V
    .locals 10

    .line 324
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->context:Landroid/content/Context;

    const-class v2, Lbike/smarthalo/app/activities/LinkedAccountsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IS_NOTIFICATION_INTENT"

    const/4 v2, 0x1

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->context:Landroid/content/Context;

    const/16 v2, 0x7f

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 333
    iget-object v4, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->context:Landroid/content/Context;

    const-string v9, "sh_app_notification"

    const v5, 0x7f110360

    const v6, 0x7f110361

    const/16 v8, 0x7f

    invoke-static/range {v4 .. v9}, Lbike/smarthalo/app/helpers/SHNotificationHelper;->buildAndSendDefaultNotification(Landroid/content/Context;IILandroid/app/PendingIntent;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authenticateWithStrava(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->stravaApi:Lbike/smarthalo/app/api/strava/StravaApi;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->clientId:Ljava/lang/String;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->apiKey:Ljava/lang/String;

    .line 102
    invoke-interface {v0, v1, v2, p1}, Lbike/smarthalo/app/api/strava/StravaApi;->authenticateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$dcLSmxMYjdje3YQ1M5Tl3_jEbH8;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$dcLSmxMYjdje3YQ1M5Tl3_jEbH8;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V

    .line 103
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$HoqG4CfOqZJ8MWNyWUMTPFcEKZc;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$HoqG4CfOqZJ8MWNyWUMTPFcEKZc;

    .line 116
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 117
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public checkActivityAvailability(J)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->refreshStravaTokens()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$LNa0JyYOLygLtMHGhK-p03dvkdA;

    invoke-direct {v1, p0, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$LNa0JyYOLygLtMHGhK-p03dvkdA;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;J)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public disconnectAccount()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->refreshStravaTokens()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$rc1gWjEewuv1YbV6SBuEksp1ed8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$rc1gWjEewuv1YbV6SBuEksp1ed8;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getAndUpdateStravaLinkedAccount()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse<",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            ">;>;"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->refreshStravaTokens()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$a3IkB1GqMSfiSk1FzPPnOOFLSsM;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$a3IkB1GqMSfiSk1FzPPnOOFLSsM;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public sendRideToStrava(Lbike/smarthalo/app/models/SHRide;Z)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            "Z)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->refreshStravaTokens()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$1rjYQBnx9yrVxGEUYwQ-wLhQB14;

    invoke-direct {v1, p0, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$1rjYQBnx9yrVxGEUYwQ-wLhQB14;-><init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lbike/smarthalo/app/models/SHRide;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
