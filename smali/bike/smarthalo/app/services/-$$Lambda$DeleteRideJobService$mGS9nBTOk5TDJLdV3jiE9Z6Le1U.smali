.class public final synthetic Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$mGS9nBTOk5TDJLdV3jiE9Z6Le1U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/services/DeleteRideJobService;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHPastRide;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/services/DeleteRideJobService;Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$mGS9nBTOk5TDJLdV3jiE9Z6Le1U;->f$0:Lbike/smarthalo/app/services/DeleteRideJobService;

    iput-object p2, p0, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$mGS9nBTOk5TDJLdV3jiE9Z6Le1U;->f$1:Lbike/smarthalo/app/models/SHPastRide;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$mGS9nBTOk5TDJLdV3jiE9Z6Le1U;->f$0:Lbike/smarthalo/app/services/DeleteRideJobService;

    iget-object v1, p0, Lbike/smarthalo/app/services/-$$Lambda$DeleteRideJobService$mGS9nBTOk5TDJLdV3jiE9Z6Le1U;->f$1:Lbike/smarthalo/app/models/SHPastRide;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/services/DeleteRideJobService;->lambda$deletePendingRides$1(Lbike/smarthalo/app/services/DeleteRideJobService;Lbike/smarthalo/app/models/SHPastRide;Lretrofit2/Response;)V

    return-void
.end method
