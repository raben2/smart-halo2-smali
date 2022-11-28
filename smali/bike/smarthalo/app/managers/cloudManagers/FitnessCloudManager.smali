.class public Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;
.super Ljava/lang/Object;
.source "FitnessCloudManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;


# static fields
.field private static final MARKERS_OPTION:Ljava/lang/String; = "markers"

.field private static final SIGNIFICANT_MARKERS_OPTION:Ljava/lang/String; = "significant-markers"


# instance fields
.field private authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

.field private context:Landroid/content/Context;

.field private keyManager:Lbike/smarthalo/app/managers/KeyManager;

.field private rideApi:Lbike/smarthalo/app/api/SHRideApi;

.field private stravaCloudManagerContract:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->context:Landroid/content/Context;

    .line 62
    const-class p1, Lbike/smarthalo/app/api/SHRideApi;

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/SHRideApi;

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->rideApi:Lbike/smarthalo/app/api/SHRideApi;

    .line 63
    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->stravaCloudManagerContract:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    .line 64
    iput-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 65
    iput-object p5, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    return-void
.end method

.method private getRideUploadObservableSequence(Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->getStravaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->getStravaId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updateRideOnSuccessfulStravaUpload(Ljava/lang/Long;Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$hasStravaUploadRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p1, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$hasStravaUploadRequest(Z)V

    .line 199
    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updateRide(Lbike/smarthalo/app/models/SHRide;)V

    .line 202
    :cond_1
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->getUploadBody()Lbike/smarthalo/app/models/RideUploadPayload;

    move-result-object v0

    .line 204
    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->rideApi:Lbike/smarthalo/app/api/SHRideApi;

    const/4 v3, 0x1

    new-array v3, v3, [Lbike/smarthalo/app/models/RideUploadPayload;

    aput-object v0, v3, v1

    .line 205
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Lbike/smarthalo/app/api/SHRideApi;->uploadUserRides(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Single;

    move-result-object p2

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$PgF_cHpjGrRr5cplefI1I4dGqx8;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$PgF_cHpjGrRr5cplefI1I4dGqx8;-><init>(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/SHRide;)V

    .line 206
    invoke-virtual {p2, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 207
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private handleStravaError(Lbike/smarthalo/app/api/strava/StravaRideResponse;Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            "Lbike/smarthalo/app/models/SHRide;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 179
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager$1;->$SwitchMap$bike$smarthalo$app$api$strava$StravaRideResponse$StravaErrorType:[I

    iget-object v1, p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;->errorType:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-virtual {v1}, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    .line 187
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 182
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->getRideUploadObservableSequence(Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 184
    :cond_0
    iget-object p1, p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;->id:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lbike/smarthalo/app/models/SHRide;->addStravaIntegration(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p2, p3}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->getRideUploadObservableSequence(Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$getRideUploadObservableSequence$7(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/SHRide;Lretrofit2/Response;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->processRideUploadResponse(Lbike/smarthalo/app/models/SHRide;Lretrofit2/Response;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$launchManualStravaUploadFlow$2(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/CloudRide;)Lio/reactivex/SingleSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->stravaCloudManagerContract:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    .line 100
    invoke-virtual {p1}, Lbike/smarthalo/app/models/CloudRide;->asRideForStravaUpload()Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;->sendRideToStrava(Lbike/smarthalo/app/models/SHRide;Z)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$pzq2RAJc8gRGg7HhKN-OHjdv8z8;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$pzq2RAJc8gRGg7HhKN-OHjdv8z8;-><init>(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/CloudRide;)V

    .line 101
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$launchManualStravaUploadFlow$3(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/StravaUploadResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    sget-object p0, Lbike/smarthalo/app/models/StravaUploadResult;->FailureReschedule:Lbike/smarthalo/app/models/StravaUploadResult;

    return-object p0
.end method

.method public static synthetic lambda$null$1(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/CloudRide;Lbike/smarthalo/app/api/strava/StravaRideResponse;)Lio/reactivex/SingleSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->onStravaManualUploadResponse(Lbike/smarthalo/app/models/CloudRide;Lbike/smarthalo/app/api/strava/StravaRideResponse;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$onStravaManualUploadResponse$4(Lbike/smarthalo/app/models/CloudRide;)Lbike/smarthalo/app/models/StravaUploadResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    sget-object p0, Lbike/smarthalo/app/models/StravaUploadResult;->Success:Lbike/smarthalo/app/models/StravaUploadResult;

    return-object p0
.end method

.method static synthetic lambda$onStravaManualUploadResponse$5(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/StravaUploadResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    sget-object p0, Lbike/smarthalo/app/models/StravaUploadResult;->PatchFail:Lbike/smarthalo/app/models/StravaUploadResult;

    return-object p0
.end method

.method static synthetic lambda$updateCloudAndLocalRides$8(Lretrofit2/Response;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 246
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updateLocalRides(Ljava/util/List;)V

    const-string p0, "HAS_DOWNLOADED_PAST_RIDES"

    const/4 v1, 0x1

    .line 249
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    .line 253
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$updateRide$6(Lbike/smarthalo/app/models/CloudRide;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lbike/smarthalo/app/models/CloudRide;->asPastRide()Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p0

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasUpdateRequest(Z)V

    .line 146
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V

    return-void
.end method

.method public static synthetic lambda$uploadRideToCloud$0(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;Lbike/smarthalo/app/api/strava/StravaRideResponse;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-virtual {p3}, Lbike/smarthalo/app/api/strava/StravaRideResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p3, p3, Lbike/smarthalo/app/api/strava/StravaRideResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lbike/smarthalo/app/models/SHRide;->addStravaIntegration(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->getRideUploadObservableSequence(Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-direct {p0, p3, p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->handleStravaError(Lbike/smarthalo/app/api/strava/StravaRideResponse;Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private onStravaManualUploadResponse(Lbike/smarthalo/app/models/CloudRide;Lbike/smarthalo/app/api/strava/StravaRideResponse;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/CloudRide;",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/StravaUploadResult;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager$1;->$SwitchMap$bike$smarthalo$app$api$strava$StravaRideResponse$StravaErrorType:[I

    iget-object v1, p2, Lbike/smarthalo/app/api/strava/StravaRideResponse;->errorType:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    invoke-virtual {v1}, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 118
    iget-object p1, p1, Lbike/smarthalo/app/models/CloudRide;->stamp:Ljava/lang/String;

    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 120
    invoke-virtual {p1, p2}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasStravaUploadRequest(Z)V

    .line 121
    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V

    goto :goto_0

    .line 116
    :pswitch_0
    sget-object p1, Lbike/smarthalo/app/models/StravaUploadResult;->FailureReschedule:Lbike/smarthalo/app/models/StravaUploadResult;

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 110
    :pswitch_1
    iget-object v0, p1, Lbike/smarthalo/app/models/CloudRide;->stamp:Ljava/lang/String;

    iget-object v1, p2, Lbike/smarthalo/app/api/strava/StravaRideResponse;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updatePastRideOnSuccessfulStravaUpload(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget v0, p1, Lbike/smarthalo/app/models/CloudRide;->id:I

    int-to-long v0, v0

    new-instance v2, Lbike/smarthalo/app/api/requests/PatchRideRequest;

    iget-object p2, p2, Lbike/smarthalo/app/api/strava/StravaRideResponse;->id:Ljava/lang/String;

    invoke-direct {v2, p1, p2}, Lbike/smarthalo/app/api/requests/PatchRideRequest;-><init>(Lbike/smarthalo/app/models/CloudRide;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v0, v1, v2}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->updateRide(JLbike/smarthalo/app/api/requests/PatchRideRequest;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$iJfcHpw7vPYN6sPT0EskL_Bxq6M;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$iJfcHpw7vPYN6sPT0EskL_Bxq6M;

    .line 113
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$wUPVG3FaZsYhqfavwmLzo3uUw0M;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$wUPVG3FaZsYhqfavwmLzo3uUw0M;

    .line 114
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 124
    :cond_0
    :goto_0
    sget-object p1, Lbike/smarthalo/app/models/StravaUploadResult;->FailureDontReschedule:Lbike/smarthalo/app/models/StravaUploadResult;

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processRideUploadResponse(Lbike/smarthalo/app/models/SHRide;Lretrofit2/Response;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/RideMarker;",
            ">;>;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 211
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 212
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->asPastRide()Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p2

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/RideMarker;

    iget v0, v0, Lbike/smarthalo/app/models/RideMarker;->rideId:I

    invoke-virtual {p2, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$id(I)V

    .line 219
    :cond_0
    invoke-static {p2}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V

    .line 220
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->deleteRide(J)V

    const/4 p1, 0x1

    .line 221
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 225
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    const/16 v0, 0x190

    if-ne p2, v0, :cond_2

    .line 226
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ride start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ride end : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$endTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 229
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Ride Upload Bad Request"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 231
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deleteRide(Lbike/smarthalo/app/models/SHPastRide;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 267
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->rideApi:Lbike/smarthalo/app/api/SHRideApi;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 268
    invoke-virtual {v2}, Lbike/smarthalo/app/managers/KeyManager;->getAppConsumerToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$id()I

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lbike/smarthalo/app/api/SHRideApi;->deleteRide(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;

    move-result-object p1

    .line 269
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 270
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getRide(ILbike/smarthalo/app/api/requests/CloudRideMarkersOption;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbike/smarthalo/app/api/requests/CloudRideMarkersOption;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/CloudRide;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 160
    sget-object v2, Lbike/smarthalo/app/api/requests/CloudRideMarkersOption;->Markers:Lbike/smarthalo/app/api/requests/CloudRideMarkersOption;

    if-ne p2, v2, :cond_1

    const-string v1, "markers"

    goto :goto_0

    .line 162
    :cond_1
    sget-object v2, Lbike/smarthalo/app/api/requests/CloudRideMarkersOption;->SignificantMarkers:Lbike/smarthalo/app/api/requests/CloudRideMarkersOption;

    if-ne p2, v2, :cond_2

    const-string v1, "significant-markers"

    .line 166
    :cond_2
    :goto_0
    iget-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->rideApi:Lbike/smarthalo/app/api/SHRideApi;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 170
    invoke-virtual {v2}, Lbike/smarthalo/app/managers/KeyManager;->getAppConsumerToken()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-interface {p2, v0, v2, p1, v1}, Lbike/smarthalo/app/api/SHRideApi;->getRide(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;

    .line 173
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 174
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public launchManualStravaUploadFlow(I)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/StravaUploadResult;",
            ">;"
        }
    .end annotation

    .line 97
    sget-object v0, Lbike/smarthalo/app/api/requests/CloudRideMarkersOption;->Markers:Lbike/smarthalo/app/api/requests/CloudRideMarkersOption;

    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->getRide(ILbike/smarthalo/app/api/requests/CloudRideMarkersOption;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$4pGM6lwdOd7IXoOMblWTBwdcSCQ;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$4pGM6lwdOd7IXoOMblWTBwdcSCQ;-><init>(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;)V

    .line 98
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$U0KcqWmbO6J1ZZUa865DE2r3yXA;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$U0KcqWmbO6J1ZZUa865DE2r3yXA;

    .line 102
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 103
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public updateCloudAndLocalRides()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->rideApi:Lbike/smarthalo/app/api/SHRideApi;

    .line 243
    invoke-interface {v1, v0}, Lbike/smarthalo/app/api/SHRideApi;->getUserRidesObservable(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$rlV55QHHCafy6tAEhbOWLGButW0;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$rlV55QHHCafy6tAEhbOWLGButW0;

    .line 244
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 256
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 257
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public updateRide(JLbike/smarthalo/app/api/requests/PatchRideRequest;)Lio/reactivex/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbike/smarthalo/app/api/requests/PatchRideRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/CloudRide;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 132
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->rideApi:Lbike/smarthalo/app/api/SHRideApi;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 139
    invoke-virtual {v0}, Lbike/smarthalo/app/managers/KeyManager;->getAppConsumerToken()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lbike/smarthalo/app/api/requests/GenericApiPayload;

    invoke-direct {v6, p3}, Lbike/smarthalo/app/api/requests/GenericApiPayload;-><init>(Ljava/lang/Object;)V

    move-wide v4, p1

    .line 137
    invoke-interface/range {v1 .. v6}, Lbike/smarthalo/app/api/SHRideApi;->updateRide(Ljava/lang/String;Ljava/lang/String;JLbike/smarthalo/app/api/requests/GenericApiPayload;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;

    .line 142
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$oY24rbUQM8DvXZMi1vUPjqOnl-4;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$oY24rbUQM8DvXZMi1vUPjqOnl-4;

    .line 143
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 148
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public uploadRideToCloud(Lbike/smarthalo/app/models/SHRide;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v1}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$isAutoUploadOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$hasStravaUploadRequest()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v1

    if-nez v1, :cond_2

    .line 80
    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->stravaCloudManagerContract:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    const/4 v2, 0x1

    .line 81
    invoke-interface {v1, p1, v2}, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;->sendRideToStrava(Lbike/smarthalo/app/models/SHRide;Z)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$b1rqEZGsY8NQGtXt2vpoHbr7TuA;

    invoke-direct {v2, p0, p1, v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$b1rqEZGsY8NQGtXt2vpoHbr7TuA;-><init>(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 92
    :cond_2
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->getRideUploadObservableSequence(Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
