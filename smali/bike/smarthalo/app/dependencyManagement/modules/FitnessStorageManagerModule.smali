.class public Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;
.super Ljava/lang/Object;
.source "FitnessStorageManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideFitnessStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 30
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageManager;->buildManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    move-result-object v0

    return-object v0
.end method
