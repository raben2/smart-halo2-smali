.class Lbike/smarthalo/app/activities/ScanResultsActivity$8;
.super Ljava/lang/Object;
.source "ScanResultsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/activities/ScanResultsActivity;->onDeviceDisconnected()V
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

    .line 450
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$8;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 453
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$8;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$200(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$8;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {v1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$800(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object v1

    iget-object v1, v1, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    iget-object v2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$8;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {v2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$800(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object v2

    iget-object v2, v2, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setMyDevice(Ljava/lang/String;Ljava/lang/String;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->connect()Z

    .line 454
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$8;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$1402(Lbike/smarthalo/app/activities/ScanResultsActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
