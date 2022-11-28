.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$yKtz7SmHz0_KRt0MGG3yuKxvs9Y;
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

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$yKtz7SmHz0_KRt0MGG3yuKxvs9Y;->f$0:Lbike/smarthalo/app/controllers/TrackingLifecycleController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$yKtz7SmHz0_KRt0MGG3yuKxvs9Y;->f$0:Lbike/smarthalo/app/controllers/TrackingLifecycleController;

    check-cast p1, Lbike/smarthalo/app/models/Ping;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->lambda$observeDeviceMovement$0(Lbike/smarthalo/app/controllers/TrackingLifecycleController;Lbike/smarthalo/app/models/Ping;)V

    return-void
.end method
