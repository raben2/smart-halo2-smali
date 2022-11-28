.class public Lbike/smarthalo/app/services/RidesUploadJobService;
.super Landroid/app/job/JobService;
.source "RidesUploadJobService.java"


# static fields
.field public static final RIDE_UPLOAD_JOB_ID:I = 0x1

.field public static final TAG:Ljava/lang/String; = "RidesUploadJobService"


# instance fields
.field fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private rideUploadDisposable:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 25
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/services/RidesUploadJobService;->rideUploadDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lbike/smarthalo/app/services/RidesUploadJobService;Landroid/app/job/JobParameters;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/RidesUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public static synthetic lambda$onStartJob$1(Lbike/smarthalo/app/services/RidesUploadJobService;Landroid/app/job/JobParameters;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    .line 48
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/RidesUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 32
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFitnessCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;->inject(Lbike/smarthalo/app/services/RidesUploadJobService;)V

    const-string v0, "RidesUploadJobService"

    const-string v1, "Started ride upload job"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getSortedRidesToUpload()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHRide;

    .line 43
    iget-object v2, p0, Lbike/smarthalo/app/services/RidesUploadJobService;->rideUploadDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v3, p0, Lbike/smarthalo/app/services/RidesUploadJobService;->fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    .line 45
    invoke-virtual {v3, v1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->uploadRideToCloud(Lbike/smarthalo/app/models/SHRide;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v3, Lbike/smarthalo/app/services/-$$Lambda$RidesUploadJobService$BZBVUZL5PqdQ2LUtk3RggNoV63U;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$RidesUploadJobService$BZBVUZL5PqdQ2LUtk3RggNoV63U;-><init>(Lbike/smarthalo/app/services/RidesUploadJobService;Landroid/app/job/JobParameters;)V

    new-instance v4, Lbike/smarthalo/app/services/-$$Lambda$RidesUploadJobService$V8y_sIQo4xOM4icc8yJjerRZQOY;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$RidesUploadJobService$V8y_sIQo4xOM4icc8yJjerRZQOY;-><init>(Lbike/smarthalo/app/services/RidesUploadJobService;Landroid/app/job/JobParameters;)V

    .line 46
    invoke-virtual {v1, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 43
    invoke-virtual {v2, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/RidesUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 60
    iget-object p1, p0, Lbike/smarthalo/app/services/RidesUploadJobService;->rideUploadDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 p1, 0x1

    return p1
.end method
