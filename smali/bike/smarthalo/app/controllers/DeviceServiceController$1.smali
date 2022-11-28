.class Lbike/smarthalo/app/controllers/DeviceServiceController$1;
.super Ljava/lang/Object;
.source "DeviceServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/DeviceServiceController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/DeviceServiceController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/DeviceServiceController;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceServiceController;

    check-cast p2, Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/controllers/DeviceServiceController;->access$002(Lbike/smarthalo/app/controllers/DeviceServiceController;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    .line 46
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceServiceController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/DeviceServiceController;->access$100(Lbike/smarthalo/app/controllers/DeviceServiceController;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/models/GenericResponse;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceServiceController;

    invoke-static {v0}, Lbike/smarthalo/app/controllers/DeviceServiceController;->access$000(Lbike/smarthalo/app/controllers/DeviceServiceController;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    invoke-direct {p2, v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceServiceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/DeviceServiceController;->access$002(Lbike/smarthalo/app/controllers/DeviceServiceController;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    .line 52
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceServiceController$1;->this$0:Lbike/smarthalo/app/controllers/DeviceServiceController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/DeviceServiceController;->access$100(Lbike/smarthalo/app/controllers/DeviceServiceController;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
