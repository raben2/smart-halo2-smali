.class Lbike/smarthalo/sdk/commands/DeviceCommandsController$3;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "DeviceCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceState(Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

.field final synthetic val$deviceStateInterface:Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$3;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$3;->val$deviceStateInterface:Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 1

    .line 120
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$3;->val$deviceStateInterface:Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;

    invoke-static {p1}, Lbike/smarthalo/sdk/models/SHDeviceState;->getSHDeviceState([B)Lbike/smarthalo/sdk/models/SHDeviceState;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;->onDeviceStateReady(Lbike/smarthalo/sdk/models/SHDeviceState;)V

    return-void
.end method
