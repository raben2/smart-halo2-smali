.class public final Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;
.super Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
.source "OnboardingDoneView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "presenter",
        "Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;",
        "innerView",
        "Landroid/view/View;",
        "(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;Landroid/view/View;)V",
        "getPresenter",
        "()Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;",
        "setPresenter",
        "(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;)V",
        "viewStateSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "getViewStateSubscription",
        "()Lio/reactivex/disposables/Disposable;",
        "setViewStateSubscription",
        "(Lio/reactivex/disposables/Disposable;)V",
        "onHidden",
        "",
        "onShown",
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
.field public static final Companion:Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private presenter:Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;
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

    new-instance v0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->Companion:Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;

    .line 28
    const-class v0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sput-object v0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;Landroid/view/View;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->presenter:Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;

    .line 32
    sget p1, Lbike/smarthalo/app/R$id;->goToApp:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Llayout/customControls/ConfirmButton;

    new-instance p2, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Llayout/customControls/ConfirmButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getPresenter()Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->presenter:Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;

    return-object v0
.end method

.method public final getViewStateSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public onHidden()V
    .locals 2

    .line 51
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 52
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->goToApp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/customControls/ConfirmButton;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v0, v1}, Llayout/customControls/ConfirmButton;->updateState(Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;)V

    .line 54
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->bottomBarGif:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "innerView.bottomBarGif"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 3

    .line 38
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->presenter:Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;

    .line 39
    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;->observeButtonState()Lio/reactivex/Flowable;

    move-result-object v0

    .line 40
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 41
    new-instance v1, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$onShown$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$onShown$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    .line 44
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const v1, 0x7f100002

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->getInnerView()Landroid/view/View;

    move-result-object v1

    sget v2, Lbike/smarthalo/app/R$id;->bottomBarGif:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final setPresenter(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->presenter:Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;

    return-void
.end method

.method public final setViewStateSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 35
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method
