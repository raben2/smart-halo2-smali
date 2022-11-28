.class Lbike/smarthalo/sdk/commands/DFUCommandsController$3;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "DFUCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DFUCommandsController;->sendStmDfuData(II[BLbike/smarthalo/sdk/commands/SuccessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/DFUCommandsController;

.field final synthetic val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DFUCommandsController;Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$3;->this$0:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$3;->val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 2

    .line 63
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$3;->val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;

    const/4 v1, 0x0

    aget-byte p1, p1, v1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/SuccessCallback;->onResult(Z)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$3;->val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/commands/SuccessCallback;->onResult(Z)V

    return-void
.end method
