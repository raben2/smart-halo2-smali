.class public Lbike/smarthalo/app/controllers/DeviceServiceController;
.super Ljava/lang/Object;
.source "DeviceServiceController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;


# instance fields
.field private context:Landroid/content/Context;

.field private deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

.field private deviceServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private deviceServiceSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/sdk/SHDeviceServiceBinder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->context:Landroid/content/Context;

    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceServiceSource:Lio/reactivex/processors/FlowableProcessor;

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceServiceSource:Lio/reactivex/processors/FlowableProcessor;

    new-instance v1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {v1}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lbike/smarthalo/app/controllers/DeviceServiceController$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/DeviceServiceController$1;-><init>(Lbike/smarthalo/app/controllers/DeviceServiceController;)V

    invoke-static {v0, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getDeviceServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/controllers/DeviceServiceController;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 0

    .line 24
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/controllers/DeviceServiceController;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 0

    .line 24
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/controllers/DeviceServiceController;)Lio/reactivex/processors/FlowableProcessor;
    .locals 0

    .line 24
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceServiceSource:Lio/reactivex/processors/FlowableProcessor;

    return-object p0
.end method

.method public static buildController(Landroid/content/Context;)Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
    .locals 1

    .line 32
    new-instance v0, Lbike/smarthalo/app/controllers/DeviceServiceController;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/DeviceServiceController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    return-object v0
.end method

.method public observeDeviceService()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/sdk/SHDeviceServiceBinder;",
            ">;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceServiceSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method

.method public onDispose()V
    .locals 1

    .line 82
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method

.method public sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceServiceController;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V

    :cond_0
    return-void
.end method
