.class public Lbike/smarthalo/app/services/UpdateRideJobService;
.super Landroid/app/job/JobService;
.source "UpdateRideJobService.java"


# static fields
.field public static final PATCH_RIDE_JOB_ID:I = 0x5


# instance fields
.field fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private patchRideDisposable:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lbike/smarthalo/app/services/UpdateRideJobService;Landroid/app/job/JobParameters;Lbike/smarthalo/app/models/CloudRide;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    .line 44
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/UpdateRideJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public static synthetic lambda$onStartJob$1(Lbike/smarthalo/app/services/UpdateRideJobService;Landroid/app/job/JobParameters;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x1

    .line 45
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/UpdateRideJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    .line 31
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFitnessCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;->inject(Lbike/smarthalo/app/services/UpdateRideJobService;)V

    .line 33
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/services/UpdateRideJobService;->patchRideDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 35
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getPastRidesToUpdate()Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHPastRide;

    .line 39
    new-instance v2, Lbike/smarthalo/app/api/requests/PatchRideRequest;

    invoke-direct {v2, v1}, Lbike/smarthalo/app/api/requests/PatchRideRequest;-><init>(Lbike/smarthalo/app/models/SHPastRide;)V

    .line 40
    iget-object v3, p0, Lbike/smarthalo/app/services/UpdateRideJobService;->patchRideDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v4, p0, Lbike/smarthalo/app/services/UpdateRideJobService;->fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$id()I

    move-result v1

    int-to-long v5, v1

    .line 42
    invoke-virtual {v4, v5, v6, v2}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->updateRide(JLbike/smarthalo/app/api/requests/PatchRideRequest;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/services/-$$Lambda$UpdateRideJobService$p-QUFGIXz8BRKBN6ZfIN5X2Ti-s;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$UpdateRideJobService$p-QUFGIXz8BRKBN6ZfIN5X2Ti-s;-><init>(Lbike/smarthalo/app/services/UpdateRideJobService;Landroid/app/job/JobParameters;)V

    new-instance v4, Lbike/smarthalo/app/services/-$$Lambda$UpdateRideJobService$eHm01uL-sHNmLiYvr3NBXWe2TUk;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$UpdateRideJobService$eHm01uL-sHNmLiYvr3NBXWe2TUk;-><init>(Lbike/smarthalo/app/services/UpdateRideJobService;Landroid/app/job/JobParameters;)V

    .line 43
    invoke-virtual {v1, v2, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 40
    invoke-virtual {v3, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/UpdateRideJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 59
    iget-object p1, p0, Lbike/smarthalo/app/services/UpdateRideJobService;->patchRideDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 p1, 0x1

    return p1
.end method
