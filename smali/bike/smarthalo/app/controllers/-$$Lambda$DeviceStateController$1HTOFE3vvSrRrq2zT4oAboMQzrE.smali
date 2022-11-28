.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$1HTOFE3vvSrRrq2zT4oAboMQzrE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DeviceStateController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$1HTOFE3vvSrRrq2zT4oAboMQzrE;->f$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$1HTOFE3vvSrRrq2zT4oAboMQzrE;->f$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/DeviceStateController;->lambda$observeFirstMovementOnConnection$6(Lbike/smarthalo/app/controllers/DeviceStateController;Ljava/lang/Boolean;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method
