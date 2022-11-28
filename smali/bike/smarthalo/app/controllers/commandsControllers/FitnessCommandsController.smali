.class public Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;
.super Ljava/lang/Object;
.source "FitnessCommandsController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;


# instance fields
.field private context:Landroid/content/Context;

.field private deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

.field private navigationStateContract:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->context:Landroid/content/Context;

    .line 38
    iput-object p5, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 39
    iput-object p2, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    .line 40
    iput-object p3, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 41
    iput-object p4, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->navigationStateContract:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

    return-void
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;
    .locals 7

    .line 50
    new-instance v6, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)V

    return-object v6
.end method


# virtual methods
.method public playStartTrackingSound()V
    .locals 4

    .line 73
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    sget-object v1, Lbike/smarthalo/app/models/SHSounds;->info_sound:[B

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->playSound(II[B)V

    return-void
.end method

.method public removeSpeedometer()V
    .locals 2

    .line 64
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_speedometer_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public showGoalIntroAnimation()V
    .locals 6

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v2, 0xff

    const/16 v3, 0xed

    invoke-direct {v1, v3, v2, v2}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    .line 90
    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v4, 0xd2

    const/16 v5, 0x6e

    invoke-direct {v2, v3, v4, v5}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    .line 92
    invoke-virtual {v0, v1, v2, v3, v4}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_fitness_intro(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public showSpeedometerAnimation(IIZ)V
    .locals 2

    .line 55
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v1, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;

    invoke-direct {v1, p1, p2, p3}, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;-><init>(IIZ)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_speedometer_speed(Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public showSpeedometerIntroAnimation()V
    .locals 2

    .line 78
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_speedometer_intro(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method
