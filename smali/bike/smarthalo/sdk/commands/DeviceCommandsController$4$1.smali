.class Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "DeviceCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;

.field final synthetic val$product:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;->this$1:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;->val$product:Ljava/lang/String;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;->this$1:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;

    iget-object p1, p1, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->val$deviceSerialsInterface:Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;->onDeviceSerialsReady(Lbike/smarthalo/sdk/models/DeviceSerials;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;->this$1:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;

    iget-object v0, v0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    new-instance v1, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceSerial(ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method
