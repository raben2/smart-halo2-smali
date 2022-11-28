.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$9ZWnmuNATTWKLzBOu2b2fWnRB8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/TouchInputController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/TouchInputController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$9ZWnmuNATTWKLzBOu2b2fWnRB8Y;->f$0:Lbike/smarthalo/app/controllers/TouchInputController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TouchInputController$9ZWnmuNATTWKLzBOu2b2fWnRB8Y;->f$0:Lbike/smarthalo/app/controllers/TouchInputController;

    check-cast p1, Lbike/smarthalo/app/models/DeviceState;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/TouchInputController;->lambda$onLightCycleTriggered$2(Lbike/smarthalo/app/controllers/TouchInputController;Lbike/smarthalo/app/models/DeviceState;)V

    return-void
.end method
