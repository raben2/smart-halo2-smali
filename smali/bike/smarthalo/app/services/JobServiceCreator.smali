.class public final Lbike/smarthalo/app/services/JobServiceCreator;
.super Ljava/lang/Object;
.source "JobServiceCreator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rJ\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0016\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012J\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0016\u0010\u0015\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00162\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u000c\u001a\u00020\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lbike/smarthalo/app/services/JobServiceCreator;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "jobScheduler",
        "Landroid/app/job/JobScheduler;",
        "cancelAllJobs",
        "",
        "createJobService",
        "jobId",
        "",
        "extras",
        "Landroid/os/PersistableBundle;",
        "createPeriodicJobService",
        "period",
        "",
        "getJobServiceBuilder",
        "Landroid/app/job/JobInfo$Builder;",
        "getJobServiceClassFromId",
        "Ljava/lang/Class;",
        "getPendingJob",
        "Landroid/app/job/JobInfo;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final jobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/services/JobServiceCreator;->context:Landroid/content/Context;

    .line 14
    iget-object p1, p0, Lbike/smarthalo/app/services/JobServiceCreator;->context:Landroid/content/Context;

    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/job/JobScheduler;

    iput-object p1, p0, Lbike/smarthalo/app/services/JobServiceCreator;->jobScheduler:Landroid/app/job/JobScheduler;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.job.JobScheduler"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getJobServiceBuilder(ILandroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 4

    .line 28
    invoke-direct {p0, p1}, Lbike/smarthalo/app/services/JobServiceCreator;->getJobServiceClassFromId(I)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 32
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lbike/smarthalo/app/services/JobServiceCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    invoke-direct {v1, p1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {v1, p2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    :cond_0
    const/4 p1, 0x1

    .line 38
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 39
    invoke-virtual {p2, p1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getJobServiceClassFromId(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 81
    :pswitch_0
    const-class p1, Lbike/smarthalo/app/services/DeviceConnectionJobService;

    goto :goto_0

    .line 80
    :pswitch_1
    const-class p1, Lbike/smarthalo/app/services/TokenRefreshJobService;

    goto :goto_0

    .line 79
    :pswitch_2
    const-class p1, Lbike/smarthalo/app/services/UserSettingsJobService;

    goto :goto_0

    .line 78
    :pswitch_3
    const-class p1, Lbike/smarthalo/app/services/UserJobService;

    goto :goto_0

    .line 77
    :pswitch_4
    const-class p1, Lbike/smarthalo/app/services/UpdateRideJobService;

    goto :goto_0

    .line 76
    :pswitch_5
    const-class p1, Lbike/smarthalo/app/services/StravaUploadJobService;

    goto :goto_0

    .line 75
    :pswitch_6
    const-class p1, Lbike/smarthalo/app/services/DeleteRideJobService;

    goto :goto_0

    .line 74
    :pswitch_7
    const-class p1, Lbike/smarthalo/app/services/PastRidesJobService;

    goto :goto_0

    .line 73
    :pswitch_8
    const-class p1, Lbike/smarthalo/app/services/RidesUploadJobService;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final cancelAllJobs()V
    .locals 1

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/services/JobServiceCreator;->jobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->cancelAll()V

    return-void
.end method

.method public final createJobService(I)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public final createJobService(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/services/JobServiceCreator;->getJobServiceBuilder(ILandroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    iget-object p2, p0, Lbike/smarthalo/app/services/JobServiceCreator;->jobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method public final createPeriodicJobService(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/services/JobServiceCreator;->getJobServiceBuilder(ILandroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/services/JobServiceCreator;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {v0, p2, p3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 55
    iget-object p1, p0, Lbike/smarthalo/app/services/JobServiceCreator;->jobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/services/JobServiceCreator;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getPendingJob(I)Landroid/app/job/JobInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/services/JobServiceCreator;->jobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    const-string v1, "jobScheduler.allPendingJobs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    const-string v2, "jobInfo"

    .line 63
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
