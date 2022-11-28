.class public final synthetic Lbike/smarthalo/app/services/-$$Lambda$DeviceConnectionJobService$4guBuj0UkCbUzTN9vOKCCIDlLpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/services/DeviceConnectionJobService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/services/DeviceConnectionJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/services/-$$Lambda$DeviceConnectionJobService$4guBuj0UkCbUzTN9vOKCCIDlLpQ;->f$0:Lbike/smarthalo/app/services/DeviceConnectionJobService;

    iput-object p2, p0, Lbike/smarthalo/app/services/-$$Lambda$DeviceConnectionJobService$4guBuj0UkCbUzTN9vOKCCIDlLpQ;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final onResult(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/services/-$$Lambda$DeviceConnectionJobService$4guBuj0UkCbUzTN9vOKCCIDlLpQ;->f$0:Lbike/smarthalo/app/services/DeviceConnectionJobService;

    iget-object v1, p0, Lbike/smarthalo/app/services/-$$Lambda$DeviceConnectionJobService$4guBuj0UkCbUzTN9vOKCCIDlLpQ;->f$1:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/services/DeviceConnectionJobService;->lambda$onStartJob$0(Lbike/smarthalo/app/services/DeviceConnectionJobService;Landroid/app/job/JobParameters;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V

    return-void
.end method
