.class Lbike/smarthalo/sdk/commands/DeviceCommandsController$10;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "DeviceCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/DeviceCommandsController;->updateDeviceDate(Lbike/smarthalo/sdk/commands/SuccessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

.field final synthetic val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$10;->this$0:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    iput-object p2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$10;->val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 2

    .line 262
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$10;->val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 263
    aget-byte p1, p1, v1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/SuccessCallback;->onResult(Z)V

    :cond_1
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$10;->val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 270
    invoke-interface {p1, v0}, Lbike/smarthalo/sdk/commands/SuccessCallback;->onResult(Z)V

    :cond_0
    return-void
.end method
