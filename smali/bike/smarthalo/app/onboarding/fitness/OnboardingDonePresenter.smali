.class public final Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;
.super Ljava/lang/Object;
.source "OnboardingDonePresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n \n*\u0004\u0018\u00010\u00070\u00070\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;",
        "Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenterContract;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "coordinatorContract",
        "Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;",
        "(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;)V",
        "buttonState",
        "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        "buttonStateSource",
        "Lio/reactivex/processors/FlowableProcessor;",
        "kotlin.jvm.PlatformType",
        "subscription",
        "Lio/reactivex/disposables/Disposable;",
        "observeButtonState",
        "Lio/reactivex/Flowable;",
        "onStop",
        "",
        "onSubmit",
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
.field private buttonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

.field private buttonStateSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
            ">;"
        }
    .end annotation
.end field

.field private final coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

.field private subscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "coordinatorContract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    const/4 p1, 0x1

    .line 22
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const-string v0, "ReplayProcessor.createWi\u2026nState>(1).toSerialized()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->buttonStateSource:Lio/reactivex/processors/FlowableProcessor;

    .line 23
    sget-object p1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->buttonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    .line 27
    iget-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->buttonStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->buttonState:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getButtonStateSource$p(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;)Lio/reactivex/processors/FlowableProcessor;
    .locals 0

    .line 19
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->buttonStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-object p0
.end method

.method public static final synthetic access$getCoordinatorContract$p(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;)Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;
    .locals 0

    .line 19
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->coordinatorContract:Lbike/smarthalo/app/onboarding/OnboardingCoordinatorContract;

    return-object p0
.end method

.method public static final synthetic access$getSubscription$p(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 19
    iget-object p0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->subscription:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static final synthetic access$setButtonStateSource$p(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;Lio/reactivex/processors/FlowableProcessor;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->buttonStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-void
.end method

.method public static final synthetic access$setSubscription$p(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->subscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public observeButtonState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->buttonStateSource:Lio/reactivex/processors/FlowableProcessor;

    check-cast v0, Lio/reactivex/Flowable;

    return-object v0
.end method

.method public onStart()V
    .locals 0

    .line 19
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStart(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 44
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->subscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSubmit()V
    .locals 4

    .line 31
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->buttonStateSource:Lio/reactivex/processors/FlowableProcessor;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Ongoing:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3, v0, v1}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 35
    new-instance v1, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter$onSubmit$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter$onSubmit$1;-><init>(Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/fitness/OnboardingDonePresenter;->subscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method
