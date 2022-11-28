.class public Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;
.super Ljava/lang/Object;
.source "ContextModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method providesContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;->context:Landroid/content/Context;

    return-object v0
.end method
