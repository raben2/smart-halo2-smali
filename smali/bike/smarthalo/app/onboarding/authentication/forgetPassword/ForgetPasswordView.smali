.class public final Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;
.super Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
.source "ForgetPasswordView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0016J\u000e\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "presenterContract",
        "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;",
        "innerView",
        "Landroid/view/View;",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "getAnalyticsManager",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "getPresenterContract",
        "()Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;",
        "setPresenterContract",
        "(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;)V",
        "viewStateSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "getViewStateSubscription",
        "()Lio/reactivex/disposables/Disposable;",
        "setViewStateSubscription",
        "(Lio/reactivex/disposables/Disposable;)V",
        "onHidden",
        "",
        "onShown",
        "updateView",
        "viewState",
        "Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;",
        "Companion",
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
.field public static final Companion:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$Companion;

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private presenterContract:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewStateSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->Companion:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$Companion;

    .line 29
    const-class v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sput-object v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 6
    .param p1    # Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "presenterContract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->presenterContract:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;

    iput-object p3, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 33
    new-instance p1, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$onSendButtonClick$1;

    invoke-direct {p1, p0, p2}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$onSendButtonClick$1;-><init>(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;Landroid/view/View;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 38
    sget p3, Lbike/smarthalo/app/R$id;->sendEmailButton:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$1;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget p3, Lbike/smarthalo/app/R$id;->emailEditText:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$2;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p3, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 48
    sget p1, Lbike/smarthalo/app/R$id;->emailEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Llayout/viewEvents/DefaultedTextWatcher;

    .line 49
    new-instance p3, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$3;

    invoke-direct {p3, p0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$3;-><init>(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    .line 48
    invoke-direct/range {v0 .. v5}, Llayout/viewEvents/DefaultedTextWatcher;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getAnalyticsManager()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object v0
.end method

.method public final getPresenterContract()Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->presenterContract:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;

    return-object v0
.end method

.method public final getViewStateSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 26
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public onHidden()V
    .locals 1

    .line 76
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onShown()V
    .locals 2

    .line 54
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/AnalyticsScreenViews;->USER_FORGET_PASSWORD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->presenterContract:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;

    .line 57
    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;->observeViewState()Lio/reactivex/Flowable;

    move-result-object v0

    .line 58
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 59
    new-instance v1, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$onShown$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView$onShown$1;-><init>(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    .line 61
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->emailEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 62
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHKeyboardHelper;->showKeyboard(Landroid/content/Context;)V

    return-void
.end method

.method public final setPresenterContract(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->presenterContract:Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordPresenterContract;

    return-void
.end method

.method public final setViewStateSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 26
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final updateView(Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;)V
    .locals 3
    .param p1    # Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->getEmailError()Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;->NoError:Lbike/smarthalo/app/models/PresentationModels/FormStates/FormError;

    if-ne v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1102da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "innerView.context.getStr\u2026ing_form_email_incorrect)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->getInnerView()Landroid/view/View;

    move-result-object v1

    sget v2, Lbike/smarthalo/app/R$id;->emailError:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "innerView.emailError"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->sendEmailButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "innerView.sendEmailButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/authentication/forgetPassword/ForgetPasswordViewState;->isButtonEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
