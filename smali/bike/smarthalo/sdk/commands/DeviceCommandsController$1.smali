.class Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "DeviceCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DeviceCommandsController;->updateDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

.field final synthetic val$callback:Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;->val$callback:Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onData$0(Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;[BLbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;Lbike/smarthalo/sdk/models/DeviceSerials;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    invoke-static {v0, p1, p3}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->access$000(Lbike/smarthalo/sdk/commands/DeviceCommandsController;[BLbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object p1

    .line 60
    invoke-interface {p2, p1}, Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;->onDeviceInformationReady(Lbike/smarthalo/sdk/models/DeviceInformation;)V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 4

    .line 58
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    invoke-static {p1}, Lbike/smarthalo/sdk/models/DeviceModel;->geDeviceModel([B)Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;->val$callback:Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;

    new-instance v3, Lbike/smarthalo/sdk/commands/-$$Lambda$DeviceCommandsController$1$cw8V-qOm74PHCQmMVg7QuWP2tMQ;

    invoke-direct {v3, p0, p1, v2}, Lbike/smarthalo/sdk/commands/-$$Lambda$DeviceCommandsController$1$cw8V-qOm74PHCQmMVg7QuWP2tMQ;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;[BLbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;)V

    invoke-virtual {v0, v1, v3}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceSerials(Lbike/smarthalo/sdk/models/DeviceModel;Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;)V

    return-void
.end method
