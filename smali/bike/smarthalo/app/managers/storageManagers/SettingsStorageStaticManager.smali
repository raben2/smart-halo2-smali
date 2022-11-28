.class public Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;
.super Ljava/lang/Object;
.source "SettingsStorageStaticManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserSettings()Lbike/smarthalo/app/models/SHSettings;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 43
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 45
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

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 46
    const-class v3, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHSettings;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    return-object v2

    .line 52
    :cond_1
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHSettings;

    .line 54
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-object v1
.end method

.method public static initSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->initSettings(Ljava/util/HashMap;)V

    return-void
.end method

.method public static initSettings(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$L6IbPL98P6fSnOnZcy67Nz-63ok;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$L6IbPL98P6fSnOnZcy67Nz-63ok;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method static synthetic lambda$initSettings$0(Ljava/util/HashMap;Lio/realm/Realm;)V
    .locals 4

    .line 25
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "current"

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 29
    :goto_0
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHSettings;

    if-eqz v1, :cond_1

    return-void

    .line 34
    :cond_1
    invoke-static {v0, p0}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->initializeSettings(ILjava/util/HashMap;)Lbike/smarthalo/app/models/SHSettings;

    move-result-object p0

    .line 35
    invoke-virtual {p1}, Lio/realm/Realm;->beginTransaction()V

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Lio/realm/ImportFlag;

    invoke-virtual {p1, p0, v0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 37
    invoke-virtual {p1}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateUserSettings$1(Ljava/lang/String;ILio/realm/Realm;)V
    .locals 3

    .line 61
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p2, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "current"

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p2, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHSettings;

    if-nez v0, :cond_1

    return-void

    .line 71
    :cond_1
    invoke-virtual {p2}, Lio/realm/Realm;->beginTransaction()V

    .line 72
    invoke-static {v0, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->setSetting(Lbike/smarthalo/app/models/SHSettings;Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 73
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p2, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 74
    invoke-virtual {p2}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method static synthetic lambda$updateUserSettings$2(Ljava/lang/String;Ljava/lang/String;Lio/realm/Realm;)V
    .locals 3

    .line 80
    const-class v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p2, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "key"

    const-string v2, "current"

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    const-class v1, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p2, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHSettings;

    if-nez v0, :cond_1

    return-void

    .line 90
    :cond_1
    invoke-virtual {p2}, Lio/realm/Realm;->beginTransaction()V

    .line 91
    invoke-static {v0, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageHelper;->setSetting(Lbike/smarthalo/app/models/SHSettings;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 92
    new-array p0, p0, [Lio/realm/ImportFlag;

    invoke-virtual {p2, v0, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    .line 93
    invoke-virtual {p2}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method public static updateUserSettings(Ljava/lang/String;I)V
    .locals 1

    .line 60
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$2x8d4YZXNgIVr7ukir2ZfDN98eQ;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$2x8d4YZXNgIVr7ukir2ZfDN98eQ;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method public static updateUserSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 79
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$is3gxU2nWTkx7swHhkNZg9HIelE;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageStaticManager$is3gxU2nWTkx7swHhkNZg9HIelE;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method
