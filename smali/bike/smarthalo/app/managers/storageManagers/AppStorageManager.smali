.class public Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;
.super Ljava/lang/Object;
.source "AppStorageManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;
    }
.end annotation


# static fields
.field public static final DONT_REMIND_FITNESS_OFF:Ljava/lang/String; = "DONT_REMIND_FITNESS_OFF"

.field public static final DONT_REMIND_LOCATION_OFF:Ljava/lang/String; = "DONT_REMIND_LOCATION_OFF"

.field public static final FITNESS_OFF_NOTIFICATION_TIMESTAMP:Ljava/lang/String; = "FITNESS_OFF_NOTIFICATION_TIMESTAMP"

.field public static final HAS_COMPLETED_INSTALL_INSTRUCTIONS:Ljava/lang/String; = "HAS_COMPLETED_INSTALL_INSTRUCTIONS"

.field public static final HAS_DOWNLOADED_PAST_RIDES:Ljava/lang/String; = "HAS_DOWNLOADED_PAST_RIDES"

.field public static final HAS_INSTALLED_GOLDEN_FIRMWARE:Ljava/lang/String; = "HAS_INSTALLED_GOLDEN_FIRMWARE"

.field public static final HAS_REFUSED_NOTIFICATIONS_PERMISSIONS:Ljava/lang/String; = "HAS_REQUESTED_NOTIFICATIONS_PERMISSIONS"

.field public static final HAS_SENT_CRITICAL_BATTERY_NOTIF_KEY:Ljava/lang/String; = "HAS_SENT_CRITICAL_BATTERY_NOTIF_KEY"

.field public static final HAS_SENT_LOW_BATTERY_NOTIF_KEY:Ljava/lang/String; = "HAS_SENT_LOW_BATTERY_NOTIF_KEY"

.field public static final LAST_DISPLAYED_FEATURE_DEMO_VERSION:Ljava/lang/String; = "LAST_DISPLAYED_FEATURE_DEMO_VERSION"

.field public static final LAST_SELECTED_ROUTE_TYPE:Ljava/lang/String; = "LAST_SELECTED_ROUTE_TYPE"

.field public static final NEVER_REMIND_ME_COMPASS_MODE_TIP_KEY:Ljava/lang/String; = "NEVER_REMIND_ME_COMPASS_MODE_TIP_KEY"

.field public static final NEXT_FIRMWARE_UPDATE_NOTIF_TIME:Ljava/lang/String; = "NEXT_FIRMWARE_UPDATE_NOTIF_TIME"

.field public static final POSTPONED_FIRMWARE_UPDATE_TIME:Ljava/lang/String; = "POSTPONED_FIRMWARE_UPDATE_TIME"

.field private static final TAG:Ljava/lang/String; = "AppStorageManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .locals 1

    .line 50
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$deleteLocation$5(Ljava/lang/String;Lio/realm/Realm;)V
    .locals 2

    .line 129
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

    .line 132
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 133
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->deleteFromRealm()V

    .line 134
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$removeItem$4(Ljava/lang/String;Lio/realm/Realm;)V
    .locals 2

    .line 117
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

    .line 120
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    .line 121
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHAppData;->deleteFromRealm()V

    .line 122
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setItemAsync$1(Ljava/lang/String;Ljava/lang/String;Lio/realm/Realm;)V
    .locals 1

    .line 75
    new-instance v0, Lbike/smarthalo/app/models/SHAppData;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHAppData;-><init>()V

    .line 76
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHAppData;->realmSet$key(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHAppData;->realmSet$value(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 78
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p2, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method

.method static synthetic lambda$setItemAsync$2(Lio/realm/Realm;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 82
    sget-object p0, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;->TAG:Ljava/lang/String;

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

    .line 84
    invoke-interface {p2, p0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setItemAsync$3(Lio/realm/Realm;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;Ljava/lang/Throwable;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 88
    sget-object p0, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;->TAG:Ljava/lang/String;

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

    .line 90
    invoke-interface {p2, p0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setItemSync$0(Ljava/lang/String;Ljava/lang/String;Lio/realm/Realm;)V
    .locals 1

    .line 55
    new-instance v0, Lbike/smarthalo/app/models/SHAppData;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHAppData;-><init>()V

    .line 56
    invoke-virtual {v0, p0}, Lbike/smarthalo/app/models/SHAppData;->realmSet$key(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHAppData;->realmSet$value(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lio/realm/Realm;->beginTransaction()V

    const/4 p0, 0x0

    .line 60
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p2, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 61
    invoke-virtual {p2}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method


# virtual methods
.method public deleteLocation(Ljava/lang/String;)V
    .locals 1

    .line 128
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$UolFxXKtKG8BNx4IPr4dB8iS1SM;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$UolFxXKtKG8BNx4IPr4dB8iS1SM;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public getItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 96
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 97
    const-class v1, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHAppData;->realmGet$value()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 99
    :goto_0
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object p1
.end method

.method public getLastSelectedRouteType()Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;
    .locals 2

    const-string v0, "LAST_SELECTED_ROUTE_TYPE"

    .line 140
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    const-class v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 143
    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    :goto_0
    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public removeItem(Ljava/lang/String;)V
    .locals 1

    .line 116
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$M39qU_ufsqaqtiMZNCNdmSHzJv8;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$M39qU_ufsqaqtiMZNCNdmSHzJv8;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public setBooleanItem(Ljava/lang/String;Z)V
    .locals 0

    .line 67
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setItemAsync(Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
    .locals 3

    .line 71
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 73
    new-instance v1, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$L8OdP9oUilp5P1GjSOoVK4xDUPg;

    invoke-direct {v1, p1, p2}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$L8OdP9oUilp5P1GjSOoVK4xDUPg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$fgbVK0T9XeTq8_lPynhV_ylbjIM;

    invoke-direct {p2, v0, p1, p3}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$fgbVK0T9XeTq8_lPynhV_ylbjIM;-><init>(Lio/realm/Realm;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    new-instance v2, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$IJqRPuah2SPRt6AWtJtJUNHzVVA;

    invoke-direct {v2, v0, p1, p3}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$IJqRPuah2SPRt6AWtJtJUNHzVVA;-><init>(Lio/realm/Realm;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    invoke-virtual {v0, v1, p2, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    return-void
.end method

.method public setItemSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 54
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$ubEcoJqZcUGdYtGS3JdHlDgzH_0;

    invoke-direct {v0, p1, p2}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$ubEcoJqZcUGdYtGS3JdHlDgzH_0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public setLastSelectedRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 1

    const-string v0, "LAST_SELECTED_ROUTE_TYPE"

    .line 148
    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
