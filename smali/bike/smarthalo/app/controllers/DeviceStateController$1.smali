.class Lbike/smarthalo/app/controllers/DeviceStateController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/controllers/DeviceStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/DeviceStateController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 223
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    new-instance v0, Lbike/smarthalo/app/models/BootloaderInfo;

    const-string v1, "bike.smarthalo.sdk.EXTRA_BOOTLOADER_ADDRESS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bike.smarthalo.sdk.EXTRA_DEVICE_NAME"

    .line 225
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lbike/smarthalo/app/models/BootloaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$002(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/app/models/BootloaderInfo;)Lbike/smarthalo/app/models/BootloaderInfo;

    .line 227
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$100(Lbike/smarthalo/app/controllers/DeviceStateController;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iget-object p2, p0, Lbike/smarthalo/app/controllers/DeviceStateController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {p2}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$000(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/models/BootloaderInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
