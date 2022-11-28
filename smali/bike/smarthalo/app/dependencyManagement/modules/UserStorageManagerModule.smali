.class public Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;
.super Ljava/lang/Object;
.source "UserStorageManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method providedUserStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 20
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageManager;->buildManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    move-result-object v0

    return-object v0
.end method
