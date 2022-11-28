.class public Lbike/smarthalo/app/services/UserJobService;
.super Landroid/app/job/JobService;
.source "UserJobService.java"


# static fields
.field public static final UPDATE_USER_JOB_ID:I = 0x6


# instance fields
.field public userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private userUpdateSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private clearSubscription()V
    .locals 1

    .line 65
    iget-object v0, p0, Lbike/smarthalo/app/services/UserJobService;->userUpdateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lbike/smarthalo/app/services/UserJobService;->userUpdateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lbike/smarthalo/app/services/UserJobService;Landroid/app/job/JobParameters;Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p2}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/UserJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 49
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/UserJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onStartJob$1(Lbike/smarthalo/app/services/UserJobService;Landroid/app/job/JobParameters;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/UserJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 29
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getUserCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;->inject(Lbike/smarthalo/app/services/UserJobService;)V

    .line 31
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/UserJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0

    .line 39
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/services/UserJobService;->clearSubscription()V

    .line 41
    iget-object v1, p0, Lbike/smarthalo/app/services/UserJobService;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 42
    invoke-interface {v1, v0}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->updateUser(Lbike/smarthalo/app/models/SHUser;)Lio/reactivex/Single;

    move-result-object v0

    .line 43
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/services/-$$Lambda$UserJobService$hedaY-llHi5cIs_ZwcIvdq3yR90;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$UserJobService$hedaY-llHi5cIs_ZwcIvdq3yR90;-><init>(Lbike/smarthalo/app/services/UserJobService;Landroid/app/job/JobParameters;)V

    new-instance v2, Lbike/smarthalo/app/services/-$$Lambda$UserJobService$K4_Y1L0BQH0tAGvZsrFPnUvDn5k;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$UserJobService$K4_Y1L0BQH0tAGvZsrFPnUvDn5k;-><init>(Lbike/smarthalo/app/services/UserJobService;Landroid/app/job/JobParameters;)V

    .line 44
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/services/UserJobService;->userUpdateSubscription:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lbike/smarthalo/app/services/UserJobService;->clearSubscription()V

    const/4 p1, 0x0

    return p1
.end method
