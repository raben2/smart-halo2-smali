.class Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "DeviceCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceSerials(Lbike/smarthalo/sdk/models/DeviceModel;Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

.field final synthetic val$deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

.field final synthetic val$deviceSerialsInterface:Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/models/DeviceModel;Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->val$deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

    iput-object p3, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->val$deviceSerialsInterface:Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->val$deviceSerialsInterface:Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;->onDeviceSerialsReady(Lbike/smarthalo/sdk/models/DeviceSerials;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->val$deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->val$deviceSerialsInterface:Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;

    new-instance v1, Lbike/smarthalo/sdk/models/DeviceSerials;

    invoke-direct {v1, p1}, Lbike/smarthalo/sdk/models/DeviceSerials;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;->onDeviceSerialsReady(Lbike/smarthalo/sdk/models/DeviceSerials;)V

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    const/4 v1, 0x1

    new-instance v2, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceSerial(ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method
