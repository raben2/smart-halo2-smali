.class public final Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebViewCoordinator;
.super Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
.source "AppWebViewCoordinator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebViewCoordinator;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;",
        "view",
        "Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;",
        "(Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;)V",
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
.method public constructor <init>(Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebViewCoordinator$1;

    invoke-direct {v0}, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebViewCoordinator$1;-><init>()V

    check-cast v0, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    return-void
.end method
