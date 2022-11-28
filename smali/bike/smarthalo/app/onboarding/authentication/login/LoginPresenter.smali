.class public final Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;
.super Ljava/lang/Object;
.source "LoginPresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginPresenter.kt\nbike/smarthalo/app/onboarding/authentication/login/LoginPresenter\n*L\n1#1,112:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0008\u0010\u001a\u001a\u00020\u0011H\u0016J\u0008\u0010\u001b\u001a\u00020\u0011H\u0002J\u0008\u0010\u001c\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\n0\n0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;",
        "Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract;",
        "authenticationCoordinator",
        "Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;",
        "userCloudManager",
        "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        "connectivityManager",
        "Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
        "(Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V",
        "currentViewState",
        "Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;",
        "currentViewStateSource",
        "Lio/reactivex/processors/FlowableProcessor;",
        "kotlin.jvm.PlatformType",
        "loginSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "forgotPassword",
        "",
        "login",
        "observeViewState",
        "Lio/reactivex/Flowable;",
        "onEmailTextChanged",
        "email",
        "",
        "onPasswordTextChanged",
        "password",
        "onStop",
        "onSuccess",
        "setLoginButtonState",
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
.field private final authenticationCoordinator:Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

.field private final connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

.field private currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

.field private currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;",
            ">;"
        }
    .end annotation
.end field

.field private loginSubscription:Lio/reactivex/disposables/Disposable;

.field private final userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "authenticationCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCloudManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->authenticationCoordinator:Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

    iput-object p2, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iput-object p3, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    .line 28
    new-instance p1, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-direct {p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    const/4 p1, 0x1

    .line 29
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const-string p2, "ReplayProcessor.createWi\u2026wState>(1).toSerialized()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    .line 33
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object p2, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getAuthenticationCoordinator$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;
    .locals 0

    .line 23
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->authenticationCoordinator:Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

    return-object p0
.end method

.method public static final synthetic access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;
    .locals 0

    .line 23
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    return-object p0
.end method

.method public static final synthetic access$getCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)Lio/reactivex/processors/FlowableProcessor;
    .locals 0

    .line 23
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-object p0
.end method

.method public static final synthetic access$onSuccess(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->onSuccess()V

    return-void
.end method

.method public static final synthetic access$setCurrentViewState$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    return-void
.end method

.method public static final synthetic access$setCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;Lio/reactivex/processors/FlowableProcessor;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-void
.end method

.method private final onSuccess()V
    .locals 4

    .line 74
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->loginSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    const-wide/16 v0, 0x12c

    .line 76
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 77
    new-instance v1, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$onSuccess$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$onSuccess$1;-><init>(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->loginSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final setLoginButtonState()V
    .locals 2

    .line 100
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Disabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    .line 103
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->getLoginButtonState()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->setLoginButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 105
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public forgotPassword()V
    .locals 1

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->authenticationCoordinator:Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;->showForgotPassword()V

    return-void
.end method

.method public login()V
    .locals 4

    .line 41
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->FormatError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    goto :goto_0

    .line 45
    :cond_0
    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    .line 44
    :goto_0
    invoke-virtual {v1, v2}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->setEmailError(Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;)V

    .line 47
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->getEmailError()Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    move-result-object v1

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    if-ne v1, v2, :cond_2

    .line 48
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->authenticationCoordinator:Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

    const v1, 0x7f11017f

    invoke-interface {v0, v1}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;->showError(I)V

    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Ongoing:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v1, v2}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->setLoginButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 55
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 56
    iget-object v2, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v2}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->loginAndInitializeUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 57
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Single;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    .line 58
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 59
    new-instance v1, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter$login$1;-><init>(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->loginSubscription:Lio/reactivex/disposables/Disposable;

    .line 70
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void

    .line 41
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public observeViewState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    check-cast v0, Lio/reactivex/Flowable;

    return-object v0
.end method

.method public onEmailTextChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->setEmail(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->getEmailError()Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    if-eq p1, v0, :cond_0

    .line 92
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->setEmailError(Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;)V

    .line 93
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->setLoginButtonState()V

    return-void
.end method

.method public onPasswordTextChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/authentication/login/LoginViewState;->setPassword(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->setLoginButtonState()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 23
    invoke-static {p0}, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract$DefaultImpls;->onStart(Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenterContract;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 110
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/login/LoginPresenter;->loginSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
