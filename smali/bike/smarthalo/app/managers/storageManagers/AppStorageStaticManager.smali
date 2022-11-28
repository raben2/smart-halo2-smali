.class public Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;
.super Ljava/lang/Object;
.source "AppStorageStaticManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStorageStaticManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteLocation(Ljava/lang/String;)V
    .locals 1

    .line 78
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$Q5G5dz80SYRtc-hUJz8slWz571k;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$Q5G5dz80SYRtc-hUJz8slWz571k;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static getItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 58
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 59
    const-class v1, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lio/realm/RealmResults;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHAppData;->realmGet$value()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 61
    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p0
.end method

.method public static getLastSelectedRouteType()Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;
    .locals 2

    const-string v0, "LAST_SELECTED_ROUTE_TYPE"

    .line 90
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    const-class v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 93
    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$deleteLocation$5(Ljava/lang/String;Lio/realm/Realm;)V
    .locals 2

    .line 79
    const-class v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHLocation;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 83
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->deleteFromRealm()V

    .line 84
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$removeItem$4(Ljava/lang/String;Lio/realm/Realm;)V
    .locals 2

    .line 67
    const-class v0, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/SHAppData;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 71
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHAppData;->deleteFromRealm()V

    .line 72
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setItemAsync$1(Ljava/lang/String;Ljava/lang/String;Lio/realm/Realm;)V
    .locals 1

    .line 37
    new-instance v0, Lbike/smarthalo/app/models/SHAppData;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHAppData;-><init>()V

    .line 38
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHAppData;->realmSet$key(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHAppData;->realmSet$value(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 40
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p2, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method

.method static synthetic lambda$setItemAsync$2(Lio/realm/Realm;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 44
    sget-object p0, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess: Updated item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 46
    invoke-interface {p2, p0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setItemAsync$3(Lio/realm/Realm;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;Ljava/lang/Throwable;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 50
    sget-object p0, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure: Failed to update item "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 52
    invoke-interface {p2, p0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setItemSync$0(Ljava/lang/String;Ljava/lang/String;Lio/realm/Realm;)V
    .locals 1

    .line 22
    new-instance v0, Lbike/smarthalo/app/models/SHAppData;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHAppData;-><init>()V

    .line 23
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHAppData;->realmSet$key(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHAppData;->realmSet$value(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lio/realm/Realm;->beginTransaction()V

    const/4 p0, 0x0

    .line 27
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p2, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 28
    invoke-virtual {p2}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method public static removeItem(Ljava/lang/String;)V
    .locals 1

    .line 66
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$b0XPsaefIm1KwWe40W4QG94B7Os;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$b0XPsaefIm1KwWe40W4QG94B7Os;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static setItemAsync(Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
    .locals 3

    .line 33
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 35
    new-instance v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$CAymUvM0-HO9-08rVXNyPRaQc5o;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$CAymUvM0-HO9-08rVXNyPRaQc5o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$Rleid-FAz8mp9YxyViROrEAUlNE;

    invoke-direct {p1, v0, p0, p2}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$Rleid-FAz8mp9YxyViROrEAUlNE;-><init>(Lio/realm/Realm;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    new-instance v2, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$tXzzumnwqGJv__jteCgV_rlw-pI;

    invoke-direct {v2, v0, p0, p2}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$tXzzumnwqGJv__jteCgV_rlw-pI;-><init>(Lio/realm/Realm;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    invoke-virtual {v0, v1, p1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public static setItemSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$NaEgihN9QGcWrzlkPa_IOMwRdKo;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$NaEgihN9QGcWrzlkPa_IOMwRdKo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static setLastSelectedRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 1

    const-string v0, "LAST_SELECTED_ROUTE_TYPE"

    .line 98
    invoke-virtual {p0}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
