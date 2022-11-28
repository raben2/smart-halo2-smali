.class public Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;
.super Ljava/lang/Object;
.source "SettingsStorageManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideSettingStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 23
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageManager;->buildManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    move-result-object v0

    return-object v0
.end method
