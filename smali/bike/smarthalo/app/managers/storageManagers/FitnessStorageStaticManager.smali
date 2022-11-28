.class public Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;
.super Ljava/lang/Object;
.source "FitnessStorageStaticManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "FitnessStorageStaticManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deletePastRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1

    .line 318
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$VWMdaVt90dDEP65BVx7ZhCsREXw;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$VWMdaVt90dDEP65BVx7ZhCsREXw;-><init>(Lbike/smarthalo/app/models/SHPastRide;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static deleteRide(J)V
    .locals 1

    .line 330
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$U316dtlyOovdXmuuKAdkjRMwj5Y;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$U316dtlyOovdXmuuKAdkjRMwj5Y;-><init>(J)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static deleteRideAssociatedWithPastRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1
    .param p0    # Lbike/smarthalo/app/models/SHPastRide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 306
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$PKEK8RAQEkekhx0KDtujyLk2z0Q;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$PKEK8RAQEkekhx0KDtujyLk2z0Q;-><init>(Lbike/smarthalo/app/models/SHPastRide;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static getCurrentRide(Z)Lbike/smarthalo/app/models/SHRide;
    .locals 4

    .line 75
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 77
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    .line 79
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    const-string v2, "timestamp"

    sget-object v3, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    .line 81
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 86
    new-instance p0, Lbike/smarthalo/app/models/SHRide;

    invoke-direct {p0}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {v1}, Lio/realm/RealmResults;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHRide;

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    move-object p0, v1

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHRide;

    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    new-instance p0, Lbike/smarthalo/app/models/SHRide;

    invoke-direct {p0}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    .line 96
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p0
.end method

.method public static getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;
    .locals 3

    .line 234
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 236
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "stamp"

    .line 237
    invoke-virtual {v1, v2, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHPastRide;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_0
    invoke-virtual {v0, p0}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHPastRide;

    .line 246
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p0
.end method

.method public static getPastRidesAsync()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;",
            ">;"
        }
    .end annotation

    .line 252
    sget-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$G_FSPIarAA89auA7ohi1R4bUOR0;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$G_FSPIarAA89auA7ohi1R4bUOR0;

    .line 253
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    .line 264
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 265
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public static getPastRidesToDelete()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 161
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

    .line 164
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 168
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public static getPastRidesToUpdate()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 191
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

    .line 194
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 198
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public static getPastRidesToUploadToStrava()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 176
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

    .line 179
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 183
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public static getRideByStamp(Ljava/lang/Long;)Lbike/smarthalo/app/models/SHRide;
    .locals 3

    .line 56
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 58
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "timestamp"

    .line 59
    invoke-virtual {v1, v2, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHRide;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    invoke-virtual {v0, p0}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHRide;

    .line 68
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p0
.end method

.method public static getSortedPastRides()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 141
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    .line 142
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "hasDeleteRequest"

    const/4 v3, 0x0

    .line 143
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    const-string v2, "stamp"

    sget-object v3, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    .line 145
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v1

    if-nez v1, :cond_0

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 151
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 153
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public static getSortedRidesToUpload()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHRide;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 289
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    .line 290
    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "isActive"

    const/4 v3, 0x0

    .line 291
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    const-string v2, "timestamp"

    sget-object v3, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    .line 293
    invoke-virtual {v1, v2, v3}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v1

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 299
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public static getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;
    .locals 2

    .line 344
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 346
    const-class v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    .line 352
    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public static getUserGoal(Z)Lbike/smarthalo/app/models/SHGoal;
    .locals 5

    .line 102
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 106
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

    .line 108
    const-class v2, Lbike/smarthalo/app/models/SHGoal;

    .line 110
    invoke-virtual {v0, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v4

    .line 111
    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    const-string v3, "timestamp"

    sget-object v4, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    .line 113
    invoke-virtual {v2, v3, v4}, Lio/realm/RealmResults;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 116
    new-instance p0, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {p0}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 117
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$id(I)V

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v2}, Lio/realm/RealmResults;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/SHGoal;

    if-eqz v2, :cond_3

    .line 121
    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isActive()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    move-object p0, v2

    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {v0, v2}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHGoal;

    goto :goto_1

    .line 122
    :cond_3
    :goto_0
    new-instance p0, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {p0}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 123
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$id(I)V

    goto :goto_1

    .line 130
    :cond_4
    new-instance p0, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {p0}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 133
    :goto_1
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p0
.end method

.method static synthetic lambda$deletePastRide$6(Lbike/smarthalo/app/models/SHPastRide;Lio/realm/Realm;)V
    .locals 2

    .line 319
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

    .line 322
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 323
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->deleteFromRealm()V

    .line 324
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$deleteRide$7(JLio/realm/Realm;)V
    .locals 2

    .line 331
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

    .line 333
    invoke-virtual {p2}, Lio/realm/Realm;->beginTransaction()V

    .line 335
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$locations()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 336
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->deleteFromRealm()V

    .line 338
    invoke-virtual {p2}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$deleteRideAssociatedWithPastRide$5(Lbike/smarthalo/app/models/SHPastRide;Lio/realm/Realm;)V
    .locals 2

    .line 307
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

    .line 310
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 311
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->deleteFromRealm()V

    .line 312
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getPastRidesAsync$2()Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getSortedPastRides()Ljava/util/List;

    move-result-object v0

    .line 255
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getSortedRidesToUpload()Ljava/util/List;

    move-result-object v1

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHRide;

    .line 259
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHRide;->asPastRide()Lbike/smarthalo/app/models/SHPastRide;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_0
    new-instance v1, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;

    invoke-direct {v1, v0, v2}, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method static synthetic lambda$setStravaRideAutoUpload$8(ZLio/realm/Realm;)V
    .locals 1

    .line 359
    const-class v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/StravaLinkedAccount;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 363
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$isAutoUploadOn(Z)V

    const/4 p0, 0x0

    .line 364
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 365
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateLocalRide$4(Lbike/smarthalo/app/models/SHPastRide;Lio/realm/Realm;)V
    .locals 1

    .line 279
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 280
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 281
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateLocalRides$3(Ljava/util/List;Lio/realm/Realm;)V
    .locals 1

    .line 271
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 272
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Ljava/lang/Iterable;[Lio/realm/ImportFlag;)Ljava/util/List;

    .line 273
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateRide$0(Lbike/smarthalo/app/models/SHRide;Lio/realm/Realm;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 39
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateUserGoal$1(Lbike/smarthalo/app/models/SHGoal;Lio/realm/Realm;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 50
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 51
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method public static removeHasStravaUploadRequest(Ljava/lang/String;)V
    .locals 1

    .line 225
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasStravaUploadRequest(Z)V

    .line 229
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V

    :cond_0
    return-void
.end method

.method public static setStravaRideAutoUpload(Z)V
    .locals 1

    .line 358
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$X-XIaPNXDoozdnR3SGw063d93Fo;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$X-XIaPNXDoozdnR3SGw063d93Fo;-><init>(Z)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1
    .param p0    # Lbike/smarthalo/app/models/SHPastRide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 278
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$4O6vGMJixtC0I2-oleOEz0dLKXQ;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$4O6vGMJixtC0I2-oleOEz0dLKXQ;-><init>(Lbike/smarthalo/app/models/SHPastRide;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static updateLocalRides(Ljava/util/List;)V
    .locals 1
    .param p0    # Ljava/util/List;
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

    .line 270
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$i1l5PzfUA-cWIBPBvMYB-OErPqw;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$i1l5PzfUA-cWIBPBvMYB-OErPqw;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static updatePastRideOnSuccessfulStravaUpload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 204
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHPastRide;->addStravaIntegration(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 208
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasStravaUploadRequest(Z)V

    const/4 p1, 0x1

    .line 209
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasUpdateRequest(Z)V

    .line 210
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V

    :cond_0
    return-void
.end method

.method public static updateRide(Lbike/smarthalo/app/models/SHRide;)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$SkZbWIyn4eLoc253fa9ZWglPzMg;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$SkZbWIyn4eLoc253fa9ZWglPzMg;-><init>(Lbike/smarthalo/app/models/SHRide;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static updateRideOnSuccessfulStravaUpload(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 215
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getRideByStamp(Ljava/lang/Long;)Lbike/smarthalo/app/models/SHRide;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHRide;->addStravaIntegration(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 219
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHRide;->realmSet$hasStravaUploadRequest(Z)V

    .line 220
    invoke-static {p0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->updateRide(Lbike/smarthalo/app/models/SHRide;)V

    :cond_0
    return-void
.end method

.method public static updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$k0JpguRP_KLdFQm9Qmp9WYDDKjU;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$FitnessStorageStaticManager$k0JpguRP_KLdFQm9Qmp9WYDDKjU;-><init>(Lbike/smarthalo/app/models/SHGoal;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method
