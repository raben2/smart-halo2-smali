.class public final Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;
.super Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
.source "SignUpFitnessView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignUpFitnessView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignUpFitnessView.kt\nbike/smarthalo/app/onboarding/fitness/SignUpFitnessView\n*L\n1#1,70:1\n*E\n"
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
        "Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "presenterContract",
        "Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;",
        "innerView",
        "Landroid/view/View;",
        "(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;Landroid/view/View;)V",
        "getPresenterContract",
        "()Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;",
        "setPresenterContract",
        "(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;)V",
        "viewStateSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "onHidden",
        "",
        "onShown",
        "onViewStateChanged",
        "viewState",
        "Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;",
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
.field public static final Companion:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$Companion;

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private presenterContract:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewStateSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->Companion:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$Companion;

    .line 22
    const-class v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sput-object v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;Landroid/view/View;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;
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

    .line 17
    sget-object v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->presenterContract:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;

    .line 26
    sget p1, Lbike/smarthalo/app/R$id;->weightEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    sget p1, Lbike/smarthalo/app/R$id;->genderEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$2;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    sget p1, Lbike/smarthalo/app/R$id;->heightEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$3;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$3;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    sget p1, Lbike/smarthalo/app/R$id;->skipButton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$4;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$4;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    sget p1, Lbike/smarthalo/app/R$id;->confirmationButton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Llayout/customControls/ConfirmButton;

    new-instance v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$5;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$5;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Llayout/customControls/ConfirmButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    sget p1, Lbike/smarthalo/app/R$id;->weightRadioGroup:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    new-instance v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$6;

    invoke-direct {v0, p0, p2}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$6;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;Landroid/view/View;)V

    check-cast v0, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 36
    sget p1, Lbike/smarthalo/app/R$id;->heightRadioGroup:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    new-instance v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$7;

    invoke-direct {v0, p0, p2}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$7;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;Landroid/view/View;)V

    check-cast v0, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onViewStateChanged(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->onViewStateChanged(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;)V

    return-void
.end method

.method private final onViewStateChanged(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->weightEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getDisplayWeight()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->heightEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getDisplayHeight()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getGender()Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lbike/smarthalo/app/models/userModels/Gender;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110142

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 60
    :pswitch_1
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110141

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 59
    :pswitch_2
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11013f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 58
    :pswitch_3
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110140

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_0
    const/4 v0, 0x0

    .line 65
    :goto_1
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->getInnerView()Landroid/view/View;

    move-result-object v1

    sget v2, Lbike/smarthalo/app/R$id;->genderEditText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->confirmationButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/customControls/ConfirmButton;

    invoke-virtual {p1}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessViewState;->getConfirmButtonState()Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    move-result-object p1

    invoke-virtual {v0, p1}, Llayout/customControls/ConfirmButton;->updateState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getPresenterContract()Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->presenterContract:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;

    return-object v0
.end method

.method public onHidden()V
    .locals 1

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onShown()V
    .locals 2

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->presenterContract:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;

    .line 43
    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;->getObservableViewState()Lio/reactivex/Flowable;

    move-result-object v0

    .line 44
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 45
    new-instance v1, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$onShown$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView$onShown$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setPresenterContract(Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessView;->presenterContract:Lbike/smarthalo/app/onboarding/fitness/SignUpFitnessPresenterContract;

    return-void
.end method
