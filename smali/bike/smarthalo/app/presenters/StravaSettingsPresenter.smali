.class public Lbike/smarthalo/app/presenters/StravaSettingsPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "StravaSettingsPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;


# instance fields
.field private disconnectionSubscription:Lio/reactivex/disposables/Disposable;

.field private imageLoadSubscription:Lio/reactivex/disposables/Disposable;

.field stravaCloudManagerContract:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private stravaUpdateSubscription:Lio/reactivex/disposables/Disposable;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;

    .line 33
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getStravaCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;->inject(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$Presenter;
    .locals 1

    .line 37
    new-instance v0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;)V

    return-object v0
.end method

.method private clearDisconnectionSubscription()V
    .locals 1

    .line 116
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->disconnectionSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->disconnectionSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearImageLoadSubscription()V
    .locals 1

    .line 130
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->imageLoadSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->imageLoadSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearStravaUpdateSubscription()V
    .locals 1

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->stravaUpdateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->stravaUpdateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$disconnectAccount$0(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    sget-object v0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter$1;->$SwitchMap$bike$smarthalo$app$managers$cloudManagers$UserCloudManager$CloudResult:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;->onNoNetwork()V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;->onError()V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;->onAccountDisconnected()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$updateProfileView$2(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p1, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;

    iget-object p1, p1, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;->onStravaProfilePictureReady(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateStravaAccount$1(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    iget-boolean v0, p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;->isAccountDeactivated:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object p1, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;->onAccountDisconnected()V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 96
    iget-object p1, p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;->value:Ljava/lang/Object;

    check-cast p1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->updateProfileView(Lbike/smarthalo/app/models/StravaLinkedAccount;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateProfileView(Lbike/smarthalo/app/models/StravaLinkedAccount;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->clearImageLoadSubscription()V

    .line 105
    new-instance v0, Lbike/smarthalo/app/tasks/ImageLoadingTask;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$imageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lbike/smarthalo/app/tasks/ImageLoadingTask;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lbike/smarthalo/app/tasks/ImageLoadingTask;->getTaskObservable()Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$StravaSettingsPresenter$wkWTebLDYQiNl1Kti_w-ZszsAWY;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$StravaSettingsPresenter$wkWTebLDYQiNl1Kti_w-ZszsAWY;-><init>(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)V

    .line 108
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->imageLoadSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private updateStravaAccount()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->clearStravaUpdateSubscription()V

    .line 89
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->stravaCloudManagerContract:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    .line 90
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;->getAndUpdateStravaLinkedAccount()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$StravaSettingsPresenter$nvI77PwCBaUQ0KrQuaZ6lvmMXQ4;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$StravaSettingsPresenter$nvI77PwCBaUQ0KrQuaZ6lvmMXQ4;-><init>(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)V

    .line 91
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->stravaUpdateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public disconnectAccount()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->clearDisconnectionSubscription()V

    .line 69
    iget-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->stravaCloudManagerContract:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    .line 70
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;->disconnectAccount()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$StravaSettingsPresenter$kV3jVXSolJf_K1dolBDCkq182h0;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$StravaSettingsPresenter$kV3jVXSolJf_K1dolBDCkq182h0;-><init>(Lbike/smarthalo/app/presenters/StravaSettingsPresenter;)V

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->disconnectionSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onViewCreated()V
    .locals 3

    .line 42
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$isAutoUploadOn()Z

    move-result v2

    invoke-interface {v1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;->onSettingsReady(Z)V

    .line 45
    iget-object v1, p0, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$username()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/StravaSettingsContract$View;->onStravaUsernameReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewPaused()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->clearStravaUpdateSubscription()V

    .line 57
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->clearImageLoadSubscription()V

    return-void
.end method

.method public onViewResumed()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/StravaSettingsPresenter;->updateStravaAccount()V

    return-void
.end method

.method public setAutomaticRideUpdate(Z)V
    .locals 0

    .line 62
    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->setStravaRideAutoUpload(Z)V

    return-void
.end method
