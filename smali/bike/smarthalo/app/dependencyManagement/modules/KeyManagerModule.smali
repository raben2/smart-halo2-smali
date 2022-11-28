.class public Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;
.super Ljava/lang/Object;
.source "KeyManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideKeyManager()Lbike/smarthalo/app/managers/KeyManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 20
    new-instance v0, Lbike/smarthalo/app/managers/KeyManager;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/KeyManager;-><init>()V

    return-object v0
.end method
