.class public final Lbike/smarthalo/app/designRefresh/map/MapCoordinator;
.super Ljava/lang/Object;
.source "MapCoordinator.kt"

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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0007J\u0008\u0010\u0015\u001a\u00020\u0014H\u0007J\u0008\u0010\u0016\u001a\u00020\u0014H\u0007J\u0008\u0010\u0017\u001a\u00020\u0014H\u0007J\u0008\u0010\u0018\u001a\u00020\u0014H\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lbike/smarthalo/app/designRefresh/map/MapCoordinator;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "lifecycleContract",
        "Lbike/smarthalo/app/navigationFlow/LifeCycleContract;",
        "googleMapsMap",
        "Llayout/mapAdapter/SHGoogleMapsMap;",
        "(Lbike/smarthalo/app/navigationFlow/LifeCycleContract;Llayout/mapAdapter/SHGoogleMapsMap;)V",
        "getGoogleMapsMap",
        "()Llayout/mapAdapter/SHGoogleMapsMap;",
        "getLifecycleContract",
        "()Lbike/smarthalo/app/navigationFlow/LifeCycleContract;",
        "mapPresenter",
        "Lbike/smarthalo/app/designRefresh/map/MapPresenter;",
        "getMapPresenter",
        "()Lbike/smarthalo/app/designRefresh/map/MapPresenter;",
        "subscriptions",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "getSubscriptions",
        "()Lio/reactivex/disposables/CompositeDisposable;",
        "onDestroy",
        "",
        "onPause",
        "onResume",
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
.field private final googleMapsMap:Llayout/mapAdapter/SHGoogleMapsMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lifecycleContract:Lbike/smarthalo/app/navigationFlow/LifeCycleContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mapPresenter:Lbike/smarthalo/app/designRefresh/map/MapPresenter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/navigationFlow/LifeCycleContract;Llayout/mapAdapter/SHGoogleMapsMap;)V
    .locals 2
    .param p1    # Lbike/smarthalo/app/navigationFlow/LifeCycleContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llayout/mapAdapter/SHGoogleMapsMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lifecycleContract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleMapsMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->lifecycleContract:Lbike/smarthalo/app/navigationFlow/LifeCycleContract;

    iput-object p2, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->googleMapsMap:Llayout/mapAdapter/SHGoogleMapsMap;

    .line 16
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 17
    new-instance p1, Lbike/smarthalo/app/designRefresh/map/MapPresenter;

    invoke-direct {p1}, Lbike/smarthalo/app/designRefresh/map/MapPresenter;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->mapPresenter:Lbike/smarthalo/app/designRefresh/map/MapPresenter;

    .line 20
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->lifecycleContract:Lbike/smarthalo/app/navigationFlow/LifeCycleContract;

    invoke-interface {p1}, Lbike/smarthalo/app/navigationFlow/LifeCycleContract;->getLifeCycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 22
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->googleMapsMap:Llayout/mapAdapter/SHGoogleMapsMap;

    iget-object p2, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->mapPresenter:Lbike/smarthalo/app/designRefresh/map/MapPresenter;

    check-cast p2, Llayout/mapAdapter/MapProviderContract$Consumer;

    invoke-virtual {p1, p2}, Llayout/mapAdapter/SHGoogleMapsMap;->initialize(Llayout/mapAdapter/MapProviderContract$Consumer;)V

    .line 23
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    const/4 p2, 0x2

    new-array p2, p2, [Lio/reactivex/disposables/Disposable;

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->lifecycleContract:Lbike/smarthalo/app/navigationFlow/LifeCycleContract;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/LifeCycleContract;->observeLowMemory()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/designRefresh/map/MapCoordinator$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/designRefresh/map/MapCoordinator$1;-><init>(Lbike/smarthalo/app/designRefresh/map/MapCoordinator;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->lifecycleContract:Lbike/smarthalo/app/navigationFlow/LifeCycleContract;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/LifeCycleContract;->observeSaveInstanceState()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/designRefresh/map/MapCoordinator$2;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/designRefresh/map/MapCoordinator$2;-><init>(Lbike/smarthalo/app/designRefresh/map/MapCoordinator;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    .line 23
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public final getGoogleMapsMap()Llayout/mapAdapter/SHGoogleMapsMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->googleMapsMap:Llayout/mapAdapter/SHGoogleMapsMap;

    return-object v0
.end method

.method public final getLifecycleContract()Lbike/smarthalo/app/navigationFlow/LifeCycleContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->lifecycleContract:Lbike/smarthalo/app/navigationFlow/LifeCycleContract;

    return-object v0
.end method

.method public final getMapPresenter()Lbike/smarthalo/app/designRefresh/map/MapPresenter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->mapPresenter:Lbike/smarthalo/app/designRefresh/map/MapPresenter;

    return-object v0
.end method

.method public final getSubscriptions()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 31
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->googleMapsMap:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onDestroy()V

    .line 32
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->googleMapsMap:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 37
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->googleMapsMap:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onResume()V

    return-void
.end method

.method public final onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->googleMapsMap:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onStart()V

    return-void
.end method

.method public final onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 52
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->googleMapsMap:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0}, Llayout/mapAdapter/SHGoogleMapsMap;->onStop()V

    return-void
.end method
