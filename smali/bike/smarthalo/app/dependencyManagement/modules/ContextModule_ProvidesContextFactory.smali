.class public final Lbike/smarthalo/app/dependencyManagement/modules/ContextModule_ProvidesContextFactory;
.super Ljava/lang/Object;
.source "ContextModule_ProvidesContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule_ProvidesContextFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;)Lbike/smarthalo/app/dependencyManagement/modules/ContextModule_ProvidesContextFactory;
    .locals 1

    .line 22
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule_ProvidesContextFactory;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule_ProvidesContextFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;)V

    return-object v0
.end method

.method public static proxyProvidesContext(Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;)Landroid/content/Context;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;->providesContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 2

    .line 17
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule_ProvidesContextFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

    .line 18
    invoke-virtual {v0}, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;->providesContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule_ProvidesContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
