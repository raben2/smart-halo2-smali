.class Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$1;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "ExperimentalCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->ui_nav_experimental_destination_angle(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

.field final synthetic val$cb:Lbike/smarthalo/sdk/CmdCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$1;->this$0:Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$1;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lbike/smarthalo/sdk/models/TransceiveCallback;->onData([B)V

    .line 40
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$1;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    :cond_0
    return-void
.end method
