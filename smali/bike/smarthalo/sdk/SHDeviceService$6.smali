.class Lbike/smarthalo/sdk/SHDeviceService$6;
.super Landroid/content/BroadcastReceiver;
.source "SHDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/sdk/SHDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/SHDeviceService;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    .line 1077
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$6;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 1084
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    const/16 v0, -0x64

    .line 1085
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 1086
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0xc

    .line 1088
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1089
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$6;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {p1}, Lbike/smarthalo/sdk/SHDeviceService;->access$1200(Lbike/smarthalo/sdk/SHDeviceService;)Z

    .line 1090
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$6;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {p1, v1}, Lbike/smarthalo/sdk/SHDeviceService;->access$1300(Lbike/smarthalo/sdk/SHDeviceService;Z)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    .line 1091
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1092
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$6;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceService;->stopScan()V

    .line 1093
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$6;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {p1, v1}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection(Z)V

    :cond_2
    :goto_0
    return-void
.end method
