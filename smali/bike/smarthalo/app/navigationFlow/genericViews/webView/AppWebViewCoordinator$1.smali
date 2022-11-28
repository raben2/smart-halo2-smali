.class public final Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebViewCoordinator$1;
.super Ljava/lang/Object;
.source "AppWebViewCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebViewCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "bike/smarthalo/app/navigationFlow/genericViews/webView/AppWebViewCoordinator$1",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
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
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .line 10
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStart(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 10
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStop(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method
