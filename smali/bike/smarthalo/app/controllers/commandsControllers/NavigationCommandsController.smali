.class public Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;
.super Ljava/lang/Object;
.source "NavigationCommandsController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;


# static fields
.field private static final DESTINATION_ANIMATION_DURATION:J = 0x2710L

.field private static final NAVIGATION_START_ANIMATION_DURATION:J = 0x1388L


# instance fields
.field private context:Landroid/content/Context;

.field private deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private settingsStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

.field private userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    .line 54
    iput-object p3, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 55
    iput-object p4, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 56
    iput-object p5, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->settingsStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-void
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;
    .locals 7

    .line 65
    new-instance v6, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    return-object v6
.end method


# virtual methods
.method public navAngleQuick(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILjava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    .line 120
    iget-object v3, v0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v3}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 123
    iget v6, v1, Lbike/smarthalo/navigation/models/NavAngleTurns;->relativeTurnAngle:I

    iget v7, v1, Lbike/smarthalo/navigation/models/NavAngleTurns;->turnProgress:I

    iget v9, v2, Lbike/smarthalo/navigation/models/NavAngleTurns;->relativeTurnAngle:I

    iget v10, v2, Lbike/smarthalo/navigation/models/NavAngleTurns;->turnProgress:I

    iget-object v1, v0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 130
    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v11, p3

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeet(I)I

    move-result v1

    move v11, v1

    :goto_0
    iget-object v1, v0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 131
    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v12, p6

    goto :goto_1

    :cond_1
    invoke-static/range {p6 .. p6}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeet(I)I

    move-result v1

    move v12, v1

    :goto_1
    iget-object v1, v0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 133
    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v14

    const/16 v16, 0x0

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    move-object/from16 v13, p7

    move/from16 v15, p8

    .line 123
    invoke-virtual/range {v4 .. v16}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_angle_quick(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/models/SHColour;IIIILjava/lang/String;ZZLbike/smarthalo/sdk/CmdCallback;)V

    :cond_2
    return-void
.end method

.method public nav_compass(II)V
    .locals 0

    .line 193
    invoke-static {p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColourFromProgressForSmartHalo(I)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->nav_live_direction(Lbike/smarthalo/sdk/models/SHColour;I)V

    return-void
.end method

.method public nav_compass_off()V
    .locals 2

    .line 251
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 254
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_compass_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public nav_live_direction(Lbike/smarthalo/sdk/models/SHColour;I)V
    .locals 2

    .line 199
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, p1, p2, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_compass(Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IILjava/lang/String;)V
    .locals 8

    .line 152
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 158
    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v4

    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 159
    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeet(I)I

    move-result p3

    :goto_0
    move v5, p3

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move-object v6, p4

    .line 155
    invoke-virtual/range {v1 .. v7}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_1
    return-void
.end method

.method public nav_pointer_off()V
    .locals 2

    .line 167
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_pointer_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public nav_pointer_standby(IILjava/lang/String;)V
    .locals 7

    .line 176
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    invoke-static {p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColourFromProgressForSmartHalo(I)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object v2

    .line 181
    iget-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 183
    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v3

    iget-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 184
    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeet(I)I

    move-result p2

    :goto_0
    move v4, p2

    new-instance v6, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$2;

    invoke-direct {v6, p0}, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$2;-><init>(Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;)V

    move-object v5, p3

    .line 181
    invoke-virtual/range {v1 .. v6}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_pointer_standby(Lbike/smarthalo/sdk/models/SHColour;ZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_1
    return-void
.end method

.method public nav_roundabout(Ljava/util/ArrayList;IZIILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 208
    iget-object p2, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {p2}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 211
    new-instance v3, Lbike/smarthalo/sdk/models/SHColour;

    const/16 p2, 0x43

    const/16 v1, 0xff

    invoke-direct {v3, p2, v1, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    new-array v5, p2, [I

    .line 216
    sget-object p2, Lbike/smarthalo/navigation/models/StepType;->ROUNDABOUT_CLOCKWISE:Lbike/smarthalo/navigation/models/StepType;

    invoke-virtual {p2}, Lbike/smarthalo/navigation/models/StepType;->getType()I

    move-result p2

    const/4 v4, 0x2

    const/4 v6, 0x0

    if-ne p4, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget-object p2, Lbike/smarthalo/navigation/models/StepType;->ROUNDABOUT_COUNTERCLOCKWISE:Lbike/smarthalo/navigation/models/StepType;

    .line 217
    invoke-virtual {p2}, Lbike/smarthalo/navigation/models/StepType;->getType()I

    move-result p2

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    const/4 p4, 0x1

    .line 220
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    if-ge p4, v7, :cond_2

    .line 221
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lbike/smarthalo/app/helpers/DirectionHelper;->getClockwiseAngleGap(II)I

    move-result v7

    aput v7, v5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-le p4, v2, :cond_3

    .line 225
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p4, p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->getClockwiseAngleGap(II)I

    move-result p1

    aput p1, v5, v6

    :cond_3
    if-eqz p3, :cond_4

    move v2, p2

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    .line 228
    :goto_2
    new-instance v4, Lbike/smarthalo/sdk/models/SHColour;

    const/16 p1, 0xfd

    const/16 p2, 0xed

    invoke-direct {v4, p1, p2, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    iget-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 234
    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p5}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeet(I)I

    move-result p5

    :goto_3
    move v6, p5

    iget-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 235
    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v7

    move v1, p3

    move-object v8, p6

    .line 228
    invoke-virtual/range {v0 .. v8}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_roundabout(IILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;[IIZLjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onDestinationReached(Ljava/lang/String;)V
    .locals 9

    .line 83
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v1, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->settingsStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationSoundOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navigationVolume()I

    move-result v1

    const/4 v3, 0x0

    sget-object v4, Lbike/smarthalo/app/models/SHSounds;->destination_sound:[B

    invoke-interface {v2, v1, v3, v4}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->playSound(II[B)V

    .line 95
    :cond_1
    invoke-static {}, Lbike/smarthalo/app/services/DeviceConstants;->getNavTurnColor()Lbike/smarthalo/sdk/models/SHColour;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v5, 0x0

    iget-object v1, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 100
    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v7

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p1

    .line 94
    invoke-virtual/range {v1 .. v8}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;ZLbike/smarthalo/sdk/CmdCallback;)V

    .line 103
    :cond_2
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;

    invoke-direct {v1, p0, v0}, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController$1;-><init>(Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onDispose()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public playNavAnimation(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;)V
    .locals 9

    .line 141
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v0

    if-eqz v0, :cond_0

    move v5, p4

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeet(I)I

    move-result v0

    move v5, v0

    .line 145
    :goto_0
    const-class v0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Distance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p4, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->userStorageController:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {p4}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v7

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;ZLbike/smarthalo/sdk/CmdCallback;)V

    :cond_1
    return-void
.end method

.method public reroute()V
    .locals 2

    .line 280
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_reroute(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public showPointerIntro(Lbike/smarthalo/sdk/models/SHColour;II)V
    .locals 2

    .line 289
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 292
    invoke-virtual {v0, p1, p2, p3, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showPointerIntro(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public showStandbyPointerIntro(Lbike/smarthalo/sdk/models/SHColour;I)V
    .locals 2

    .line 298
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, p1, p2, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showPointerIntroStandby(Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public toggleNavBreathing(Z)V
    .locals 9

    .line 260
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 264
    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/16 p1, 0x43

    const/16 v0, 0xff

    invoke-direct {v2, p1, v0, v0}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    new-instance v3, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v4, 0x55

    invoke-direct {v3, p1, v0, v4}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v4, 0x5dc

    const/16 v5, 0x32

    const/16 v6, 0x4e2

    const/16 v7, 0x32

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_hb(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIILbike/smarthalo/sdk/CmdCallback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 273
    invoke-virtual {v1, p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_hb_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public turnOffNavAnimations()V
    .locals 2

    .line 242
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method
