.class public Lbike/smarthalo/app/presenters/LaunchPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "LaunchPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$Presenter;


# instance fields
.field private TAG:Ljava/lang/String;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 18
    const-class p1, Lbike/smarthalo/app/presenters/LaunchPresenter;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/LaunchPresenter;->TAG:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lbike/smarthalo/app/presenters/LaunchPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$Presenter;
    .locals 1

    .line 31
    new-instance v0, Lbike/smarthalo/app/presenters/LaunchPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/LaunchPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;)V

    return-object v0
.end method

.method private logOutAndFinish()V
    .locals 1

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LaunchPresenter;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->logout()V

    return-void
.end method


# virtual methods
.method public decideRoute()V
    .locals 5

    .line 36
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lbike/smarthalo/app/presenters/LaunchPresenter;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lbike/smarthalo/app/presenters/LaunchPresenter;->context:Landroid/content/Context;

    const/16 v2, 0x8

    const-wide/32 v3, 0x36ee80

    invoke-static {v1, v2, v3, v4}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createPeriodicJobService(Landroid/content/Context;IJ)V

    .line 42
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$language()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 43
    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$language(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LaunchPresenter;->context:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LaunchPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;->launchMainActivity()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LaunchPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LaunchContract$View;->launchOnboarding()V

    goto :goto_0

    .line 51
    :cond_2
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LaunchPresenter;->logOutAndFinish()V

    :goto_0
    return-void
.end method

.method public onViewDestroyed()V
    .locals 0

    return-void
.end method
