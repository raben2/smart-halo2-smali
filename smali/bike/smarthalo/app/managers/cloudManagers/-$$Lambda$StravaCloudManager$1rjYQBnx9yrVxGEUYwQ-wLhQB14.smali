.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$1rjYQBnx9yrVxGEUYwQ-wLhQB14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHRide;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lbike/smarthalo/app/models/SHRide;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$1rjYQBnx9yrVxGEUYwQ-wLhQB14;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$1rjYQBnx9yrVxGEUYwQ-wLhQB14;->f$1:Lbike/smarthalo/app/models/SHRide;

    iput-boolean p3, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$1rjYQBnx9yrVxGEUYwQ-wLhQB14;->f$2:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$1rjYQBnx9yrVxGEUYwQ-wLhQB14;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$1rjYQBnx9yrVxGEUYwQ-wLhQB14;->f$1:Lbike/smarthalo/app/models/SHRide;

    iget-boolean v2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$1rjYQBnx9yrVxGEUYwQ-wLhQB14;->f$2:Z

    check-cast p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    invoke-static {v0, v1, v2, p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->lambda$sendRideToStrava$13(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lbike/smarthalo/app/models/SHRide;ZLbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
