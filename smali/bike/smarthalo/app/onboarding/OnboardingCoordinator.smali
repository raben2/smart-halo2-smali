.class public final Lbike/smarthalo/app/onboarding/OnboardingCoordinator;
.super Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;
.source "OnboardingCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0003\u0019\u001c!\u0018\u00002\u00020\u00012\u00020\u0002BM\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020&H\u0016J\u0008\u0010(\u001a\u00020&H\u0016J\u0008\u0010)\u001a\u00020&H\u0002J3\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020,2!\u0010-\u001a\u001d\u0012\u0013\u0012\u00110,\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(1\u0012\u0004\u0012\u00020&0.H\u0016JB\u00102\u001a\u00020&2\u0008\u00103\u001a\u0004\u0018\u0001042\u0006\u00105\u001a\u0002062!\u00107\u001a\u001d\u0012\u0013\u0012\u001104\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u00020&0.H\u0016\u00a2\u0006\u0002\u00109JB\u0010:\u001a\u00020&2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0006\u00105\u001a\u0002062!\u0010=\u001a\u001d\u0012\u0013\u0012\u00110<\u00a2\u0006\u000c\u0008/\u0012\u0008\u00080\u0012\u0004\u0008\u0008(8\u0012\u0004\u0012\u00020&0.H\u0016\u00a2\u0006\u0002\u0010>J.\u0010?\u001a\u00020&2\u0006\u0010@\u001a\u0002042\u0006\u0010A\u001a\u0002042\u0006\u0010B\u001a\u0002042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020&0DH\u0016J\u0010\u0010E\u001a\u00020&2\u0006\u0010F\u001a\u000204H\u0016J\u0006\u0010G\u001a\u00020&J\u0008\u0010H\u001a\u00020&H\u0016J\u0008\u0010I\u001a\u00020&H\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u0010\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\"R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u0006J"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/OnboardingCoordinator;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;",
        "Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;",
        "context",
        "Landroid/content/Context;",
        "flowCompletionContract",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "flowActivityContract",
        "Lbike/smarthalo/app/navigationFlow/FlowActivityContract;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "userStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "userCloudManager",
        "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        "viewProgressListContract",
        "Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;",
        "connectivityManager",
        "Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/FlowActivityContract;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "getFlowActivityContract",
        "()Lbike/smarthalo/app/navigationFlow/FlowActivityContract;",
        "loginCompletionContract",
        "bike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1",
        "Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;",
        "permissionsCompletionContract",
        "bike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1",
        "Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;",
        "permissionsCoordinator",
        "Lbike/smarthalo/app/permissions/PermissionsCoordinator;",
        "signupCompletionContract",
        "bike/smarthalo/app/onboarding/OnboardingCoordinator$signupCompletionContract$1",
        "Lbike/smarthalo/app/onboarding/OnboardingCoordinator$signupCompletionContract$1;",
        "getViewProgressListContract",
        "()Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;",
        "onBackPressed",
        "",
        "onComplete",
        "onFitnessCompleted",
        "onLoginCompleted",
        "pickGender",
        "currentGender",
        "Lbike/smarthalo/app/models/userModels/Gender;",
        "onGenderPicked",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "selectedGender",
        "pickHeight",
        "currentHeight",
        "",
        "isMetric",
        "",
        "onHeightPicked",
        "height",
        "(Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V",
        "pickWeight",
        "currentWeight",
        "",
        "onWeightPicked",
        "(Ljava/lang/Double;ZLkotlin/jvm/functions/Function1;)V",
        "showConfirmation",
        "description",
        "affirmative",
        "negative",
        "onConfirm",
        "Lkotlin/Function0;",
        "showError",
        "descriptionResource",
        "showFitness",
        "showLogin",
        "showSignUp",
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
.field private final flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loginCompletionContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;

.field private final permissionsCompletionContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;

.field private permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

.field private final signupCompletionContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinator$signupCompletionContract$1;

.field private final viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/FlowActivityContract;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/navigationFlow/FlowActivityContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v4, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    const-string v5, "context"

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "flowCompletionContract"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "flowActivityContract"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "lifecycle"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "userStorageManager"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "userCloudManager"

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "viewProgressListContract"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "connectivityManager"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "analyticsManager"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object v5, v2

    check-cast v5, Lbike/smarthalo/app/navigationFlow/BaseActivityContract;

    invoke-direct {v0, v9, v1, v5, v3}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/BaseActivityContract;Landroidx/lifecycle/Lifecycle;)V

    iput-object v2, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    iput-object v4, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    .line 52
    new-instance v2, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;

    invoke-direct {v2, v0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;-><init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinator;)V

    iput-object v2, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->loginCompletionContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;

    .line 63
    new-instance v2, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$signupCompletionContract$1;

    invoke-direct {v2, v0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$signupCompletionContract$1;-><init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinator;)V

    iput-object v2, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->signupCompletionContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinator$signupCompletionContract$1;

    .line 75
    new-instance v2, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;

    invoke-direct {v2, v0, v1}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;-><init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinator;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;)V

    iput-object v2, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->permissionsCompletionContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;

    .line 89
    new-instance v1, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenter;

    move-object v14, v0

    check-cast v14, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    invoke-direct {v1, v14}, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenter;-><init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;)V

    .line 90
    new-instance v2, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;

    move-object v3, v1

    check-cast v3, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;

    iget-object v4, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    const v5, 0x7f0d00fb

    invoke-interface {v4, v5}, Lbike/smarthalo/app/navigationFlow/FlowActivityContract;->addView(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;-><init>(Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 91
    new-instance v15, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast v1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast v2, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v15, v1, v2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 93
    new-instance v16, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinator;

    .line 95
    iget-object v1, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->loginCompletionContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;

    move-object v3, v1

    check-cast v3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    .line 96
    iget-object v1, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    move-object v4, v1

    check-cast v4, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 93
    invoke-direct/range {v1 .. v7}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 102
    new-instance v17, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;

    .line 104
    iget-object v1, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->signupCompletionContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinator$signupCompletionContract$1;

    move-object v3, v1

    check-cast v3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    .line 105
    iget-object v1, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    move-object v4, v1

    check-cast v4, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;

    .line 109
    iget-object v8, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    move-object/from16 v1, v17

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    .line 102
    invoke-direct/range {v1 .. v8}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;)V

    .line 112
    new-instance v1, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;

    invoke-direct {v1, v14, v11, v10, v12}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;-><init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V

    .line 113
    new-instance v2, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;

    move-object v3, v1

    check-cast v3, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;

    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getViewGenerator()Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;

    move-result-object v4

    const v5, 0x7f0d00fd

    invoke-interface {v4, v5}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;Landroid/view/View;)V

    .line 114
    new-instance v10, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast v1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast v2, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v10, v1, v2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 116
    new-instance v11, Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    .line 118
    iget-object v1, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->permissionsCompletionContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;

    move-object v3, v1

    check-cast v3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getViewGenerator()Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;

    move-result-object v4

    .line 120
    iget-object v1, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    move-object v5, v1

    check-cast v5, Lbike/smarthalo/app/permissions/PermissionActivityContract;

    .line 121
    iget-object v6, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v9, p9

    .line 116
    invoke-direct/range {v1 .. v9}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/permissions/PermissionActivityContract;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;ZZLbike/smarthalo/app/analytics/AnalyticsContract;)V

    iput-object v11, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    .line 127
    new-instance v1, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;

    invoke-direct {v1, v14}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;-><init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;)V

    .line 128
    new-instance v2, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;

    move-object v3, v1

    check-cast v3, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;

    invoke-virtual/range {p0 .. p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getViewGenerator()Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;

    move-result-object v4

    const v5, 0x7f0d00f8

    invoke-interface {v4, v5}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;-><init>(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;Landroid/view/View;)V

    .line 129
    new-instance v3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast v1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast v2, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v3, v1, v2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 132
    sget-object v1, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->Companion:Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    .line 133
    check-cast v15, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 v4, 0x0

    aput-object v15, v2, v4

    .line 134
    check-cast v17, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 v5, 0x1

    aput-object v17, v2, v5

    .line 135
    check-cast v16, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 v5, 0x2

    aput-object v16, v2, v5

    .line 136
    check-cast v10, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 v6, 0x3

    aput-object v10, v2, v6

    .line 137
    iget-object v6, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    if-nez v6, :cond_0

    const-string v7, "permissionsCoordinator"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v6, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 v7, 0x4

    aput-object v6, v2, v7

    const/4 v6, 0x5

    .line 138
    check-cast v3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    aput-object v3, v2, v6

    .line 131
    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->injectItems(Ljava/lang/String;[Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;)V

    .line 140
    iget-object v1, v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2, v5, v2}, Lbike/smarthalo/app/navigationFlow/FlowActivityContract$DefaultImpls;->toggleBackButtonVisibility$default(Lbike/smarthalo/app/navigationFlow/FlowActivityContract;ZLjava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$onLoginCompleted(Lbike/smarthalo/app/onboarding/OnboardingCoordinator;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->onLoginCompleted()V

    return-void
.end method

.method private final onLoginCompleted()V
    .locals 4

    .line 202
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    if-nez v0, :cond_0

    const-string v1, "permissionsCoordinator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->start()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->onComplete()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    const/4 v2, 0x0

    const v3, 0x7f010045

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbike/smarthalo/app/navigationFlow/FlowActivityContract;->toggleBackButtonVisibility(ZLjava/lang/Integer;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 207
    invoke-static {p0, v0, v2, v1, v2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->increment()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getFlowActivityContract()Lbike/smarthalo/app/navigationFlow/FlowActivityContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    return-object v0
.end method

.method public final getViewProgressListContract()Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getCurrentFlowItem()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;->getCurrentView()Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->Companion:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getCurrentFlowItem()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;->getCurrentView()Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->Companion:Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHRoutingHelper;->launchMainActivity(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getFlowCompletionContract()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;->onForwardFinish()V

    return-void
.end method

.method public onFitnessCompleted()V
    .locals 3

    .line 213
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinator;

    if-nez v0, :cond_0

    const-string v1, "permissionsCoordinator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->start()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 215
    sget-object v0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->Companion:Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2, v1, v2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->selectLast()V

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {p0, v0, v2, v1, v2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->increment()V

    :goto_0
    return-void
.end method

.method public pickGender(Lbike/smarthalo/app/models/userModels/Gender;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/userModels/Gender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/userModels/Gender;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lbike/smarthalo/app/models/userModels/Gender;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "currentGender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onGenderPicked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Llayout/pickers/GenderPicker;->pickGender(Landroid/content/Context;Lbike/smarthalo/app/models/userModels/Gender;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public pickHeight(Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onHeightPicked"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1, p3}, Llayout/pickers/HeightPicker;->pickHeight(Landroid/content/Context;ZLjava/lang/Integer;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public pickWeight(Ljava/lang/Double;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onWeightPicked"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1, p3}, Llayout/pickers/WeightPicker;->pickWeight(Landroid/content/Context;ZLjava/lang/Double;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public showConfirmation(IIILkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onConfirm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    new-instance v1, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$showConfirmation$1;

    invoke-direct {v1, p4}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$showConfirmation$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

    .line 184
    invoke-static {v0, p1, p2, p3, v1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    return-void
.end method

.method public showError(I)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800ab

    invoke-static {v0, v1, p1}, Llayout/customControls/BaseToast;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public final showFitness()V
    .locals 3

    .line 162
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    const v1, 0x7f010045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lbike/smarthalo/app/navigationFlow/FlowActivityContract;->toggleBackButtonVisibility(ZLjava/lang/Integer;)V

    .line 163
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->increment()V

    .line 164
    sget-object v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->Companion:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public showLogin()V
    .locals 3

    .line 151
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    const v1, 0x7f010044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lbike/smarthalo/app/navigationFlow/FlowActivityContract;->toggleBackButtonVisibility(ZLjava/lang/Integer;)V

    .line 152
    sget-object v0, Lbike/smarthalo/app/onboarding/authentication/login/LoginView;->Companion:Lbike/smarthalo/app/onboarding/authentication/login/LoginView$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public showSignUp()V
    .locals 4

    .line 156
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->flowActivityContract:Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    const v1, 0x7f010044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lbike/smarthalo/app/navigationFlow/FlowActivityContract;->toggleBackButtonVisibility(ZLjava/lang/Integer;)V

    .line 157
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->initialize(IILjava/lang/Integer;)V

    .line 158
    sget-object v0, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroView;->Companion:Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroView$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/termsIntro/TermsIntroView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
