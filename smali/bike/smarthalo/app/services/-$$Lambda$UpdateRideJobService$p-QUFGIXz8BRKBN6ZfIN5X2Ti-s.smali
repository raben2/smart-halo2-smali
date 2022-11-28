.class public final synthetic Lbike/smarthalo/app/services/-$$Lambda$UpdateRideJobService$p-QUFGIXz8BRKBN6ZfIN5X2Ti-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/services/UpdateRideJobService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/services/UpdateRideJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/services/-$$Lambda$UpdateRideJobService$p-QUFGIXz8BRKBN6ZfIN5X2Ti-s;->f$0:Lbike/smarthalo/app/services/UpdateRideJobService;

    iput-object p2, p0, Lbike/smarthalo/app/services/-$$Lambda$UpdateRideJobService$p-QUFGIXz8BRKBN6ZfIN5X2Ti-s;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/services/-$$Lambda$UpdateRideJobService$p-QUFGIXz8BRKBN6ZfIN5X2Ti-s;->f$0:Lbike/smarthalo/app/services/UpdateRideJobService;

    iget-object v1, p0, Lbike/smarthalo/app/services/-$$Lambda$UpdateRideJobService$p-QUFGIXz8BRKBN6ZfIN5X2Ti-s;->f$1:Landroid/app/job/JobParameters;

    check-cast p1, Lbike/smarthalo/app/models/CloudRide;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/services/UpdateRideJobService;->lambda$onStartJob$0(Lbike/smarthalo/app/services/UpdateRideJobService;Landroid/app/job/JobParameters;Lbike/smarthalo/app/models/CloudRide;)V

    return-void
.end method
