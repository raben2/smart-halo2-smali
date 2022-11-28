.class public Lbike/smarthalo/app/helpers/JobServiceHelper;
.super Ljava/lang/Object;
.source "JobServiceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAllJobs(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "jobscheduler"

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->cancelAll()V

    :cond_0
    return-void
.end method

.method public static createJobService(Landroid/content/Context;I)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, v0}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;ILandroid/os/PersistableBundle;)V

    return-void
.end method

.method public static createJobService(Landroid/content/Context;ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "jobscheduler"

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 28
    invoke-static {p0, p1, p2}, Lbike/smarthalo/app/helpers/JobServiceHelper;->getJobServiceBuilder(Landroid/content/Context;ILandroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method public static createPeriodicJobService(Landroid/content/Context;IJ)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, p1, v1}, Lbike/smarthalo/app/helpers/JobServiceHelper;->getJobServiceBuilder(Landroid/content/Context;ILandroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/JobServiceHelper;->getPendingJob(Landroid/content/Context;I)Landroid/app/job/JobInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 73
    invoke-virtual {v1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 74
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method private static getJobServiceBuilder(Landroid/content/Context;ILandroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-static {p1}, Lbike/smarthalo/app/helpers/JobServiceHelper;->getJobServiceClassFromId(I)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, p1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {v1, p2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    :cond_0
    const/4 p0, 0x1

    .line 52
    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getJobServiceClassFromId(I)Ljava/lang/Class;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 121
    :pswitch_0
    const-class p0, Lbike/smarthalo/app/services/DeviceConnectionJobService;

    goto :goto_0

    .line 118
    :pswitch_1
    const-class p0, Lbike/smarthalo/app/services/TokenRefreshJobService;

    goto :goto_0

    .line 115
    :pswitch_2
    const-class p0, Lbike/smarthalo/app/services/UserSettingsJobService;

    goto :goto_0

    .line 112
    :pswitch_3
    const-class p0, Lbike/smarthalo/app/services/UserJobService;

    goto :goto_0

    .line 109
    :pswitch_4
    const-class p0, Lbike/smarthalo/app/services/UpdateRideJobService;

    goto :goto_0

    .line 106
    :pswitch_5
    const-class p0, Lbike/smarthalo/app/services/StravaUploadJobService;

    goto :goto_0

    .line 103
    :pswitch_6
    const-class p0, Lbike/smarthalo/app/services/DeleteRideJobService;

    goto :goto_0

    .line 100
    :pswitch_7
    const-class p0, Lbike/smarthalo/app/services/PastRidesJobService;

    goto :goto_0

    .line 97
    :pswitch_8
    const-class p0, Lbike/smarthalo/app/services/RidesUploadJobService;

    :goto_0
    return-object p0

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

.method public static getPendingJob(Landroid/content/Context;I)Landroid/app/job/JobInfo;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "jobscheduler"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 84
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
