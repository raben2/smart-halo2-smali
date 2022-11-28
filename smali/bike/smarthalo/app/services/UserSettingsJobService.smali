.class public Lbike/smarthalo/app/services/UserSettingsJobService;
.super Landroid/app/job/JobService;
.source "UserSettingsJobService.java"


# static fields
.field public static final UPDATE_USER_SETTINGS_JOB_ID:I = 0x7


# instance fields
.field public userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private userSettingsSubcription:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private clearSubscription()V
    .locals 1

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/services/UserSettingsJobService;->userSettingsSubcription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lbike/smarthalo/app/services/UserSettingsJobService;->userSettingsSubcription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lbike/smarthalo/app/services/UserSettingsJobService;Landroid/app/job/JobParameters;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/UserSettingsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 49
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/UserSettingsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onStartJob$1(Lbike/smarthalo/app/services/UserSettingsJobService;Landroid/app/job/JobParameters;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/UserSettingsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 31
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getUserCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;->inject(Lbike/smarthalo/app/services/UserSettingsJobService;)V

    .line 33
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 34
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v3, p0, Lbike/smarthalo/app/services/UserSettingsJobService;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0, v1}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->updateCloudConfigsWithLocalValues(ILbike/smarthalo/app/models/SHSettings;)Lio/reactivex/Single;

    move-result-object v0

    .line 43
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/services/-$$Lambda$UserSettingsJobService$iB7yYlHjJWcNa5Z3i2TRpK-ywXA;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$UserSettingsJobService$iB7yYlHjJWcNa5Z3i2TRpK-ywXA;-><init>(Lbike/smarthalo/app/services/UserSettingsJobService;Landroid/app/job/JobParameters;)V

    new-instance v3, Lbike/smarthalo/app/services/-$$Lambda$UserSettingsJobService$j_TGr7P87nybonn-2o5Ui5k-ito;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$UserSettingsJobService$j_TGr7P87nybonn-2o5Ui5k-ito;-><init>(Lbike/smarthalo/app/services/UserSettingsJobService;Landroid/app/job/JobParameters;)V

    .line 44
    invoke-virtual {v0, v1, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/services/UserSettingsJobService;->userSettingsSubcription:Lio/reactivex/disposables/Disposable;

    return v2

    :cond_1
    :goto_0
    return v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lbike/smarthalo/app/services/UserSettingsJobService;->clearSubscription()V

    const/4 p1, 0x0

    return p1
.end method
