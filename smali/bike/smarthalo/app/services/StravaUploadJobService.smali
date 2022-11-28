.class public Lbike/smarthalo/app/services/StravaUploadJobService;
.super Landroid/app/job/JobService;
.source "StravaUploadJobService.java"


# static fields
.field public static final STRAVA_UPLOAD_JOB_ID:I = 0x4

.field public static final TAG:Ljava/lang/String; = "StravaUploadJobService"


# instance fields
.field fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private rideUploadDisposable:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private handleStravaResponse(Lbike/smarthalo/app/models/StravaUploadResult;Landroid/app/job/JobParameters;)V
    .locals 1

    .line 62
    sget-object v0, Lbike/smarthalo/app/services/StravaUploadJobService$1;->$SwitchMap$bike$smarthalo$app$models$StravaUploadResult:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/StravaUploadResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-virtual {p0, p2, v0}, Lbike/smarthalo/app/services/StravaUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 p1, 0x5

    .line 74
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p2, p1}, Lbike/smarthalo/app/services/StravaUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p0, p2, v0}, Lbike/smarthalo/app/services/StravaUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 64
    :pswitch_3
    invoke-virtual {p0, p2, v0}, Lbike/smarthalo/app/services/StravaUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$onStartJob$0(Lbike/smarthalo/app/services/StravaUploadJobService;Landroid/app/job/JobParameters;Lbike/smarthalo/app/models/StravaUploadResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p2, p1}, Lbike/smarthalo/app/services/StravaUploadJobService;->handleStravaResponse(Lbike/smarthalo/app/models/StravaUploadResult;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public static synthetic lambda$onStartJob$1(Lbike/smarthalo/app/services/StravaUploadJobService;Landroid/app/job/JobParameters;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x1

    .line 49
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/StravaUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 35
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFitnessCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;->inject(Lbike/smarthalo/app/services/StravaUploadJobService;)V

    .line 37
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/services/StravaUploadJobService;->rideUploadDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 39
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getPastRidesToUploadToStrava()Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v1

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHPastRide;

    .line 44
    iget-object v2, p0, Lbike/smarthalo/app/services/StravaUploadJobService;->rideUploadDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v3, p0, Lbike/smarthalo/app/services/StravaUploadJobService;->fitnessCloudManager:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$id()I

    move-result v1

    .line 46
    invoke-virtual {v3, v1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->launchManualStravaUploadFlow(I)Lio/reactivex/Single;

    move-result-object v1

    new-instance v3, Lbike/smarthalo/app/services/-$$Lambda$StravaUploadJobService$NEWH-5jTBdKtBJ9uxiHich0iwCA;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$StravaUploadJobService$NEWH-5jTBdKtBJ9uxiHich0iwCA;-><init>(Lbike/smarthalo/app/services/StravaUploadJobService;Landroid/app/job/JobParameters;)V

    new-instance v4, Lbike/smarthalo/app/services/-$$Lambda$StravaUploadJobService$IwcaG4TvUfKVtvKgLYs32kfjBB0;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$StravaUploadJobService$IwcaG4TvUfKVtvKgLYs32kfjBB0;-><init>(Lbike/smarthalo/app/services/StravaUploadJobService;Landroid/app/job/JobParameters;)V

    .line 47
    invoke-virtual {v1, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 44
    invoke-virtual {v2, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/StravaUploadJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 81
    iget-object p1, p0, Lbike/smarthalo/app/services/StravaUploadJobService;->rideUploadDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 85
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getPastRidesToUpdate()Ljava/util/List;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x5

    .line 87
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
