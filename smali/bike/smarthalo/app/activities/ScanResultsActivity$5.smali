.class Lbike/smarthalo/app/activities/ScanResultsActivity$5;
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

    .line 357
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$5;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    iput-object p2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$5;->val$device:Lbike/smarthalo/sdk/models/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 360
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$5;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    iget-object p2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$5;->val$device:Lbike/smarthalo/sdk/models/BleDevice;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$1200(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/models/BleDevice;Z)V

    return-void
.end method
