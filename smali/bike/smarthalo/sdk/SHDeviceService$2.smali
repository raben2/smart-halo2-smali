.class Lbike/smarthalo/sdk/SHDeviceService$2;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "SHDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/SHDeviceService;->authenticateWithDevice(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/SHDeviceService;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    iput-object p2, p0, Lbike/smarthalo/sdk/SHDeviceService$2;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSuccess$0(Lbike/smarthalo/sdk/SHDeviceService$2;Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 1

    .line 687
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    invoke-virtual {p1, v0}, Lbike/smarthalo/sdk/SHDeviceService;->onConnectionStateChanged(Lbike/smarthalo/sdk/models/DeviceConnectionState;)V

    return-void
.end method


# virtual methods
.method public onErr(B)V
    .locals 1

    const-string p1, ""

    .line 695
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$2;->val$password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 696
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    const-string v0, ""

    invoke-static {p1, v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$500(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {p1}, Lbike/smarthalo/sdk/SHDeviceService;->access$700(Lbike/smarthalo/sdk/SHDeviceService;)V

    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    const-string v0, ""

    .line 668
    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService$2;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$100(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object v1

    iget-object v1, v1, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->password:Ljava/lang/String;

    new-instance v2, Lbike/smarthalo/sdk/SHDeviceService$2$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/sdk/SHDeviceService$2$1;-><init>(Lbike/smarthalo/sdk/SHDeviceService$2;)V

    invoke-static {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceService;->access$800(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$2;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$600(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$ofyn-XLj5jbzPZI65vTFVyheEks;

    invoke-direct {v1, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$2$ofyn-XLj5jbzPZI65vTFVyheEks;-><init>(Lbike/smarthalo/sdk/SHDeviceService$2;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->updateDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;)V

    :goto_0
    return-void
.end method
