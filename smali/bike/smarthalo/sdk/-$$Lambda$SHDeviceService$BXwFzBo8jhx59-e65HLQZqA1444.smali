.class public final synthetic Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$BXwFzBo8jhx59-e65HLQZqA1444;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/SHDeviceService;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$BXwFzBo8jhx59-e65HLQZqA1444;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    return-void
.end method


# virtual methods
.method public final onResult(Lbike/smarthalo/sdk/models/TransceiveTask;I)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$BXwFzBo8jhx59-e65HLQZqA1444;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0, p1, p2}, Lbike/smarthalo/sdk/SHDeviceService;->lambda$onNewTransceiveResult$3(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/models/TransceiveTask;I)V

    return-void
.end method
