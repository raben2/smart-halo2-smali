.class public Lbike/smarthalo/app/services/DeleteRideJobService;
.super Landroid/app/job/JobService;
.source "DeleteRideJobService.java"


# static fields
.field public static final DELETE_RIDE_JOB_ID:I = 0x3

.field public static final TAG:Ljava/lang/String; = "DeleteRideJobService"


# instance fields
.field private deleteRideCloudManagerSubscription:Lio/reactivex/disposables/CompositeDisposable;

.field fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private parameters:Landroid/app/job/JobParameters;

.field private updateRealmRidesSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 25
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->deleteRideCloudManagerSubscription:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private deletePendingRides()V
    .locals 5

    .line 40
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getPastRidesToDelete()Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHPastRide;

    .line 43
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$id()I

    move-result v2

    if-gez v2, :cond_0

    .line 44
    invoke-direct {p0}, Lbike/smarthalo/app/services/DeleteRideJobService;->updateAllRealmRidesId()V

    return-void

    .line 48
    :cond_0
    iget-object v2, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->deleteRideCloudManagerSubscription:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v3, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    .line 50
    invoke-virtual {v3, v1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->deleteRide(Lbike/smarthalo/app/models/SHPastRide;)Lio/reactivex/Single;

    move-result-object v3

    new-instance v4, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$qqXIoSuwKudt2EGbrjBw1BcI8uI;

    invoke-direct {v4, p0}, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$qqXIoSuwKudt2EGbrjBw1BcI8uI;-><init>(Lbike/smarthalo/app/services/DeleteRideJobService;)V

    .line 51
    invoke-virtual {v3, v4}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v3

    new-instance v4, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$mGS9nBTOk5TDJLdV3jiE9Z6Le1U;

    invoke-direct {v4, p0, v1}, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$mGS9nBTOk5TDJLdV3jiE9Z6Le1U;-><init>(Lbike/smarthalo/app/services/DeleteRideJobService;Lbike/smarthalo/app/models/SHPastRide;)V

    .line 52
    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 48
    invoke-virtual {v2, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disposeDeleteRideSubscription()V
    .locals 1

    .line 78
    iget-object v0, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->deleteRideCloudManagerSubscription:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->updateRealmRidesSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->updateRealmRidesSubscription:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->updateRealmRidesSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$deletePendingRides$0(Lbike/smarthalo/app/services/DeleteRideJobService;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->parameters:Landroid/app/job/JobParameters;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/DeleteRideJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public static synthetic lambda$deletePendingRides$1(Lbike/smarthalo/app/services/DeleteRideJobService;Lbike/smarthalo/app/models/SHPastRide;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 54
    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->deletePastRide(Lbike/smarthalo/app/models/SHPastRide;)V

    .line 55
    iget-object p1, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->parameters:Landroid/app/job/JobParameters;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/DeleteRideJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->parameters:Landroid/app/job/JobParameters;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/DeleteRideJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$updateAllRealmRidesId$2(Lbike/smarthalo/app/services/DeleteRideJobService;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object p1, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->parameters:Landroid/app/job/JobParameters;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/DeleteRideJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public static synthetic lambda$updateAllRealmRidesId$3(Lbike/smarthalo/app/services/DeleteRideJobService;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lbike/smarthalo/app/services/DeleteRideJobService;->deletePendingRides()V

    return-void
.end method

.method private updateAllRealmRidesId()V
    .locals 2

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    .line 71
    invoke-virtual {v0}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->updateCloudAndLocalRides()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$AMuYnUXn8pB5PQ4sPnFmnqHyRvs;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$AMuYnUXn8pB5PQ4sPnFmnqHyRvs;-><init>(Lbike/smarthalo/app/services/DeleteRideJobService;)V

    .line 72
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$RX47faDUL-X6lJvmrBy2RmqybuM;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$RX47faDUL-X6lJvmrBy2RmqybuM;-><init>(Lbike/smarthalo/app/services/DeleteRideJobService;)V

    .line 73
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->updateRealmRidesSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 31
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFitnessCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;->inject(Lbike/smarthalo/app/services/DeleteRideJobService;)V

    .line 32
    iput-object p1, p0, Lbike/smarthalo/app/services/DeleteRideJobService;->parameters:Landroid/app/job/JobParameters;

    .line 34
    invoke-direct {p0}, Lbike/smarthalo/app/services/DeleteRideJobService;->deletePendingRides()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 65
    invoke-direct {p0}, Lbike/smarthalo/app/services/DeleteRideJobService;->disposeDeleteRideSubscription()V

    const/4 p1, 0x1

    return p1
.end method
