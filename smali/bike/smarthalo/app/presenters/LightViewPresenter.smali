.class public Lbike/smarthalo/app/presenters/LightViewPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "LightViewPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;


# instance fields
.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private lightSettingModeSubscription:Lio/reactivex/disposables/Disposable;

.field private reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;

    .line 32
    iput-object p3, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 34
    new-instance p2, Lbike/smarthalo/app/presenters/LightViewPresenter$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/LightViewPresenter$1;-><init>(Lbike/smarthalo/app/presenters/LightViewPresenter;)V

    invoke-static {p2, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/LightViewPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 22
    iput-object p1, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;
    .locals 1

    .line 49
    new-instance v0, Lbike/smarthalo/app/presenters/LightViewPresenter;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/presenters/LightViewPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V

    return-object v0
.end method

.method private cleanUpSettingsSubscription()V
    .locals 1

    .line 78
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->lightSettingModeSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->lightSettingModeSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method static synthetic lambda$setUpSettingsSubscription$0(Lbike/smarthalo/app/models/SHSettings;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightBlinking()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setUpSettingsSubscription$1(Lbike/smarthalo/app/presenters/LightViewPresenter;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$View;->onLightSettingChanged(Z)V

    return-void
.end method

.method private setUpSettingsSubscription()V
    .locals 3

    .line 65
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LightViewPresenter;->cleanUpSettingsSubscription()V

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->getAndObserveUserSettings()Lio/reactivex/Flowable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 70
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->getAndObserveUserSettings()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$PoMjdo5fDUvf6IY7JqUKN8Zkp6E;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$PoMjdo5fDUvf6IY7JqUKN8Zkp6E;

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 72
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->skip(J)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$9a3v8qA7zP72hvT0IE67YvxHclE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$9a3v8qA7zP72hvT0IE67YvxHclE;-><init>(Lbike/smarthalo/app/presenters/LightViewPresenter;)V

    .line 73
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->lightSettingModeSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public getIsLightAuto()Z
    .locals 1

    .line 100
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsLightBlinking()Z
    .locals 1

    .line 93
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightBlinking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLightBrightness()I
    .locals 1

    .line 86
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightBrightness()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onViewPaused()V
    .locals 1

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 61
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LightViewPresenter;->cleanUpSettingsSubscription()V

    return-void
.end method

.method public onViewResumed()V
    .locals 1

    .line 54
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 55
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LightViewPresenter;->setUpSettingsSubscription()V

    return-void
.end method

.method public setLightBrightness(I)V
    .locals 1

    const-string v0, "lightBrightness"

    .line 130
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/LightViewPresenter;->updateSetting(Ljava/lang/String;I)V

    .line 132
    iget-object p1, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->updateFrontLightSettings()V

    :cond_0
    return-void
.end method

.method public toggleAutoLight(Z)V
    .locals 1

    const-string v0, "isLightNightMode"

    .line 107
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/LightViewPresenter;->updateSetting(Ljava/lang/String;Z)V

    .line 109
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->updateFrontLightMode(Z)V

    :cond_0
    return-void
.end method

.method public toggleIsBlinking(Z)V
    .locals 1

    .line 117
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LightViewPresenter;->cleanUpSettingsSubscription()V

    const-string v0, "isLightBlinking"

    .line 119
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/LightViewPresenter;->updateSetting(Ljava/lang/String;Z)V

    .line 121
    iget-object p1, p0, Lbike/smarthalo/app/presenters/LightViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->updateFrontLightSettings()V

    .line 125
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LightViewPresenter;->setUpSettingsSubscription()V

    return-void
.end method
