.class Lbike/smarthalo/sdk/SHDeviceService$3;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "SHDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/SHDeviceService;->sendAuthenticationCommand(Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/SHDeviceService;

.field final synthetic val$cb:Lbike/smarthalo/sdk/CmdCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$3;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    iput-object p2, p0, Lbike/smarthalo/sdk/SHDeviceService$3;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 2

    const/4 v0, 0x0

    .line 726
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 727
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$3;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/CmdCallback;->onSuccess()V

    goto :goto_0

    .line 729
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService$3;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    aget-byte p1, p1, v0

    invoke-virtual {v1, p1}, Lbike/smarthalo/sdk/CmdCallback;->onErr(B)V

    :goto_0
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3

    .line 735
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$3;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth_authenticate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lbike/smarthalo/sdk/SHDeviceService;->access$900(Lbike/smarthalo/sdk/SHDeviceService;ILjava/lang/String;)V

    .line 736
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$3;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$1000(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    move-result-object v0

    invoke-static {}, Lbike/smarthalo/sdk/SHDeviceService;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authentication failure, cleaning connection"

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$3;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection()V

    .line 738
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$3;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method
