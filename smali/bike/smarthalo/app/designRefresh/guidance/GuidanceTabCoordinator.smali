.class public final Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabCoordinator;
.super Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
.source "GuidanceTabCoordinator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabCoordinator;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;",
        "presenter",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "view",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


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

    .line 11
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    return-void
.end method
