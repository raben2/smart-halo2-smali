.class public Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;
.super Ljava/lang/Object;
.source "AppStorageManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideAppStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 24
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;->buildManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    move-result-object v0

    return-object v0
.end method
