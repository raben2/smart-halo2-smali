.class Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "DeviceCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DeviceCommandsController;->requestBootloader(Lbike/smarthalo/sdk/CmdCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

.field final synthetic val$cb:Lbike/smarthalo/sdk/CmdCallback;

.field final synthetic val$shouldRestartScan:Z


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;ZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    iput-boolean p2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;->val$shouldRestartScan:Z

    iput-object p3, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 2

    .line 101
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    iget-object v0, v0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->deviceContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceCommandsContract;

    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;->val$shouldRestartScan:Z

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceCommandsContract;->hasEnteredBootloader(Z)V

    .line 102
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    :cond_0
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
