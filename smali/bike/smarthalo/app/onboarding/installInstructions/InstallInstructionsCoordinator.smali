.class public final Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;
.super Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;
.source "InstallInstructionsCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0013\u001a\u00020\u0011H\u0016R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;",
        "Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;",
        "context",
        "Landroid/content/Context;",
        "flowCompletionContract",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "baseActivityContract",
        "Lbike/smarthalo/app/navigationFlow/BaseActivityContract;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/BaseActivityContract;Landroidx/lifecycle/Lifecycle;)V",
        "appWebView",
        "Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;",
        "getAppWebView",
        "()Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;",
        "onBackPressed",
        "",
        "onSH1Selected",
        "onSH2Selected",
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
.field private final appWebView:Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/BaseActivityContract;Landroidx/lifecycle/Lifecycle;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/navigationFlow/BaseActivityContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowCompletionContract"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseActivityContract"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/BaseActivityContract;Landroidx/lifecycle/Lifecycle;)V

    .line 28
    new-instance p2, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenter;

    move-object p4, p0

    check-cast p4, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;

    invoke-direct {p2, p4}, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenter;-><init>(Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;)V

    .line 29
    new-instance p4, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypeView;

    move-object v0, p2

    check-cast v0, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenterContract;

    const v1, 0x7f0d00c7

    invoke-interface {p3, v1}, Lbike/smarthalo/app/navigationFlow/BaseActivityContract;->addView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypeView;-><init>(Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenterContract;Landroid/view/View;)V

    .line 30
    new-instance v0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p2, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p4, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v0, p2, p4}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 32
    new-instance p2, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;

    const p4, 0x7f0d0045

    invoke-interface {p3, p4}, Lbike/smarthalo/app/navigationFlow/BaseActivityContract;->addView(I)Landroid/view/View;

    move-result-object v2

    const p3, 0x7f110205

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "context.getString(R.stri\u2026all_instructions_url_sh2)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;-><init>(Landroid/view/View;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;->appWebView:Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;

    .line 33
    new-instance p1, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebViewCoordinator;

    iget-object p2, p0, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;->appWebView:Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebViewCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;)V

    .line 36
    sget-object p2, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypeView;->Companion:Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypeView$Companion;

    invoke-virtual {p2}, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypeView$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    .line 37
    check-cast v0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 p4, 0x0

    aput-object v0, p3, p4

    .line 38
    check-cast p1, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 p4, 0x1

    aput-object p1, p3, p4

    .line 35
    invoke-virtual {p0, p2, p3}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;->injectItems(Ljava/lang/String;[Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;)V

    return-void
.end method


# virtual methods
.method public final getAppWebView()Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;->appWebView:Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;->getCurrentView()Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;->Companion:Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;->appWebView:Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;->onNavigateBack()Z

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    if-eqz v1, :cond_1

    .line 58
    invoke-super {p0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onSH1Selected()V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbike/smarthalo/app/onboarding/legacy/OldOnboardingInstructionsActivity;->startActivity(Landroid/content/Context;Z)V

    .line 44
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;->getBaseActivityContract()Lbike/smarthalo/app/navigationFlow/BaseActivityContract;

    move-result-object v0

    const v1, 0x7f01000c

    const v2, 0x7f01000d

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/navigationFlow/BaseActivityContract;->overridePendingTransition(II)V

    return-void
.end method

.method public onSH2Selected()V
    .locals 3

    .line 48
    sget-object v0, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView;->Companion:Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/genericViews/webView/AppWebView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
