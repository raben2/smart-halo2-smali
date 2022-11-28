.class public Lbike/smarthalo/app/presenters/LeftDrawerPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "LeftDrawerPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/presenters/LeftDrawerPresenter$LogoutCallback;
    }
.end annotation


# instance fields
.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$View;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$View;

    .line 41
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->setUpCentralServiceConnection()V

    return-void
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/LeftDrawerPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 31
    iput-object p1, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;
    .locals 1

    .line 45
    new-instance v0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$View;)V

    return-object v0
.end method

.method private cleanUpSubscriptions()V
    .locals 1

    .line 104
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    return-void
.end method

.method private formatUserValues(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getLocationDescription(DD)Ljava/lang/String;
    .locals 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.4f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%.4f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setUpCentralServiceConnection()V
    .locals 2

    .line 49
    new-instance v0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter$1;-><init>(Lbike/smarthalo/app/presenters/LeftDrawerPresenter;)V

    iget-object v1, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method private setUpSubscriptions()V
    .locals 1

    .line 100
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method


# virtual methods
.method public getCurrentUser()Lbike/smarthalo/app/models/SHUser;
    .locals 1

    .line 81
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    return-object v0
.end method

.method public getVersionText()Ljava/lang/String;
    .locals 3

    const-string v0, "1.18.0"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x286

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - DEV"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public logout(Lbike/smarthalo/app/presenters/LeftDrawerPresenter$LogoutCallback;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->logout()V

    .line 95
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->logout()V

    .line 96
    invoke-interface {p1}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter$LogoutCallback;->onLogoutCompleted()V

    return-void
.end method

.method public onDrawerClosed()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->cleanUpSubscriptions()V

    return-void
.end method

.method public onDrawerOpened()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->setUpSubscriptions()V

    return-void
.end method

.method public onViewPaused()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->cleanUpSubscriptions()V

    return-void
.end method

.method public onViewResumed()V
    .locals 1

    .line 74
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$View;->isDrawerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->setUpSubscriptions()V

    :cond_0
    return-void
.end method

.method public showTouchDemo()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LeftDrawerPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->showTouchOnboarding()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
