.class Lbike/smarthalo/sdk/SHDeviceService$2$1;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "SHDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/SHDeviceService$2;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbike/smarthalo/sdk/SHDeviceService$2;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/SHDeviceService$2;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$2$1;->this$1:Lbike/smarthalo/sdk/SHDeviceService$2;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSuccess$0(Lbike/smarthalo/sdk/SHDeviceService$2$1;Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 1

    .line 673
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$2$1;->this$1:Lbike/smarthalo/sdk/SHDeviceService$2;

    iget-object p1, p1, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceService;->getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_logo(Lbike/smarthalo/sdk/CmdCallback;)V

    .line 674
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$2$1;->this$1:Lbike/smarthalo/sdk/SHDeviceService$2;

    iget-object p1, p1, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    invoke-virtual {p1, v0}, Lbike/smarthalo/sdk/SHDeviceService;->onConnectionStateChanged(Lbike/smarthalo/sdk/models/DeviceConnectionState;)V

    return-void
.end method


# virtual methods
.method public onErr(B)V
    .locals 0

    .line 682
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$2$1;->this$1:Lbike/smarthalo/sdk/SHDeviceService$2;

    iget-object p1, p1, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {p1}, Lbike/smarthalo/sdk/SHDeviceService;->access$700(Lbike/smarthalo/sdk/SHDeviceService;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 672
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$2$1;->this$1:Lbike/smarthalo/sdk/SHDeviceService$2;

    iget-object v0, v0, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$600(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$1$U6m4KLFOVLKB5lK-9Ps376hoeSI;

    invoke-direct {v1, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$1$U6m4KLFOVLKB5lK-9Ps376hoeSI;-><init>(Lbike/smarthalo/sdk/SHDeviceService$2$1;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->updateDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;)V

    return-void
.end method
