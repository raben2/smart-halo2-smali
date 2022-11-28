.class Lbike/smarthalo/sdk/SHDeviceService$1$1;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "SHDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/SHDeviceService$1;->onData([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbike/smarthalo/sdk/SHDeviceService$1;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/SHDeviceService$1;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$1$1;->this$1:Lbike/smarthalo/sdk/SHDeviceService$1;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 3

    .line 649
    invoke-static {}, Lbike/smarthalo/sdk/SHDeviceService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCentralKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lbike/smarthalo/sdk/SHSdkHelpers;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$1$1;->this$1:Lbike/smarthalo/sdk/SHDeviceService$1;

    iget-object p1, p1, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$1$1;->this$1:Lbike/smarthalo/sdk/SHDeviceService$1;

    iget-object v0, v0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$100(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->password:Ljava/lang/String;

    invoke-static {p1, v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$500(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;)V

    return-void
.end method
