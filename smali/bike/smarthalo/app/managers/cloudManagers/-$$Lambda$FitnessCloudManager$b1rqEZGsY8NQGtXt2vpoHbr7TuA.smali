.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$b1rqEZGsY8NQGtXt2vpoHbr7TuA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHRide;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$b1rqEZGsY8NQGtXt2vpoHbr7TuA;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$b1rqEZGsY8NQGtXt2vpoHbr7TuA;->f$1:Lbike/smarthalo/app/models/SHRide;

    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$b1rqEZGsY8NQGtXt2vpoHbr7TuA;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$b1rqEZGsY8NQGtXt2vpoHbr7TuA;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$b1rqEZGsY8NQGtXt2vpoHbr7TuA;->f$1:Lbike/smarthalo/app/models/SHRide;

    iget-object v2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$b1rqEZGsY8NQGtXt2vpoHbr7TuA;->f$2:Ljava/lang/String;

    check-cast p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    invoke-static {v0, v1, v2, p1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->lambda$uploadRideToCloud$0(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/SHRide;Ljava/lang/String;Lbike/smarthalo/app/api/strava/StravaRideResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
