.class public final synthetic Lbike/smarthalo/sdk/commands/-$$Lambda$DeviceCommandsController$1$cw8V-qOm74PHCQmMVg7QuWP2tMQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;

.field private final synthetic f$1:[B

.field private final synthetic f$2:Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;[BLbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/commands/-$$Lambda$DeviceCommandsController$1$cw8V-qOm74PHCQmMVg7QuWP2tMQ;->f$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/-$$Lambda$DeviceCommandsController$1$cw8V-qOm74PHCQmMVg7QuWP2tMQ;->f$1:[B

    iput-object p3, p0, Lbike/smarthalo/sdk/commands/-$$Lambda$DeviceCommandsController$1$cw8V-qOm74PHCQmMVg7QuWP2tMQ;->f$2:Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;

    return-void
.end method


# virtual methods
.method public final onDeviceSerialsReady(Lbike/smarthalo/sdk/models/DeviceSerials;)V
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/sdk/commands/-$$Lambda$DeviceCommandsController$1$cw8V-qOm74PHCQmMVg7QuWP2tMQ;->f$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/-$$Lambda$DeviceCommandsController$1$cw8V-qOm74PHCQmMVg7QuWP2tMQ;->f$1:[B

    iget-object v2, p0, Lbike/smarthalo/sdk/commands/-$$Lambda$DeviceCommandsController$1$cw8V-qOm74PHCQmMVg7QuWP2tMQ;->f$2:Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;

    invoke-static {v0, v1, v2, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;->lambda$onData$0(Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;[BLbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;Lbike/smarthalo/sdk/models/DeviceSerials;)V

    return-void
.end method
