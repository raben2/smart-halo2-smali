.class public final Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;
.super Ljava/lang/Object;
.source "ForgetPasswordPresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\n0\n0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;",
        "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;",
        "authenticationCoordinator",
        "Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;",
        "userCloudManager",
        "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        "connectivityManager",
        "Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
        "(Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V",
        "currentViewState",
        "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;",
        "currentViewStateSource",
        "Lio/reactivex/processors/FlowableProcessor;",
        "kotlin.jvm.PlatformType",
        "forgetPasswordSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "forgetPassword",
        "",
        "observeViewState",
        "Lio/reactivex/Flowable;",
        "onEmailTextChanged",
        "email",
        "",
        "onStop",
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

.field private currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

.field private currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;",
            ">;"
        }
    .end annotation
.end field

.field private forgetPasswordSubscription:Lio/reactivex/disposables/Disposable;

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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->authenticationCoordinator:Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

    iput-object p2, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iput-object p3, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    .line 25
    new-instance p1, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-direct {p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    const/4 p1, 0x1

    .line 26
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const-string p2, "ReplayProcessor.createWi\u2026wState>(1).toSerialized()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    .line 30
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object p2, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getAuthenticationCoordinator$p(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;)Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;
    .locals 0

    .line 20
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->authenticationCoordinator:Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

    return-object p0
.end method


# virtual methods
.method public forgetPassword()V
    .locals 2

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->isEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->FormatError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    goto :goto_0

    .line 40
    :cond_0
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->setEmailError(Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;)V

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->getEmailError()Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    if-ne v0, v1, :cond_2

    .line 43
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->authenticationCoordinator:Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;

    const v1, 0x7f11017f

    invoke-interface {v0, v1}, Lbike/smarthalo/app/onboarding/authentication/AuthenticationCoordinatorContract;->showError(I)V

    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 49
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->forgotPassword(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 50
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 51
    new-instance v1, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter$forgetPassword$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter$forgetPassword$1;-><init>(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->forgetPasswordSubscription:Lio/reactivex/disposables/Disposable;

    .line 54
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public observeViewState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

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

    .line 58
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->setEmail(Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->hasValue(Ljava/lang/String;)Z

    move-result p1

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->isButtonEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->setButtonEnabled(Z)V

    .line 63
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 66
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->getEmailError()Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    if-eq p1, v0, :cond_1

    .line 67
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->setEmailError(Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;)V

    .line 68
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 20
    invoke-static {p0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract$DefaultImpls;->onStart(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 73
    new-instance v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-direct {v0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    .line 74
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->currentViewState:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenter;->forgetPasswordSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
