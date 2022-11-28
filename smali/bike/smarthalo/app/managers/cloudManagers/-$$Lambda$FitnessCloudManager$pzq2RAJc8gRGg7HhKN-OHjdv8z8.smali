.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$pzq2RAJc8gRGg7HhKN-OHjdv8z8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

.field private final synthetic f$1:Lbike/smarthalo/app/models/CloudRide;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/CloudRide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$pzq2RAJc8gRGg7HhKN-OHjdv8z8;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$pzq2RAJc8gRGg7HhKN-OHjdv8z8;->f$1:Lbike/smarthalo/app/models/CloudRide;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$pzq2RAJc8gRGg7HhKN-OHjdv8z8;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$pzq2RAJc8gRGg7HhKN-OHjdv8z8;->f$1:Lbike/smarthalo/app/models/CloudRide;

    check-cast p1, Lbike/smarthalo/app/api/strava/StravaRideResponse;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->lambda$null$1(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/CloudRide;Lbike/smarthalo/app/api/strava/StravaRideResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
