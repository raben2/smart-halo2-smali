.class Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "DeviceCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;

.field final synthetic val$pcba:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;->this$2:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;->val$pcba:Ljava/lang/String;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3

    .line 153
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;->this$2:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;

    iget-object p1, p1, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;->this$1:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;

    iget-object p1, p1, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->val$deviceSerialsInterface:Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;

    new-instance v0, Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;->this$2:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;

    iget-object v1, v1, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;->val$product:Ljava/lang/String;

    iget-object v2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;->val$pcba:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/models/DeviceSerials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;->onDeviceSerialsReady(Lbike/smarthalo/sdk/models/DeviceSerials;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;->this$2:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;

    iget-object v0, v0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;->this$1:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;

    iget-object v0, v0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;->val$deviceSerialsInterface:Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;

    new-instance v1, Lbike/smarthalo/sdk/models/DeviceSerials;

    iget-object v2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;->this$2:Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;

    iget-object v2, v2, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1;->val$product:Ljava/lang/String;

    iget-object v3, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4$1$1;->val$pcba:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lbike/smarthalo/sdk/models/DeviceSerials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;->onDeviceSerialsReady(Lbike/smarthalo/sdk/models/DeviceSerials;)V

    return-void
.end method
