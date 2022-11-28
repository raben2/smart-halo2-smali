.class public final Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;
.super Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
.source "SignUpProfileView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "presenterContract",
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;",
        "innerView",
        "Landroid/view/View;",
        "(Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;Landroid/view/View;)V",
        "getPresenterContract",
        "()Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;",
        "setPresenterContract",
        "(Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;)V",
        "viewStateSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "onHidden",
        "",
        "onShown",
        "onViewStateChanged",
        "viewState",
        "Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;",
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
.field public static final Companion:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$Companion;

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private presenterContract:Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewStateSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->Companion:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$Companion;

    .line 32
    const-class v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sput-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;Landroid/view/View;)V
    .locals 7
    .param p1    # Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "presenterContract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->presenterContract:Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;

    .line 36
    sget p1, Lbike/smarthalo/app/R$id;->emailEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v6, Llayout/viewEvents/DefaultedTextWatcher;

    .line 37
    new-instance v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$1;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    .line 36
    invoke-direct/range {v0 .. v5}, Llayout/viewEvents/DefaultedTextWatcher;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Landroid/text/TextWatcher;

    invoke-virtual {p1, v6}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    sget p1, Lbike/smarthalo/app/R$id;->passwordEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v6, Llayout/viewEvents/DefaultedTextWatcher;

    .line 41
    new-instance v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$2;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v0, v6

    .line 40
    invoke-direct/range {v0 .. v5}, Llayout/viewEvents/DefaultedTextWatcher;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Landroid/text/TextWatcher;

    invoke-virtual {p1, v6}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    sget p1, Lbike/smarthalo/app/R$id;->firstNameEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v6, Llayout/viewEvents/DefaultedTextWatcher;

    .line 45
    new-instance v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$3;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$3;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v0, v6

    .line 44
    invoke-direct/range {v0 .. v5}, Llayout/viewEvents/DefaultedTextWatcher;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Landroid/text/TextWatcher;

    invoke-virtual {p1, v6}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    sget p1, Lbike/smarthalo/app/R$id;->lastNameEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v6, Llayout/viewEvents/DefaultedTextWatcher;

    .line 49
    new-instance v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$4;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$4;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v0, v6

    .line 48
    invoke-direct/range {v0 .. v5}, Llayout/viewEvents/DefaultedTextWatcher;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Landroid/text/TextWatcher;

    invoke-virtual {p1, v6}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    new-instance p1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$onSubmitListener$1;

    invoke-direct {p1, p0, p2}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$onSubmitListener$1;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;Landroid/view/View;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 57
    sget v0, Lbike/smarthalo/app/R$id;->confirmationButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/customControls/ConfirmButton;

    new-instance v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$5;

    invoke-direct {v1, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$5;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Llayout/customControls/ConfirmButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lbike/smarthalo/app/R$id;->passwordEditText:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$6;

    invoke-direct {v1, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$6;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 66
    new-instance p1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$onClickBirthday$1;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$onClickBirthday$1;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 68
    sget v0, Lbike/smarthalo/app/R$id;->birthdateEditText:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$7;

    invoke-direct {v1, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget v0, Lbike/smarthalo/app/R$id;->lastNameEditText:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$8;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$8;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p2, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onViewStateChanged(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->onViewStateChanged(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;)V

    return-void
.end method

.method private final onViewStateChanged(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;)V
    .locals 5

    .line 91
    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getHasEmailError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1102da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 92
    check-cast v0, Ljava/lang/CharSequence;

    :goto_0
    const-string v1, "if (viewState.hasEmailEr\u2026)\n                else \"\""

    .line 91
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->getInnerView()Landroid/view/View;

    move-result-object v1

    sget v2, Lbike/smarthalo/app/R$id;->emailError:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "innerView.emailError"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getHasPasswordError()Z

    move-result v0

    const v1, 0x7f0602ae

    const v2, 0x7f0600e9

    if-eqz v0, :cond_1

    const v0, 0x7f0602ae

    goto :goto_1

    :cond_1
    const v0, 0x7f0600e9

    .line 98
    :goto_1
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->getInnerView()Landroid/view/View;

    move-result-object v3

    sget v4, Lbike/smarthalo/app/R$id;->passwordError:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->getInnerView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getHasBirthdateError()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x7f0600e9

    .line 103
    :goto_2
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v2, Lbike/smarthalo/app/R$id;->birthdateError:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->getInnerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->birthdateEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getBirthDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lbike/smarthalo/app/extensions/DateExtensionsKt;->yearMonthDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->confirmationButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/customControls/ConfirmButton;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileViewState;->getSignUpButtonState()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    move-result-object p1

    invoke-virtual {v0, p1}, Llayout/customControls/ConfirmButton;->updateState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    return-void
.end method


# virtual methods
.method public final getPresenterContract()Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->presenterContract:Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;

    return-object v0
.end method

.method public onHidden()V
    .locals 1

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onShown()V
    .locals 2

    .line 79
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->presenterContract:Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;

    .line 80
    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;->observeViewState()Lio/reactivex/Flowable;

    move-result-object v0

    .line 81
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 82
    new-instance v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$onShown$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView$onShown$1;-><init>(Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setPresenterContract(Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfileView;->presenterContract:Lbike/smarthalo/app/onboarding/signup/profile/SignUpPresenterContract;

    return-void
.end method
