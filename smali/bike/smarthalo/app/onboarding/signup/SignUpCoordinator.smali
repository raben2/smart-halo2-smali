.class public final Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;
.super Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;
.source "SignUpCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B=\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0016\u0010\u0017\u001a\u00020\u00152\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0015H\u0016J5\u0010\u001b\u001a\u00020\u00152\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008 \u0012\u0008\u0008!\u0012\u0004\u0008\u0008(\"\u0012\u0004\u0012\u00020\u00150\u001fH\u0016J\u0010\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020\u0015H\u0016R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\'"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;",
        "Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;",
        "context",
        "Landroid/content/Context;",
        "flowCompletionContract",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "viewGenerator",
        "Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;",
        "userCloudManager",
        "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        "userStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "connectivityManager",
        "Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
        "viewProgressListContract",
        "Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;)V",
        "getViewProgressListContract",
        "()Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;",
        "acceptTerms",
        "",
        "declineTerms",
        "navigateBack",
        "onNavigationCompleted",
        "Lkotlin/Function0;",
        "onSignUpSuccess",
        "pickDate",
        "currentDate",
        "Ljava/util/Date;",
        "onDatePicked",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "newDate",
        "showError",
        "descriptionResource",
        "",
        "showTermsFull",
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
.field private final viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;)V
    .locals 2
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
    .param p5    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
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

    const-string v0, "userStorageManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "connectivityManager"

    invoke-static {p6, p5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "viewProgressListContract"

    invoke-static {p7, p5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;)V

    iput-object p7, p0, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    .line 38
    new-instance p1, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenter;

    move-object p2, p0

    check-cast p2, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenter;-><init>(Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;)V

    .line 39
    new-instance p5, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroView;

    move-object p7, p1

    check-cast p7, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenterContract;

    const v0, 0x7f0d00ff

    invoke-interface {p3, v0}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p5, p7, v0}, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroView;-><init>(Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroPresenterContract;Landroid/view/View;)V

    .line 40
    new-instance p7, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p5, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {p7, p1, p5}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 42
    new-instance p1, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenter;

    invoke-direct {p1, p2}, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenter;-><init>(Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;)V

    .line 43
    new-instance p5, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsView;

    move-object v0, p1

    check-cast v0, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenterContract;

    const v1, 0x7f0d00fa

    invoke-interface {p3, v1}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p5, v0, v1}, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsView;-><init>(Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsPresenterContract;Landroid/view/View;)V

    .line 44
    new-instance v0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p5, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v0, p1, p5}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 46
    new-instance p1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;

    invoke-direct {p1, p2, p4, p6}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;-><init>(Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V

    .line 47
    new-instance p2, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;

    move-object p4, p1

    check-cast p4, Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;

    const p5, 0x7f0d00fe

    invoke-interface {p3, p5}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;Landroid/view/View;)V

    .line 48
    new-instance p3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p2, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {p3, p1, p2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 50
    sget-object p1, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroView;->Companion:Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroView$Companion;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroView$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    check-cast p7, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 p4, 0x0

    aput-object p7, p2, p4

    check-cast v0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 p4, 0x1

    aput-object v0, p2, p4

    check-cast p3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 p4, 0x2

    aput-object p3, p2, p4

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->injectItems(Ljava/lang/String;[Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;)V

    return-void
.end method


# virtual methods
.method public acceptTerms()V
    .locals 3

    .line 59
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->increment()V

    .line 60
    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->Companion:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public declineTerms()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->getFlowCompletionContract()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;->onBackwardFinish()V

    .line 65
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->reset()V

    return-void
.end method

.method public final getViewProgressListContract()Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    return-object v0
.end method

.method public navigateBack(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onNavigationCompleted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateBack(Lkotlin/jvm/functions/Function0;)V

    .line 82
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    invoke-interface {p1}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->decrement()V

    return-void
.end method

.method public onSignUpSuccess()V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator$onSignUpSuccess$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator$onSignUpSuccess$1;-><init>(Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3, v1}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method public pickDate(Ljava/util/Date;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Date;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onDatePicked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showDatePickerDialog(Landroid/content/Context;ZLjava/util/Date;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public showError(I)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800ab

    invoke-static {v0, v1, p1}, Llayout/customControls/BaseToast;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public showTermsFull()V
    .locals 3

    .line 54
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->increment()V

    .line 55
    sget-object v0, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsView;->Companion:Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsView$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/fullTerms/FullTermsView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
