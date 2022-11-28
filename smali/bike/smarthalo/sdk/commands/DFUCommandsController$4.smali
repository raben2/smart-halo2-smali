.class Lbike/smarthalo/sdk/commands/DFUCommandsController$4;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "DFUCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DFUCommandsController;->sendStmDfuCrc(JILbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/DFUCommandsController;

.field final synthetic val$callback:Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DFUCommandsController;Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$4;->this$0:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$4;->val$callback:Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 3

    const/4 v0, 0x0

    .line 89
    aget-byte v0, p1, v0

    invoke-static {v0}, Lbike/smarthalo/sdk/commands/CommandResponse;->fromInt(I)Lbike/smarthalo/sdk/commands/CommandResponse;

    move-result-object v0

    .line 91
    sget-object v1, Lbike/smarthalo/sdk/commands/CommandResponse;->OK:Lbike/smarthalo/sdk/commands/CommandResponse;

    if-eq v0, v1, :cond_0

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandResponse;->Unnecessary:Lbike/smarthalo/sdk/commands/CommandResponse;

    if-ne v0, v1, :cond_1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 92
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    const/4 v2, 0x2

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->Fail:Lbike/smarthalo/sdk/commands/CommandResponse;

    const/4 v1, -0x1

    .line 96
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$4;->val$callback:Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;->onResult(Lbike/smarthalo/sdk/commands/CommandResponse;I)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController$4;->val$callback:Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->Fail:Lbike/smarthalo/sdk/commands/CommandResponse;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;->onResult(Lbike/smarthalo/sdk/commands/CommandResponse;I)V

    return-void
.end method
