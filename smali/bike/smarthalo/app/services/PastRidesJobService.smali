.class public Lbike/smarthalo/app/services/PastRidesJobService;
.super Landroid/app/job/JobService;
.source "PastRidesJobService.java"


# static fields
.field public static final PAST_RIDES_JOB_ID:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PastRidesJobService"


# instance fields
.field fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private rideUpdateSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private clearSubscription()V
    .locals 1

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/services/PastRidesJobService;->rideUpdateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lbike/smarthalo/app/services/PastRidesJobService;->rideUpdateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lbike/smarthalo/app/services/PastRidesJobService;Landroid/app/job/JobParameters;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    .line 44
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/PastRidesJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public static synthetic lambda$onStartJob$1(Lbike/smarthalo/app/services/PastRidesJobService;Landroid/app/job/JobParameters;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x1

    .line 45
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/PastRidesJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 33
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFitnessCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;->inject(Lbike/smarthalo/app/services/PastRidesJobService;)V

    const-string v0, "PastRidesJobService"

    const-string v1, "Started ride upload job"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HAS_DOWNLOADED_PAST_RIDES"

    .line 37
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 38
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lbike/smarthalo/app/services/PastRidesJobService;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 42
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;->updateCloudAndLocalRides()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/services/-$$Lambda$PastRidesJobService$mW9ObnOsK9YIRhkOO_D_qxA1ULM;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$PastRidesJobService$mW9ObnOsK9YIRhkOO_D_qxA1ULM;-><init>(Lbike/smarthalo/app/services/PastRidesJobService;Landroid/app/job/JobParameters;)V

    new-instance v2, Lbike/smarthalo/app/services/-$$Lambda$PastRidesJobService$tvQI2slvVJ5ckSQH3n-Uka0gOJo;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$PastRidesJobService$tvQI2slvVJ5ckSQH3n-Uka0gOJo;-><init>(Lbike/smarthalo/app/services/PastRidesJobService;Landroid/app/job/JobParameters;)V

    .line 43
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/services/PastRidesJobService;->rideUpdateSubscription:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/PastRidesJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lbike/smarthalo/app/services/PastRidesJobService;->clearSubscription()V

    const/4 p1, 0x1

    return p1
.end method
