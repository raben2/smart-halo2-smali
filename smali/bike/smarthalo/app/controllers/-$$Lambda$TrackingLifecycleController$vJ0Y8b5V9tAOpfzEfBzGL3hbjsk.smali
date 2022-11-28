.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$vJ0Y8b5V9tAOpfzEfBzGL3hbjsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/TrackingLifecycleController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$vJ0Y8b5V9tAOpfzEfBzGL3hbjsk;->f$0:Lbike/smarthalo/app/controllers/TrackingLifecycleController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$vJ0Y8b5V9tAOpfzEfBzGL3hbjsk;->f$0:Lbike/smarthalo/app/controllers/TrackingLifecycleController;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->lambda$setUpTrackingStopTimer$3(Lbike/smarthalo/app/controllers/TrackingLifecycleController;Ljava/lang/Long;)V

    return-void
.end method
