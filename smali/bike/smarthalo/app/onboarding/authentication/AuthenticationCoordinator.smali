.class public final Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinator;
.super Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;
.source "AuthenticationCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\u0011H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinator;",
        "Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;",
        "context",
        "Landroid/content/Context;",
        "flowCompletionContract",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "viewGenerator",
        "Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;",
        "userCloudManager",
        "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        "connectivityManager",
        "Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "loginSuccess",
        "",
        "showError",
        "descriptionResource",
        "",
        "showForgotPassword",
        "showForgotPasswordConfirmation",
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
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowCompletionContract"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewGenerator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCloudManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;)V

    .line 34
    new-instance p1, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;

    move-object p2, p0

    check-cast p2, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

    invoke-direct {p1, p2, p4, p5}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;-><init>(Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V

    .line 35
    new-instance v0, Lbike/smarthalo/app/onboarding/authentication/login/LoginView;

    move-object v1, p1

    check-cast v1, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract;

    const v2, 0x7f0d00fc

    invoke-interface {p3, v2}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2, p6}, Lbike/smarthalo/app/onboarding/authentication/login/LoginView;-><init>(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 36
    new-instance v1, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast v0, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v1, p1, v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 38
    new-instance p1, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;

    invoke-direct {p1, p2, p4, p5}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;-><init>(Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V

    .line 39
    new-instance p2, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;

    move-object p4, p1

    check-cast p4, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;

    const p5, 0x7f0d00f9

    invoke-interface {p3, p5}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p2, p4, p3, p6}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;-><init>(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 40
    new-instance p3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p2, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {p3, p1, p2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 42
    sget-object p1, Lbike/smarthalo/app/onboarding/authentication/login/LoginView;->Companion:Lbike/smarthalo/app/onboarding/authentication/login/LoginView$Companion;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginView$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    check-cast v1, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 p4, 0x0

    aput-object v1, p2, p4

    check-cast p3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 p4, 0x1

    aput-object p3, p2, p4

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinator;->injectItems(Ljava/lang/String;[Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;)V

    return-void
.end method


# virtual methods
.method public loginSuccess()V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinator;->getFlowCompletionContract()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;->onForwardFinish()V

    return-void
.end method

.method public showError(I)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800ab

    invoke-static {v0, v1, p1}, Llayout/customControls/BaseToast;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public showForgotPassword()V
    .locals 3

    .line 46
    sget-object v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->Companion:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public showForgotPasswordConfirmation()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11017a

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    return-void
.end method
