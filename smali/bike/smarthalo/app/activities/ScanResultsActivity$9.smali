.class Lbike/smarthalo/app/activities/ScanResultsActivity$9;
.super Ljava/lang/Object;
.source "ScanResultsActivity.java"

# interfaces
.implements Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/activities/ScanResultsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 524
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$9;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 527
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$9;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$200(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$9;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$200(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->stopAndRestartService()V

    :cond_0
    return-void
.end method
