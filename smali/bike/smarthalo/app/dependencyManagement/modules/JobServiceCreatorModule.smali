.class public Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;
.super Ljava/lang/Object;
.source "JobServiceCreatorModule.java"


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
.method public provideJobServiceCreator(Landroid/content/Context;)Lbike/smarthalo/app/services/JobServiceCreator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 23
    new-instance v0, Lbike/smarthalo/app/services/JobServiceCreator;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/services/JobServiceCreator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
