.class Lbike/smarthalo/app/activities/ScanResultsActivity$2;
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

    .line 258
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$2;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 265
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    const/16 v1, -0x64

    .line 266
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    .line 267
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v1, 0xc

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-static {p1}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestStartScanning(Landroid/content/Context;)V

    .line 271
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$2;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$400(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 273
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$2;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$500(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    .line 275
    :cond_2
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$2;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$600(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    :cond_3
    return-void
.end method
