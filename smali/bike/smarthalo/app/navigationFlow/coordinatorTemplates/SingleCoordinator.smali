.class public Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
.super Ljava/lang/Object;
.source "SingleCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;",
        "presenter",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "view",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V",
        "getPresenter",
        "()Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "getView",
        "()Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "getCurrentView",
        "onStart",
        "",
        "onStop",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final presenter:Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->presenter:Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    return-void
.end method


# virtual methods
.method public getCurrentView()Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    return-object v0
.end method

.method public final getPresenter()Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->presenter:Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    return-object v0
.end method

.method public final getView()Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->presenter:Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;->onStart()V

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->onShown()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 18
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->presenter:Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;->onStop()V

    .line 19
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->onHidden()V

    return-void
.end method
