.class public Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;
.super Ljava/lang/Object;
.source "UserStorageManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# static fields
.field private static final BIKE_KEY:Ljava/lang/String; = "bike.smarthalo.app.BIKE_KEY"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .locals 1

    .line 28
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$saveUser$0(Lbike/smarthalo/app/models/SHUser;Lio/realm/Realm;)V
    .locals 1

    const-string v0, "current"

    .line 33
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHUser;->realmSet$key(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 36
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$saveUserBikeLocation$1(Lbike/smarthalo/app/models/SHLocation;Lio/realm/Realm;)V
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

.method static synthetic lambda$updateLocalFavouritesAsync$2(Ljava/util/List;Lio/realm/Realm;)V
    .locals 1

    .line 114
    const-class v0, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 115
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealm(Ljava/lang/Iterable;[Lio/realm/ImportFlag;)Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$updateLocalFavouritesAsync$3(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 120
    invoke-interface {p1, p0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateLocalFavouritesAsync$4(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;Ljava/lang/Throwable;)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 126
    invoke-interface {p1, p0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;->onComplete(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteUserBikeLocation()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;->getUserBikeKey(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->deleteLocation(Ljava/lang/String;)V

    return-void
.end method

.method public getLocalFavourites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 134
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lio/realm/RealmResults;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 140
    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public getUser()Lbike/smarthalo/app/models/SHUser;
    .locals 4

    .line 90
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 91
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

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHUser;

    .line 99
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public getUserBikeKey(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bike.smarthalo.app.BIKE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserBikeLocation()Lbike/smarthalo/app/models/SHLocation;
    .locals 5

    .line 60
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 65
    :cond_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 67
    const-class v3, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;->getUserBikeKey(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLocation;

    if-nez v0, :cond_1

    return-object v1

    .line 73
    :cond_1
    invoke-virtual {v2, v0}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLocation;

    .line 75
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    return-object v0
.end method

.method public isUserMetric()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public saveUser(Lbike/smarthalo/app/models/SHUser;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/SHUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$DTZHuqYHxPBUAVuKvyMg3--rbiQ;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$DTZHuqYHxPBUAVuKvyMg3--rbiQ;-><init>(Lbike/smarthalo/app/models/SHUser;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public saveUserBikeLocation(Landroid/location/Location;)V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v1}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 47
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;->getUserBikeKey(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$key(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 48
    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    .line 49
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 50
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 52
    new-instance p1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$esAStgKhrrcSIItgXfUVWEgMFjk;

    invoke-direct {p1, v1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$esAStgKhrrcSIItgXfUVWEgMFjk;-><init>(Lbike/smarthalo/app/models/SHLocation;)V

    invoke-static {p1}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public updateLocalFavouritesAsync(Ljava/util/List;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;",
            "Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 112
    new-instance v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$Zg0L3xa9HjpnrAaVEvYLyS7dZnM;

    invoke-direct {v1, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$Zg0L3xa9HjpnrAaVEvYLyS7dZnM;-><init>(Ljava/util/List;)V

    new-instance p1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$BcBzPerJcoVDWe-hz_fWx49DeYk;

    invoke-direct {p1, v0, p2}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$BcBzPerJcoVDWe-hz_fWx49DeYk;-><init>(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    new-instance v2, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$WYY_14omvruIv-kSd1JnErKWsHE;

    invoke-direct {v2, v0, p2}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageManager$WYY_14omvruIv-kSd1JnErKWsHE;-><init>(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    invoke-virtual {v0, v1, p1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    return-void
.end method
