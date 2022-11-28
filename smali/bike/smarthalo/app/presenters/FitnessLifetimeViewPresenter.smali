.class public Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "FitnessLifetimeViewPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;


# instance fields
.field private lifetimeMetricsManager:Lbike/smarthalo/app/managers/contracts/LifetimeMetricsManagerContract;

.field private lifetimeMetricsSubscription:Lio/reactivex/disposables/Disposable;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Lbike/smarthalo/app/managers/LifetimeMetricsManager;->buildManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/LifetimeMetricsManagerContract;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->lifetimeMetricsManager:Lbike/smarthalo/app/managers/contracts/LifetimeMetricsManagerContract;

    .line 25
    iput-object p2, p0, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;
    .locals 1

    .line 29
    new-instance v0, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;)V

    return-object v0
.end method

.method private getIsUserMetric()Z
    .locals 1

    .line 41
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$processLifetimeMetrics$0(Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;Lbike/smarthalo/app/models/LifetimeMetrics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->getIsUserMetric()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;->updateLifetimeView(Lbike/smarthalo/app/models/LifetimeMetrics;Z)V

    return-void
.end method

.method private verifySubscriptionIsUnsubscribed()V
    .locals 1

    .line 51
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->lifetimeMetricsSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->lifetimeMetricsSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public onDispose()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->verifySubscriptionIsUnsubscribed()V

    return-void
.end method

.method public processLifetimeMetrics(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->verifySubscriptionIsUnsubscribed()V

    .line 35
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->lifetimeMetricsManager:Lbike/smarthalo/app/managers/contracts/LifetimeMetricsManagerContract;

    .line 36
    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/contracts/LifetimeMetricsManagerContract;->getLifetimeMetrics(Ljava/util/List;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessLifetimeViewPresenter$e9JROo_pRCK5jR_rSI6OITNwQh8;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessLifetimeViewPresenter$e9JROo_pRCK5jR_rSI6OITNwQh8;-><init>(Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;)V

    .line 37
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->lifetimeMetricsSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method
