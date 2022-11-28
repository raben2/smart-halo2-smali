.class Lbike/smarthalo/app/activities/ScanResultsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ScanResultsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/activities/ScanResultsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$1;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bike.smarthalo.sdk.BROADCAST_ERROR"

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$1;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$000(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    goto :goto_0

    :cond_1
    const-string v1, "bike.smarthalo.sdk.BROADCAST_CONNECTION_STATE"

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$1;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1, p2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$100(Lbike/smarthalo/app/activities/ScanResultsActivity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string p2, "bike.smarthalo.sdk.BROADCAST_DEVICE_LIST_UPDATED"

    .line 248
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 249
    iget-object p2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$1;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$200(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p2

    if-nez p2, :cond_4

    .line 250
    iget-object p2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$1;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$1;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$300(Lbike/smarthalo/app/activities/ScanResultsActivity;)Landroid/content/ServiceConnection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_3
    const-string p1, "bike.smarthalo.sdk.BROADCAST_CONNECTED_STOPPING_SCAN"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 253
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$1;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestStartScanning(Landroid/content/Context;)V

    :cond_4
    :goto_0
    return-void
.end method
