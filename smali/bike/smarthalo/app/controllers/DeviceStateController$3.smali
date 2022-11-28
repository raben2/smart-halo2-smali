.class Lbike/smarthalo/app/controllers/DeviceStateController$3;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "DeviceStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/DeviceStateController;->forgetDevice(Lbike/smarthalo/sdk/CmdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

.field final synthetic val$callback:Lbike/smarthalo/sdk/CmdCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .line 414
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/CmdCallback;->onFail()V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 395
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {v0}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$500(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {v1}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$600(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object v1

    const-string v2, "Device_Forgotten"

    invoke-interface {v1, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->getForgetDeviceEvent(ILjava/lang/String;)Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;

    move-result-object v1

    invoke-virtual {v1}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->asPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {v2}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$700(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/services/JobServiceCreator;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(ILandroid/os/PersistableBundle;)V

    const-string v1, ""

    .line 401
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$deviceId(Ljava/lang/String;)V

    .line 402
    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->Unknown:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->setDeviceModel(Lbike/smarthalo/sdk/models/DeviceModel;)V

    .line 403
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {v1}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$600(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object v1

    const-string v2, "deviceModel"

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v3

    invoke-static {v3}, Lbike/smarthalo/app/analytics/AnalyticsUserProperties;->getDeviceModelUserProperty(Lbike/smarthalo/sdk/models/DeviceModel;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendUserPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {v1}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$500(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    move-result-object v1

    invoke-interface {v1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->saveUser(Lbike/smarthalo/app/models/SHUser;)V

    .line 405
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->this$0:Lbike/smarthalo/app/controllers/DeviceStateController;

    invoke-static {v0}, Lbike/smarthalo/app/controllers/DeviceStateController;->access$700(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/services/JobServiceCreator;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(I)V

    .line 406
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/CmdCallback;->onSuccess()V

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController$3;->val$callback:Lbike/smarthalo/sdk/CmdCallback;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/CmdCallback;->onFail()V

    return-void
.end method
