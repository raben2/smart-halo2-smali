.class public abstract Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;
.super Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;
.source "MasterCoordinator.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0007J\u0008\u0010\u0019\u001a\u00020\u0017H\u0017J\u0008\u0010\u001a\u001a\u00020\u0017H\u0017R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "context",
        "Landroid/content/Context;",
        "flowCompletionContract",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "baseActivityContract",
        "Lbike/smarthalo/app/navigationFlow/BaseActivityContract;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/BaseActivityContract;Landroidx/lifecycle/Lifecycle;)V",
        "backButtonSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "getBackButtonSubscription",
        "()Lio/reactivex/disposables/Disposable;",
        "setBackButtonSubscription",
        "(Lio/reactivex/disposables/Disposable;)V",
        "getBaseActivityContract",
        "()Lbike/smarthalo/app/navigationFlow/BaseActivityContract;",
        "getLifecycle",
        "()Landroidx/lifecycle/Lifecycle;",
        "onBackPressed",
        "",
        "onDestroy",
        "onStart",
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
.field private backButtonSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final baseActivityContract:Lbike/smarthalo/app/navigationFlow/BaseActivityContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lifecycle:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/BaseActivityContract;Landroidx/lifecycle/Lifecycle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/navigationFlow/BaseActivityContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowCompletionContract"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseActivityContract"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p3

    check-cast v0, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;

    invoke-direct {p0, p1, p2, v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;)V

    iput-object p3, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->baseActivityContract:Lbike/smarthalo/app/navigationFlow/BaseActivityContract;

    iput-object p4, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 28
    iget-object p1, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->lifecycle:Landroidx/lifecycle/Lifecycle;

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final getBackButtonSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->backButtonSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getBaseActivityContract()Lbike/smarthalo/app/navigationFlow/BaseActivityContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->baseActivityContract:Lbike/smarthalo/app/navigationFlow/BaseActivityContract;

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 53
    move-object v0, p0

    check-cast v0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;

    .line 54
    :goto_0
    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->getCurrentFlowItem()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    move-result-object v1

    instance-of v1, v1, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->getCurrentFlowItem()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type bike.smarthalo.app.navigationFlow.coordinatorTemplates.PagerCoordinator"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    sget-object v1, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator$onBackPressed$1;->INSTANCE:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator$onBackPressed$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateBack(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->lifecycle:Landroidx/lifecycle/Lifecycle;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 33
    invoke-super {p0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->onStart()V

    .line 35
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->baseActivityContract:Lbike/smarthalo/app/navigationFlow/BaseActivityContract;

    .line 36
    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/BaseActivityContract;->getBackButtonObservable()Lio/reactivex/Flowable;

    move-result-object v0

    .line 37
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 38
    new-instance v1, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator$onStart$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator$onStart$1;-><init>(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->backButtonSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 43
    invoke-super {p0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->onStop()V

    .line 44
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->backButtonSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final setBackButtonSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 25
    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/MasterCoordinator;->backButtonSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method
