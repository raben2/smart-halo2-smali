.class Lbike/smarthalo/sdk/commands/DeviceCommandsController$5;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "DeviceCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceSerial(ILbike/smarthalo/sdk/CmdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

.field final synthetic val$cb:Lbike/smarthalo/sdk/CmdCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$5;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$5;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 3

    const/4 v0, 0x0

    .line 181
    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 183
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 184
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$5;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {p1, v0}, Lbike/smarthalo/sdk/CmdCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 187
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$5;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    const-string v0, "Error"

    invoke-virtual {p1, v0}, Lbike/smarthalo/sdk/CmdCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$5;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    const-string v0, "Error"

    invoke-virtual {p1, v0}, Lbike/smarthalo/sdk/CmdCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
