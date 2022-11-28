.class public final Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract$DefaultImpls;
.super Ljava/lang/Object;
.source "LoginPresenterContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static onStart(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract;)V
    .locals 0

    check-cast p0, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStart(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public static onStop(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract;)V
    .locals 0

    check-cast p0, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStop(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method
