.class public Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;
.super Ljava/lang/Object;
.source "FitnessStorageManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;


# static fields
.field private static final B2B_SPEEDOMETER_GOAL:D = 30.0

.field public static TAG:Ljava/lang/String; = "FitnessStorageManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .locals 1

    .line 30
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$addStravaAccount$8(Lbike/smarthalo/app/api/strava/StravaAthlete;Ljava/lang/String;Ljava/lang/String;JLio/realm/Realm;)V
    .locals 1

    .line 366
    new-instance v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    .line 370
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/models/StravaLinkedAccount;-><init>(Lbike/smarthalo/app/api/strava/StravaAthlete;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    invoke-virtual {p5}, Lio/realm/Realm;->beginTransaction()V

    const/4 p0, 0x0

    .line 372
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p5, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 373
    invoke-virtual {p5}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$deletePastRide$6(Lbike/smarthalo/app/models/SHPastRide;Lio/realm/Realm;)V
    .locals 2

    .line 337
    const-class v0, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "stamp"

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHPastRide;

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 341
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->deleteFromRealm()V

    .line 342
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$deleteRide$7(JLio/realm/Realm;)V
    .locals 2

    .line 349
    const-class v0, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p2, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHRide;

    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p2}, Lio/realm/Realm;->beginTransaction()V

    .line 353
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$locations()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 354
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->deleteFromRealm()V

    .line 356
    invoke-virtual {p2}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$deleteRideAssociatedWithPastRide$5(Lbike/smarthalo/app/models/SHPastRide;Lio/realm/Realm;)V
    .locals 2

    .line 325
    const-class v0, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHRide;

    if-eqz p0, :cond_0

    .line 328
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 329
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->deleteFromRealm()V

    .line 330
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$deleteStravaLinkedAccount$11(Lio/realm/Realm;)V
    .locals 1

    .line 420
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    .line 424
    invoke-virtual {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->deleteFromRealm()V

    .line 425
    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getPastRidesAsync$2(Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;)Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->getSortedPastRides()Ljava/util/List;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->getSortedRidesToUpload()Ljava/util/List;

    move-result-object v1

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHRide;

    .line 277
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHRide;->asPastRide()Lbike/smarthalo/app/models/SHPastRide;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_0
    new-instance v1, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;

    invoke-direct {v1, v0, v2}, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method static synthetic lambda$setStravaRideAutoUpload$10(ZLio/realm/Realm;)V
    .locals 1

    .line 407
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 411
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$isAutoUploadOn(Z)V

    const/4 p0, 0x0

    .line 412
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 413
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateLocalRide$4(Lbike/smarthalo/app/models/SHPastRide;Lio/realm/Realm;)V
    .locals 1

    .line 297
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 298
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 299
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateLocalRides$3(Ljava/util/List;Lio/realm/Realm;)V
    .locals 1

    .line 289
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 290
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Ljava/lang/Iterable;[Lio/realm/ImportFlag;)Ljava/util/List;

    .line 291
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateRide$0(Lbike/smarthalo/app/models/SHRide;Lio/realm/Realm;)V
    .locals 1

    .line 41
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 42
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 43
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateStravaAccount$9(Lbike/smarthalo/app/api/strava/StravaAthlete;Lio/realm/Realm;)V
    .locals 1

    .line 379
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 382
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->setUsername(Lbike/smarthalo/app/api/strava/StravaAthlete;)V

    .line 383
    iget-object p0, p0, Lbike/smarthalo/app/api/strava/StravaAthlete;->profilePictureUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$imageUrl(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 385
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 386
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateStravaAccountTokens$12(Ljava/lang/String;Ljava/lang/String;JLio/realm/Realm;)V
    .locals 1

    .line 435
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p4, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p4}, Lio/realm/Realm;->beginTransaction()V

    .line 438
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$authenticationToken(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$refreshToken(Ljava/lang/String;)V

    .line 440
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$authenticationTokenExpiration(Ljava/lang/Long;)V

    const/4 p0, 0x0

    .line 441
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p4, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 442
    invoke-virtual {p4}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateUserGoal$1(Lbike/smarthalo/app/models/SHGoal;Lio/realm/Realm;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 54
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 55
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method


# virtual methods
.method public addStravaAccount(Ljava/lang/String;Ljava/lang/String;JLbike/smarthalo/app/api/strava/StravaAthlete;)V
    .locals 7

    .line 365
    new-instance v6, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;

    move-object v0, v6

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$DqtYP3nvD-cB45kPhjiq2o1yi-Y;-><init>(Lbike/smarthalo/app/api/strava/StravaAthlete;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v6}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public createB2BSpeedometerGoal(I)V
    .locals 3

    .line 106
    new-instance v0, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    const/4 v1, 0x2

    .line 108
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$type(I)V

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    .line 109
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$goal(Ljava/lang/Double;)V

    const-wide/16 v1, 0x0

    .line 110
    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$nextProgress(I)V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$isActive(Z)V

    .line 113
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$id(I)V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$timestamp(Ljava/lang/Long;)V

    .line 116
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V

    return-void
.end method

.method public deletePastRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1

    .line 336
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$rSLr6SXzyTYJJeU7c1oQ-SlrIPs;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$rSLr6SXzyTYJJeU7c1oQ-SlrIPs;-><init>(Lbike/smarthalo/app/models/SHPastRide;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public deleteRide(J)V
    .locals 1

    .line 348
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$WkS1iFraWWPN4w3PF3RgxC6YXyI;

    invoke-direct {v0, p1, p2}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$WkS1iFraWWPN4w3PF3RgxC6YXyI;-><init>(J)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public deleteRideAssociatedWithPastRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/SHPastRide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 324
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$JcEc0pmeF_Lcp8n2OGUa3L6SqXI;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$JcEc0pmeF_Lcp8n2OGUa3L6SqXI;-><init>(Lbike/smarthalo/app/models/SHPastRide;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public deleteStravaLinkedAccount()V
    .locals 1

    .line 419
    sget-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$CNU6oJ1mFHkM0xy3jfZJOSegYsQ;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$CNU6oJ1mFHkM0xy3jfZJOSegYsQ;

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public getCurrentActiveGoal()Lbike/smarthalo/app/models/SHGoal;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->getUserGoal(Z)Lbike/smarthalo/app/models/SHGoal;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentRide(Z)Lbike/smarthalo/app/models/SHRide;
    .locals 4

    .line 79
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 81
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    .line 83
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    const-string v2, "timestamp"

    sget-object v3, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    .line 85
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 90
    new-instance p1, Lbike/smarthalo/app/models/SHRide;

    invoke-direct {p1}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {v1}, Lio/realm/RealmResults;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHRide;

    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move-object p1, v1

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHRide;

    goto :goto_1

    .line 94
    :cond_3
    :goto_0
    new-instance p1, Lbike/smarthalo/app/models/SHRide;

    invoke-direct {p1}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    .line 100
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p1
.end method

.method public getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 3

    .line 252
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 254
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "stamp"

    .line 255
    invoke-virtual {v1, v2, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHPastRide;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 262
    :cond_0
    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHPastRide;

    .line 264
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p1
.end method

.method public getPastRidesAsync()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$prQIW59noqV1lH1nFyhGNs6rMw0;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$prQIW59noqV1lH1nFyhGNs6rMw0;-><init>(Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;)V

    .line 271
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    .line 282
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 283
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getPastRidesToDelete()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 179
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "hasDeleteRequest"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 185
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 186
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public getPastRidesToUpdate()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 209
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "hasUpdateRequest"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 215
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 216
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public getPastRidesToUploadToStrava()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 194
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "hasStravaUploadRequest"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    if-nez v1, :cond_0

    .line 197
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 200
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public getRideByStamp(Ljava/lang/Long;)Lbike/smarthalo/app/models/SHRide;
    .locals 3

    .line 60
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 62
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "timestamp"

    .line 63
    invoke-virtual {v1, v2, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHRide;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 70
    :cond_0
    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHRide;

    .line 72
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p1
.end method

.method public getSortedPastRides()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 159
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    .line 160
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "hasDeleteRequest"

    const/4 v3, 0x0

    .line 161
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    const-string v2, "stamp"

    sget-object v3, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    .line 163
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v1

    if-nez v1, :cond_0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 169
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 171
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public getSortedRidesToUpload()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHRide;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 307
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    .line 308
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "isActive"

    const/4 v3, 0x0

    .line 309
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    const-string v2, "timestamp"

    sget-object v3, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    .line 311
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v1

    if-nez v1, :cond_0

    .line 314
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 317
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 318
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;
    .locals 2

    .line 392
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 394
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    .line 400
    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public getUserGoal(Z)Lbike/smarthalo/app/models/SHGoal;
    .locals 5

    .line 120
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 124
    const-class v1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "key"

    const-string v3, "current"

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHUser;

    if-eqz v1, :cond_4

    .line 126
    const-class v2, Lbike/smarthalo/app/models/SHGoal;

    .line 128
    invoke-virtual {v0, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v4

    .line 129
    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    const-string v3, "timestamp"

    sget-object v4, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    .line 131
    invoke-virtual {v2, v3, v4}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 134
    new-instance p1, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {p1}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 135
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$id(I)V

    goto :goto_1

    .line 138
    :cond_0
    invoke-virtual {v2}, Lio/realm/RealmResults;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/SHGoal;

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isActive()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move-object p1, v2

    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v0, v2}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHGoal;

    goto :goto_1

    .line 140
    :cond_3
    :goto_0
    new-instance p1, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {p1}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 141
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$id(I)V

    goto :goto_1

    .line 148
    :cond_4
    new-instance p1, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {p1}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 151
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p1
.end method

.method public removeHasStravaUploadRequest(Ljava/lang/String;)V
    .locals 1

    .line 243
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p1, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasStravaUploadRequest(Z)V

    .line 247
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V

    :cond_0
    return-void
.end method

.method public setStravaRideAutoUpload(Z)V
    .locals 1

    .line 406
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$ytO7JlHDPiVKRqmFMtBWVTvy2cg;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$ytO7JlHDPiVKRqmFMtBWVTvy2cg;-><init>(Z)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/SHPastRide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 296
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$rYa1NUn4QL_9FNckRbjszCYXovE;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$rYa1NUn4QL_9FNckRbjszCYXovE;-><init>(Lbike/smarthalo/app/models/SHPastRide;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public updateLocalRides(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 288
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$M6rf6xNdyaZwc5QpHrHmnzFdR70;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$M6rf6xNdyaZwc5QpHrHmnzFdR70;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public updatePastRideOnSuccessfulStravaUpload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1, p2}, Lbike/smarthalo/app/models/SHPastRide;->addStravaIntegration(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 226
    invoke-virtual {p1, p2}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasStravaUploadRequest(Z)V

    const/4 p2, 0x1

    .line 227
    invoke-virtual {p1, p2}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasUpdateRequest(Z)V

    .line 228
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V

    :cond_0
    return-void
.end method

.method public updateRide(Lbike/smarthalo/app/models/SHRide;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$uRAl7tSo1CrkxH2r7mRLQCBf5Tg;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$uRAl7tSo1CrkxH2r7mRLQCBf5Tg;-><init>(Lbike/smarthalo/app/models/SHRide;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public updateRideOnSuccessfulStravaUpload(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->getRideByStamp(Ljava/lang/Long;)Lbike/smarthalo/app/models/SHRide;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1, p2}, Lbike/smarthalo/app/models/SHRide;->addStravaIntegration(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 237
    invoke-virtual {p1, p2}, Lbike/smarthalo/app/models/SHRide;->realmSet$hasStravaUploadRequest(Z)V

    .line 238
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->updateRide(Lbike/smarthalo/app/models/SHRide;)V

    :cond_0
    return-void
.end method

.method public updateStravaAccount(Lbike/smarthalo/app/api/strava/StravaAthlete;)V
    .locals 1

    .line 378
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$GUloHxyn-qSywX9jmw7un7lfIiA;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$GUloHxyn-qSywX9jmw7un7lfIiA;-><init>(Lbike/smarthalo/app/api/strava/StravaAthlete;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public updateStravaAccountTokens(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 434
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$NlieCISThEej5qVoNRVHPeGTMIU;

    invoke-direct {v0, p1, p2, p3, p4}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$NlieCISThEej5qVoNRVHPeGTMIU;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$waLNRT-kuMGm7sSutMQ4zv8p5mw;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageManager$waLNRT-kuMGm7sSutMQ4zv8p5mw;-><init>(Lbike/smarthalo/app/models/SHGoal;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method
