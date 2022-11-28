.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$EhxhwnXkjGO4iTxx13mMcUlZ6ME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DeviceStateController;

.field private final synthetic f$1:Lbike/smarthalo/sdk/models/DeviceInformation;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$EhxhwnXkjGO4iTxx13mMcUlZ6ME;->f$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$EhxhwnXkjGO4iTxx13mMcUlZ6ME;->f$1:Lbike/smarthalo/sdk/models/DeviceInformation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$EhxhwnXkjGO4iTxx13mMcUlZ6ME;->f$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$EhxhwnXkjGO4iTxx13mMcUlZ6ME;->f$1:Lbike/smarthalo/sdk/models/DeviceInformation;

    check-cast p1, Lbike/smarthalo/app/models/DeviceState;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/controllers/DeviceStateController;->lambda$sendDeviceConnectionActivity$9(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/DeviceInformation;Lbike/smarthalo/app/models/DeviceState;)V

    return-void
.end method
