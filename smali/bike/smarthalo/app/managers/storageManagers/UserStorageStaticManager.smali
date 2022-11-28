.class public Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;
.super Ljava/lang/Object;
.source "UserStorageStaticManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BIKE_KEY:Ljava/lang/String; = "bike.smarthalo.app.BIKE_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteUserBikeLocation()V
    .locals 1

    .line 77
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUserBikeKey(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->deleteLocation(Ljava/lang/String;)V

    return-void
.end method

.method public static getLocalFavourites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 126
    const-class v1, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lio/realm/RealmResults;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 132
    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public static getUser()Lbike/smarthalo/app/models/SHUser;
    .locals 4

    .line 87
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 88
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

    .line 94
    :cond_0
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHUser;

    .line 96
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public static getUserBikeKey(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bike.smarthalo.app.BIKE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserBikeLocation()Lbike/smarthalo/app/models/SHLocation;
    .locals 5

    .line 56
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 61
    :cond_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v2

    .line 63
    const-class v3, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "key"

    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUserBikeKey(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLocation;

    if-nez v0, :cond_1

    return-object v1

    .line 69
    :cond_1
    invoke-virtual {v2, v0}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLocation;

    .line 71
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    return-object v0
.end method

.method static synthetic lambda$saveUser$0(Lbike/smarthalo/app/models/SHUser;Lio/realm/Realm;)V
    .locals 1

    const-string v0, "current"

    .line 29
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHUser;->realmSet$key(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 32
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$saveUserBikeLocation$1(Lbike/smarthalo/app/models/SHLocation;Lio/realm/Realm;)V
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

.method static synthetic lambda$updateLocalFavouritesAsync$2(Ljava/util/List;Lio/realm/Realm;)V
    .locals 1

    .line 106
    const-class v0, Lbike/smarthalo/app/models/UserFavourite;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->delete(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 107
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealm(Ljava/lang/Iterable;[Lio/realm/ImportFlag;)Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$updateLocalFavouritesAsync$3(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 112
    invoke-interface {p1, p0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateLocalFavouritesAsync$4(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;Ljava/lang/Throwable;)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 118
    invoke-interface {p1, p0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method public static saveUser(Lbike/smarthalo/app/models/SHUser;)V
    .locals 1
    .param p0    # Lbike/smarthalo/app/models/SHUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$-McGggh37h1SQISIqH5DIJNm02I;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$-McGggh37h1SQISIqH5DIJNm02I;-><init>(Lbike/smarthalo/app/models/SHUser;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static saveUserBikeLocation(Landroid/location/Location;)V
    .locals 4

    .line 37
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v1}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 43
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUserBikeKey(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$key(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 44
    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    .line 45
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 46
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v1, p0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 48
    new-instance p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$K3GtuPoE92kFo5YLQUskiFrrIc4;

    invoke-direct {p0, v1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$K3GtuPoE92kFo5YLQUskiFrrIc4;-><init>(Lbike/smarthalo/app/models/SHLocation;)V

    invoke-static {p0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static updateLocalFavouritesAsync(Ljava/util/List;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
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

    .line 102
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 104
    new-instance v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$Vf9uiH6Xs9EhmQap9wxEjW4Q_N4;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$Vf9uiH6Xs9EhmQap9wxEjW4Q_N4;-><init>(Ljava/util/List;)V

    new-instance p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$07bmHjfldD6Q7GWoriFsp4Huus0;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$07bmHjfldD6Q7GWoriFsp4Huus0;-><init>(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    new-instance v2, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$2S1W6lLapKzp5qwGabByRyj5ILo;

    invoke-direct {v2, v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$UserStorageStaticManager$2S1W6lLapKzp5qwGabByRyj5ILo;-><init>(Lio/realm/Realm;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    invoke-virtual {v0, v1, p0, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public static updateUserUnitsOfMeasurement(Z)V
    .locals 4

    .line 142
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 143
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

    .line 145
    invoke-virtual {v0}, Lio/realm/Realm;->beginTransaction()V

    .line 148
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Lbike/smarthalo/app/models/SHUser;->realmSet$distanceMetric(Ljava/lang/Boolean;)V

    const/4 p0, 0x0

    .line 149
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v1, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 150
    invoke-virtual {v0}, Lio/realm/Realm;->commitTransaction()V

    .line 151
    invoke-virtual {v0}, Lio/realm/Realm;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {v0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v0}, Lio/realm/Realm;->cancelTransaction()V

    .line 156
    :cond_0
    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 159
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
