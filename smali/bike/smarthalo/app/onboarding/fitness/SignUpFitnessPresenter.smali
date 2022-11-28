.class public final Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;
.super Ljava/lang/Object;
.source "SignUpFitnessPresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignUpFitnessPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignUpFitnessPresenter.kt\nbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter\n*L\n1#1,134:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0016H\u0016J\u0008\u0010\u001b\u001a\u00020\u0016H\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016J\u0008\u0010\u001d\u001a\u00020\u0016H\u0002J\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\u0010\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\r0\r0\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;",
        "Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "coordinatorContract",
        "Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;",
        "userCloudManager",
        "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        "userStorageContract",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "connectivityManager",
        "Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
        "(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V",
        "currentViewState",
        "Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;",
        "currentViewStateSource",
        "Lio/reactivex/processors/FlowableProcessor;",
        "kotlin.jvm.PlatformType",
        "fitnessSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "getObservableViewState",
        "Lio/reactivex/Flowable;",
        "onGenderSelected",
        "",
        "onHeightMetricChanged",
        "isMetric",
        "",
        "onHeightSelected",
        "onStop",
        "onSubmit",
        "onSuccess",
        "onWeightSelected",
        "onWeightUnitChanged",
        "skip",
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
.field private final connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

.field private final coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

.field private currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

.field private currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;",
            ">;"
        }
    .end annotation
.end field

.field private fitnessSubscription:Lio/reactivex/disposables/Disposable;

.field private final userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

.field private final userStorageContract:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "coordinatorContract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCloudManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStorageContract"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    iput-object p2, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iput-object p3, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->userStorageContract:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iput-object p4, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    .line 33
    new-instance p1, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-direct {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    const/4 p1, 0x1

    .line 34
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const-string p2, "ReplayProcessor.createWi\u2026wState>(1).toSerialized()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    .line 38
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object p2, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getCoordinatorContract$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;
    .locals 0

    .line 26
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    return-object p0
.end method

.method public static final synthetic access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;
    .locals 0

    .line 26
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    return-object p0
.end method

.method public static final synthetic access$getCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)Lio/reactivex/processors/FlowableProcessor;
    .locals 0

    .line 26
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-object p0
.end method

.method public static final synthetic access$onSuccess(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->onSuccess()V

    return-void
.end method

.method public static final synthetic access$setCurrentViewState$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    return-void
.end method

.method public static final synthetic access$setCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;Lio/reactivex/processors/FlowableProcessor;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-void
.end method

.method private final onSuccess()V
    .locals 4

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->fitnessSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    const-wide/16 v0, 0x12c

    .line 88
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 89
    new-instance v1, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSuccess$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSuccess$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->fitnessSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public getObservableViewState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 132
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    check-cast v0, Lio/reactivex/Flowable;

    return-object v0
.end method

.method public onGenderSelected()V
    .locals 3

    .line 115
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getGender()Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lbike/smarthalo/app/models/userModels/Gender;->NotDisclosed:Lbike/smarthalo/app/models/userModels/Gender;

    :goto_0
    new-instance v2, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onGenderSelected$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onGenderSelected$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;->pickGender(Lbike/smarthalo/app/models/userModels/Gender;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onHeightMetricChanged(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->setHeightMetric(Z)V

    .line 128
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onHeightSelected()V
    .locals 4

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v2}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isHeightMetric()Z

    move-result v2

    new-instance v3, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onHeightSelected$1;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onHeightSelected$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2, v3}, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;->pickHeight(Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 26
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStart(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->fitnessSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSubmit()V
    .locals 5

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getWeight()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getGender()Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->skip()V

    goto/16 :goto_2

    .line 51
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    const v1, 0x7f11017f

    invoke-interface {v0, v1}, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;->showError(I)V

    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->userStorageContract:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$height(Ljava/lang/Double;)V

    .line 59
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getWeight()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHUser;->realmSet$weight(Ljava/lang/Double;)V

    .line 60
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getGender()Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lbike/smarthalo/app/models/userModels/Gender;->getValue()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$gender(Ljava/lang/Integer;)V

    .line 62
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isHeightMetric()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$heightMetric(Ljava/lang/Boolean;)V

    .line 63
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isWeightMetric()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$weightMetric(Ljava/lang/Boolean;)V

    .line 65
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Ongoing:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v1, v2}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->setConfirmButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 66
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v2, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v1, v2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 68
    invoke-interface {v1, v0}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->updateUser(Lbike/smarthalo/app/models/SHUser;)Lio/reactivex/Single;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 69
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Single;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    .line 70
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 71
    new-instance v1, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onSubmit$$inlined$let$lambda$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->fitnessSubscription:Lio/reactivex/disposables/Disposable;

    :goto_2
    return-void
.end method

.method public onWeightSelected()V
    .locals 4

    .line 101
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getWeight()Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v2}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->isWeightMetric()Z

    move-result v2

    new-instance v3, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onWeightSelected$1;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$onWeightSelected$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2, v3}, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;->pickWeight(Ljava/lang/Double;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onWeightUnitChanged(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->setWeightMetric(Z)V

    .line 123
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public skip()V
    .locals 5

    .line 93
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;->coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    .line 97
    new-instance v1, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$skip$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter$skip$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenter;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const v2, 0x7f1102f5

    const v3, 0x7f1102f4

    const v4, 0x7f1102f3

    .line 93
    invoke-interface {v0, v2, v3, v4, v1}, Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;->showConfirmation(IIILkotlin/jvm/functions/Function0;)V

    return-void
.end method
