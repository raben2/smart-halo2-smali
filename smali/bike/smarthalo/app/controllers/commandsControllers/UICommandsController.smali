.class public Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;
.super Ljava/lang/Object;
.source "UICommandsController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;


# instance fields
.field private context:Landroid/content/Context;

.field private deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    return-void
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;)Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;
    .locals 1

    .line 33
    new-instance v0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;)V

    return-object v0
.end method


# virtual methods
.method public centralLedOff()V
    .locals 2

    .line 55
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_central_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public playErrorAnimation()V
    .locals 3

    .line 87
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Error:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->context:Landroid/content/Context;

    const v2, 0x7f11017e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getErrorPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    return-void
.end method

.method public playSound(II[B)V
    .locals 2

    .line 73
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController$1;-><init>(Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->play_sound(II[BLbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public removeProgress()V
    .locals 2

    .line 92
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_progress_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public sendLogoAnimation()V
    .locals 2

    .line 101
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController$2;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController$2;-><init>(Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_logo(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->sendNotificationCommand(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    :cond_0
    return-void
.end method

.method public sendProgressAnimation(Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, p1, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_progress(Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public stopSound()V
    .locals 2

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->stop_sound(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method
