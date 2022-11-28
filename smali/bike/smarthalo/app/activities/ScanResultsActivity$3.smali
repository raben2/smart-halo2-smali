.class Lbike/smarthalo/app/activities/ScanResultsActivity$3;
.super Ljava/lang/Object;
.source "ScanResultsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 280
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 283
    invoke-static {}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    check-cast p2, Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$202(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    .line 285
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    .line 286
    iget-object p2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$200(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p2

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$devicePass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setPassword(Ljava/lang/String;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    .line 287
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$200(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p2

    invoke-virtual {p2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object p2

    invoke-static {p1, p2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$802(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/models/BleDevice;)Lbike/smarthalo/sdk/models/BleDevice;

    .line 288
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$900(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    .line 290
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$1000(Lbike/smarthalo/app/activities/ScanResultsActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$1100(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    .line 292
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$400(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 298
    invoke-static {}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;->this$0:Lbike/smarthalo/app/activities/ScanResultsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->access$202(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    return-void
.end method
