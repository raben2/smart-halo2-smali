.class Lbike/smarthalo/sdk/SHDeviceService$5;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "SHDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/SHDeviceService;->resetPasswordAndDisconnect(Lbike/smarthalo/sdk/CmdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/SHDeviceService;

.field final synthetic val$callback:Lbike/smarthalo/sdk/CmdCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 1046
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$5;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    iput-object p2, p0, Lbike/smarthalo/sdk/SHDeviceService$5;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(B)V
    .locals 3

    .line 1058
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$5;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPasswordAndDisconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lbike/smarthalo/sdk/SHDeviceService;->access$900(Lbike/smarthalo/sdk/SHDeviceService;ILjava/lang/String;)V

    .line 1059
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$5;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz p1, :cond_0

    .line 1060
    invoke-virtual {p1}, Lbike/smarthalo/sdk/CmdCallback;->onFail()V

    :cond_0
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3

    .line 1066
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$5;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetPasswordAndDisconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lbike/smarthalo/sdk/SHDeviceService;->access$900(Lbike/smarthalo/sdk/SHDeviceService;ILjava/lang/String;)V

    .line 1067
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$5;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz p1, :cond_0

    .line 1068
    invoke-virtual {p1}, Lbike/smarthalo/sdk/CmdCallback;->onFail()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1049
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$5;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$1100(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->pollQueue()V

    .line 1050
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$5;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceService;->resetLocalStorageAndDisconnect()V

    .line 1051
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$5;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {v0}, Lbike/smarthalo/sdk/CmdCallback;->onSuccess()V

    :cond_0
    return-void
.end method
