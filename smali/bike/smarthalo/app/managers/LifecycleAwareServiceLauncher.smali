.class public Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;
.super Ljava/lang/Object;
.source "LifecycleAwareServiceLauncher.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final SERVICE_START_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "LifecycleAwareServiceLauncher"


# instance fields
.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private subscriptions:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 32
    iget-object p1, p0, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 34
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic lambda$startService$0(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    sget-object p2, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->TAG:Ljava/lang/String;

    const-string v0, "Starting Service"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method destroyed()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->TAG:Ljava/lang/String;

    const-string v1, "Launching timer for service start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    const-wide/16 v1, 0x12c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-static {v1, v2, v3}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v1

    .line 45
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/managers/-$$Lambda$LifecycleAwareServiceLauncher$J1b1YVQsM3rczQ5XuSGO9YHTbTM;

    invoke-direct {v2, p1, p2}, Lbike/smarthalo/app/managers/-$$Lambda$LifecycleAwareServiceLauncher$J1b1YVQsM3rczQ5XuSGO9YHTbTM;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_0
    return-void
.end method

.method stopped()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 55
    sget-object v0, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->TAG:Ljava/lang/String;

    const-string v1, "Aborting service start on stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method
