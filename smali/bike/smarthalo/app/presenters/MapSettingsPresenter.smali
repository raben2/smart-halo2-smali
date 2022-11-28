.class public Lbike/smarthalo/app/presenters/MapSettingsPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "MapSettingsPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "MapSettingsPresenter"


# instance fields
.field private contract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

.field private directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private gpxNavigationSubscription:Lio/reactivex/disposables/Disposable;

.field private navigationModeSubscription:Lio/reactivex/disposables/Disposable;

.field private reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;

    .line 47
    iput-object p3, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 49
    new-instance p2, Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter$1;-><init>(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)V

    invoke-static {p2, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getDirectionServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;
    .locals 0

    .line 32
    iget-object p0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;
    .locals 0

    .line 32
    iput-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->toggleIsNavigationModeSwitchEnabled(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->observeGpxNavigation(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$300(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->clearGpxNavigationSubscription()V

    return-void
.end method

.method static synthetic access$400(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->enableNavigationModeSwitch()V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;
    .locals 1

    .line 69
    new-instance v0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V

    return-object v0
.end method

.method private cleanUpSettingsSubscription()V
    .locals 1

    .line 132
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->navigationModeSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->navigationModeSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearGpxNavigationSubscription()V
    .locals 1

    .line 98
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->gpxNavigationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->gpxNavigationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private enableNavigationModeSwitch()V
    .locals 3

    .line 112
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;

    .line 114
    invoke-virtual {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->getIsNavCompassMode()Z

    move-result v1

    const/4 v2, 0x1

    .line 112
    invoke-interface {v0, v2, v1}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;->toggleIsNavigationModeEnabled(ZZ)V

    return-void
.end method

.method public static synthetic lambda$Dd_WvvJQadKk53BBsHqIh6knBTM(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->toggleIsNavigationModeSwitchEnabled(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

.method static synthetic lambda$observeGpxNavigation$0(Lbike/smarthalo/app/models/PresentationNavigationState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    iget-boolean p0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$setUpSettingsSubscription$1(Lbike/smarthalo/app/models/SHSettings;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationCompassMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setUpSettingsSubscription$2(Lbike/smarthalo/app/presenters/MapSettingsPresenter;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;->onNavigationModeChanged(Z)V

    return-void
.end method

.method private observeGpxNavigation(Lio/reactivex/Flowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->clearGpxNavigationSubscription()V

    .line 92
    sget-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$m4k2Rwb65_D_5sFY-ohAxXonox4;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$m4k2Rwb65_D_5sFY-ohAxXonox4;

    .line 93
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Dd_WvvJQadKk53BBsHqIh6knBTM;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Dd_WvvJQadKk53BBsHqIh6knBTM;-><init>(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)V

    .line 94
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->gpxNavigationSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private setUpSettingsSubscription()V
    .locals 3

    .line 119
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->cleanUpSettingsSubscription()V

    .line 120
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->getAndObserveUserSettings()Lio/reactivex/Flowable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v1, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Lxg6GIQEbzV_5pKt02iyPk2KVPw;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$Lxg6GIQEbzV_5pKt02iyPk2KVPw;

    .line 125
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 126
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->skip(J)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$4b1BswPAp5YbeFDNcnV6GC-ifvo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$4b1BswPAp5YbeFDNcnV6GC-ifvo;-><init>(Lbike/smarthalo/app/presenters/MapSettingsPresenter;)V

    .line 127
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->navigationModeSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private toggleIsNavigationModeSwitchEnabled(Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 107
    :goto_1
    invoke-virtual {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->getIsNavCompassMode()Z

    move-result v1

    .line 105
    invoke-interface {v0, p1, v1}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$View;->toggleIsNavigationModeEnabled(ZZ)V

    return-void
.end method


# virtual methods
.method public getIsMetric()Z
    .locals 1

    .line 203
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
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

.method public getIsNavCompassMode()Z
    .locals 1

    .line 181
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationCompassMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsNavSoundOn()Z
    .locals 1

    .line 187
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationSoundOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNavigationVolume()I
    .locals 1

    .line 175
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navigationVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onViewPaused()V
    .locals 1

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 82
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onDispose()V

    .line 83
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->cleanUpSettingsSubscription()V

    .line 85
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->clearGpxNavigationSubscription()V

    .line 86
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->enableNavigationModeSwitch()V

    return-void
.end method

.method public onViewResumed()V
    .locals 1

    .line 74
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onStart()V

    .line 76
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->setUpSettingsSubscription()V

    return-void
.end method

.method public setNavigationVolume(I)V
    .locals 1

    const-string v0, "navigationVolume"

    .line 171
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->updateSetting(Ljava/lang/String;I)V

    return-void
.end method

.method public setNeverRemindMeCompassMode()V
    .locals 2

    const-string v0, "NEVER_REMIND_ME_COMPASS_MODE_TIP_KEY"

    const/4 v1, 0x1

    .line 193
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldNeverRemindCompassModeTip()Z
    .locals 1

    const-string v0, "NEVER_REMIND_ME_COMPASS_MODE_TIP_KEY"

    .line 197
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toggleNavigationMode(Z)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->cleanUpSettingsSubscription()V

    .line 153
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->canUpdateSetting(Lbike/smarthalo/app/models/SHUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isNavigationCompassMode"

    .line 156
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->updateSetting(Ljava/lang/String;I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->enterGPSAsTheCrowFlies()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->enterTurnByTurn()V

    .line 167
    :cond_2
    :goto_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->setUpSettingsSubscription()V

    return-void
.end method

.method public toggleNavigationSound(Z)V
    .locals 1

    const-string v0, "isNavigationSoundOn"

    .line 146
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->updateSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateUserUnit(Z)V
    .locals 2

    .line 139
    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->updateUserUnitsOfMeasurement(Z)V

    .line 141
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "bike.smarthalo.app.BROADCAST_UNIT_OF_MEASUREMENT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->context:Landroid/content/Context;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    return-void
.end method
