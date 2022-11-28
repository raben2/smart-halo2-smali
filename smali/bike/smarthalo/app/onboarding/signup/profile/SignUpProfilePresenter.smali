.class public final Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;
.super Ljava/lang/Object;
.source "SignUpProfilePresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;,
        Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0002\"#B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0017H\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0017H\u0016J\u0008\u0010\u001e\u001a\u00020\u0014H\u0016J\u0008\u0010\u001f\u001a\u00020\u0014H\u0016J\u0008\u0010 \u001a\u00020\u0014H\u0002J\u0008\u0010!\u001a\u00020\u0014H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\u000b0\u000b0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;",
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "signUpCoordinator",
        "Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;",
        "userCloudManager",
        "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        "connectivityManager",
        "Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
        "(Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V",
        "currentViewState",
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;",
        "currentViewStateSource",
        "Lio/reactivex/processors/FlowableProcessor;",
        "kotlin.jvm.PlatformType",
        "signUpSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "observeViewState",
        "Lio/reactivex/Flowable;",
        "onBirthdateSelected",
        "",
        "onEmailTextChanged",
        "email",
        "",
        "onFirstNameTextChanged",
        "firstName",
        "onLastNameTextChanged",
        "lastName",
        "onPasswordTextChanged",
        "password",
        "onStop",
        "onSubmit",
        "onSuccess",
        "setSignUpButtonState",
        "Companion",
        "SignUpResult",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$Companion;

# The value of this static final field might be set in the static constructor
.field private static final MINIMUM_AGE_FOR_USER:I = 0x10

# The value of this static final field might be set in the static constructor
.field private static final MINIMUM_PASSWORD_LENGTH:I = 0x8


# instance fields
.field private final connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

.field private currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

.field private currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final signUpCoordinator:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

.field private signUpSubscription:Lio/reactivex/disposables/Disposable;

.field private final userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->Companion:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$Companion;

    const/16 v0, 0x10

    .line 35
    sput v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->MINIMUM_AGE_FOR_USER:I

    const/16 v0, 0x8

    .line 36
    sput v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->MINIMUM_PASSWORD_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;
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

    const-string v0, "signUpCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCloudManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->signUpCoordinator:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    iput-object p2, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iput-object p3, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    .line 38
    new-instance p1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-direct {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    const/4 p1, 0x1

    .line 39
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const-string p2, "ReplayProcessor.createWi\u2026wState>(1).toSerialized()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    .line 43
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object p2, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;
    .locals 0

    .line 28
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    return-object p0
.end method

.method public static final synthetic access$getCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lio/reactivex/processors/FlowableProcessor;
    .locals 0

    .line 28
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-object p0
.end method

.method public static final synthetic access$getMINIMUM_AGE_FOR_USER$cp()I
    .locals 1

    .line 28
    sget v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->MINIMUM_AGE_FOR_USER:I

    return v0
.end method

.method public static final synthetic access$getMINIMUM_PASSWORD_LENGTH$cp()I
    .locals 1

    .line 28
    sget v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->MINIMUM_PASSWORD_LENGTH:I

    return v0
.end method

.method public static final synthetic access$getSignUpCoordinator$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;
    .locals 0

    .line 28
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->signUpCoordinator:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    return-object p0
.end method

.method public static final synthetic access$onSuccess(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->onSuccess()V

    return-void
.end method

.method public static final synthetic access$setCurrentViewState$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    return-void
.end method

.method public static final synthetic access$setCurrentViewStateSource$p(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;Lio/reactivex/processors/FlowableProcessor;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-void
.end method

.method public static final synthetic access$setSignUpButtonState(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->setSignUpButtonState()V

    return-void
.end method

.method private final onSuccess()V
    .locals 4

    .line 143
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->signUpSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    const-wide/16 v0, 0x12c

    .line 145
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 146
    new-instance v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSuccess$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSuccess$1;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->signUpSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final setSignUpButtonState()V
    .locals 2

    .line 159
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getBirthDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    goto :goto_1

    .line 160
    :cond_1
    :goto_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Disabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    .line 164
    :goto_1
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getSignUpButtonState()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 165
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setSignUpButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 166
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public observeViewState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 150
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    check-cast v0, Lio/reactivex/Flowable;

    return-object v0
.end method

.method public onBirthdateSelected()V
    .locals 3

    .line 171
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->signUpCoordinator:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getBirthDate()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onBirthdateSelected$1;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;->pickDate(Ljava/util/Date;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onEmailTextChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setEmail(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getHasEmailError()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setHasEmailError(Z)V

    .line 65
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 67
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->setSignUpButtonState()V

    return-void
.end method

.method public onFirstNameTextChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "firstName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setFirstName(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->setSignUpButtonState()V

    return-void
.end method

.method public onLastNameTextChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lastName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setLastName(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->setSignUpButtonState()V

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

    .line 71
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setPassword(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getHasPasswordError()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setHasPasswordError(Z)V

    .line 75
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 77
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->setSignUpButtonState()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 28
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStart(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->signUpSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSubmit()V
    .locals 8

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getSignUpButtonState()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    if-eq v0, v1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->isEmail(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setHasEmailError(Z)V

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget v3, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->MINIMUM_PASSWORD_LENGTH:I

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setHasPasswordError(Z)V

    .line 90
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getHasBirthdateError()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getHasEmailError()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getHasPasswordError()Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->signUpCoordinator:Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;

    const v1, 0x7f11017f

    invoke-interface {v0, v1}, Lbike/smarthalo/app/onboarding/signup/SignUpCoordinatorContract;->showError(I)V

    return-void

    .line 96
    :cond_2
    new-instance v0, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;

    .line 97
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getFirstName()Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getLastName()Ljava/lang/String;

    move-result-object v4

    .line 99
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getEmail()Ljava/lang/String;

    move-result-object v5

    .line 100
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 101
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getBirthDate()Ljava/util/Date;

    move-result-object v7

    move-object v2, v0

    .line 96
    invoke-direct/range {v2 .. v7}, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 104
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Ongoing:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v1, v2}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->setSignUpButtonState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 106
    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 107
    invoke-interface {v1, v0}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->signUpAndInitializeUser(Lbike/smarthalo/app/api/requests/SHUserSignupRequest;)Lio/reactivex/Single;

    move-result-object v1

    .line 108
    sget-object v2, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$signUpQuery$1;->INSTANCE:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$signUpQuery$1;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    const-string v2, "userCloudManager\n       \u2026se SignUpResult.Failure }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 111
    iget-object v0, v0, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;->email:Ljava/lang/String;

    invoke-interface {v2, v0}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->checkEmailAvailability(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 112
    new-instance v2, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$1;

    invoke-direct {v2, v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$1;-><init>(Lio/reactivex/Single;)V

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 119
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Single;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    .line 120
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 121
    new-instance v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$onSubmit$2;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->signUpSubscription:Lio/reactivex/disposables/Disposable;

    .line 139
    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter;->currentViewState:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
