.class Lbike/smarthalo/app/activities/ScanResultsActivity$7;
.super Ljava/lang/Object;
.source "ScanResultsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/activities/ScanResultsActivity;->startConnection(Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/app/models/SHUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

.field final synthetic val$device:Lbike/smarthalo/sdk/models/BleDevice;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/models/BleDevice;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$7;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    iput-object p2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$7;->val$device:Lbike/smarthalo/sdk/models/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 381
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$7;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$200(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 382
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$7;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$200(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p1

    iget-object p2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$7;->val$device:Lbike/smarthalo/sdk/models/BleDevice;

    iget-object p2, p2, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$7;->val$device:Lbike/smarthalo/sdk/models/BleDevice;

    iget-object v0, v0, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setMyDevice(Ljava/lang/String;Ljava/lang/String;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->connect()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$7;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$1302(Lbike/smarthalo/app/activities/ScanResultsActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_0
    const p1, 0x7f11009c

    const/4 p2, 0x1

    .line 386
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$7;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1, p2, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
