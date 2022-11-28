.class public final Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule_ProvideKeyManagerFactory;
.super Ljava/lang/Object;
.source "KeyManagerModule_ProvideKeyManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/KeyManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule_ProvideKeyManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;)Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule_ProvideKeyManagerFactory;
    .locals 1

    .line 22
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule_ProvideKeyManagerFactory;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule_ProvideKeyManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;)V

    return-object v0
.end method

.method public static proxyProvideKeyManager(Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;)Lbike/smarthalo/app/managers/KeyManager;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;->provideKeyManager()Lbike/smarthalo/app/managers/KeyManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/KeyManager;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/KeyManager;
    .locals 2

    .line 17
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule_ProvideKeyManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    .line 18
    invoke-virtual {v0}, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;->provideKeyManager()Lbike/smarthalo/app/managers/KeyManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule_ProvideKeyManagerFactory;->get()Lbike/smarthalo/app/managers/KeyManager;

    move-result-object v0

    return-object v0
.end method
