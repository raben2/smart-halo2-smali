.class Lbike/smarthalo/sdk/SHDeviceService$4;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "SHDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/SHDeviceService;->auth_setPassword(Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
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

    .line 817
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$4;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    iput-object p2, p0, Lbike/smarthalo/sdk/SHDeviceService$4;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 2

    .line 820
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$4;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/CmdCallback;->onDone()V

    .line 821
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$4;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    const/4 v0, 0x0

    .line 822
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 823
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$4;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/CmdCallback;->onSuccess()V

    goto :goto_0

    .line 825
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService$4;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    aget-byte p1, p1, v0

    invoke-virtual {v1, p1}, Lbike/smarthalo/sdk/CmdCallback;->onErr(B)V

    :goto_0
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 831
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$4;->val$cb:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method
