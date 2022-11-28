.class public Lbike/smarthalo/app/managers/storageManagers/RealmInitializer;
.super Ljava/lang/Object;
.source "RealmInitializer.java"


# static fields
.field public static final CURRENT_REALM_SCHEMA_VERSION:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeRealm()V
    .locals 5

    .line 17
    invoke-static {}, Lio/realm/Realm;->getDefaultConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 19
    :cond_0
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/RealmInitializer;->loadDefaultRealmConfig()V

    :cond_1
    return-void
.end method

.method private static loadDefaultRealmConfig()V
    .locals 3

    .line 37
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-wide/16 v1, 0x10

    .line 38
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->compactOnLaunch()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lio/realm/Realm;->setDefaultConfiguration(Lio/realm/RealmConfiguration;)V

    .line 45
    :try_start_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0
    :try_end_0
    .catch Lio/realm/exceptions/RealmMigrationNeededException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/realm/exceptions/RealmFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    invoke-static {v0}, Lio/realm/Realm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    .line 54
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/RealmInitializer;->loadDefaultRealmConfig()V

    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :catch_1
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/RealmInitializer;->migrateRealm()Lio/realm/Realm;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    :cond_0
    return-void
.end method

.method private static migrateRealm()Lio/realm/Realm;
    .locals 3

    .line 65
    :try_start_0
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-wide/16 v1, 0x10

    .line 66
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/realmMigrations/SHRealmMigration;

    invoke-direct {v1}, Lbike/smarthalo/app/realmMigrations/SHRealmMigration;-><init>()V

    .line 67
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->migration(Lio/realm/RealmMigration;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lio/realm/Realm;->setDefaultConfiguration(Lio/realm/RealmConfiguration;)V

    .line 71
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/RealmInitializer;->recoverRealm()Lio/realm/Realm;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static recoverRealm()Lio/realm/Realm;
    .locals 3

    .line 24
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    .line 25
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x10

    .line 26
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lio/realm/Realm;->setDefaultConfiguration(Lio/realm/RealmConfiguration;)V

    .line 31
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    return-object v0
.end method
