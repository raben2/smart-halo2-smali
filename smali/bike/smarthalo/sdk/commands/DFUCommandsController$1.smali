.class Lbike/smarthalo/sdk/commands/DFUCommandsController$1;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "DFUCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DFUCommandsController;->installStmDfu(Lbike/smarthalo/sdk/CmdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/DFUCommandsController;

.field final synthetic val$callback:Lbike/smarthalo/sdk/CmdCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DFUCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$1;->this$0:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$1;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 1

    .line 27
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$1;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$1;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/CmdCallback;->onFail()V

    return-void
.end method
