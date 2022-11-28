.class public Lbike/smarthalo/app/services/DeviceConnectionJobService;
.super Landroid/app/job/JobService;
.source "DeviceConnectionJobService.java"


# static fields
.field public static final DEVICE_CONNECTION_JOB_ID:I = 0x9


# instance fields
.field public userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lbike/smarthalo/app/services/DeviceConnectionJobService;Landroid/app/job/JobParameters;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V
    .locals 1

    .line 33
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Success:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/DeviceConnectionJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 27
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getUserCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;->inject(Lbike/smarthalo/app/services/DeviceConnectionJobService;)V

    .line 29
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 30
    new-instance v1, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;

    invoke-direct {v1, v0}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;-><init>(Landroid/os/PersistableBundle;)V

    .line 31
    invoke-virtual {v1}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lbike/smarthalo/app/services/DeviceConnectionJobService;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    new-instance v2, Lbike/smarthalo/app/services/-$$Lambda$DeviceConnectionJobService$4guBuj0UkCbUzTN9vOKCCIDlLpQ;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$DeviceConnectionJobService$4guBuj0UkCbUzTN9vOKCCIDlLpQ;-><init>(Lbike/smarthalo/app/services/DeviceConnectionJobService;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->sendDeviceConnectionEvent(Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/DeviceConnectionJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
