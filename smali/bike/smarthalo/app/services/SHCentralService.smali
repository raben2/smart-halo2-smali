.class public Lbike/smarthalo/app/services/SHCentralService;
.super Landroid/app/Service;
.source "SHCentralService.java"


# static fields
.field public static final CENTRAL_SERVICE_ALIVE:Ljava/lang/String; = "CENTRAL_SERVICE_ALIVE"

.field public static final UPDATE_FIRMWARE_NOTIFICATION_CODE:I = 0x3a

.field public static final UPDATE_FIRMWARE_REQUEST_CODE:I = 0x39


# instance fields
.field private TAG:Ljava/lang/String;

.field private activityCloudManager:Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;

.field private alarmController:Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private appNotificationController:Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;

.field appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

.field private assistantController:Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

.field authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private bikeLocationController:Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;

.field private carouselController:Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;

.field private dayLightController:Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;

.field private deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

.field private deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

.field private easterEggController:Lbike/smarthalo/app/controllers/controllerContracts/EasterEggControllerContract;

.field firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

.field fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

.field private instabugController:Lbike/smarthalo/app/controllers/analyticsController/InstabugControllerContract;

.field jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field keyManager:Lbike/smarthalo/app/managers/KeyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

.field private locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

.field private final mBinder:Landroid/os/IBinder;

.field private masterDfuController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

.field private navigationCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

.field private navigationIntroController:Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroContract;

.field powerSavingManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field retrofit:Lretrofit2/Retrofit;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private systemStatusContract:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusContract;

.field private touchInputController:Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;

.field private trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

.field private trackingLifecycleController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

.field userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 87
    const-class v0, Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->TAG:Ljava/lang/String;

    .line 124
    new-instance v0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;-><init>(Lbike/smarthalo/app/services/SHCentralService;)V

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private buildLocationManager(Landroid/content/Context;)V
    .locals 0

    .line 386
    :try_start_0
    invoke-static {p1}, Lbike/smarthalo/app/managers/SHLocationManager;->buildLocationManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;
    :try_end_0
    .catch Lbike/smarthalo/app/managers/MissingLocationPermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    :goto_0
    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2

    .line 368
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/services/SHCentralService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlarmController()Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;
    .locals 1

    .line 445
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->alarmController:Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

    return-object v0
.end method

.method public getAppNotificationController()Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;
    .locals 1

    .line 449
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->appNotificationController:Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;

    return-object v0
.end method

.method public getAssistantCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;
    .locals 1

    .line 421
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    return-object v0
.end method

.method public getBikeLocationController()Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;
    .locals 1

    .line 417
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->bikeLocationController:Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;

    return-object v0
.end method

.method public getCarouselController()Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;
    .locals 1

    .line 437
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->carouselController:Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;

    return-object v0
.end method

.method public getDayLightController()Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;
    .locals 1

    .line 401
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->dayLightController:Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;

    return-object v0
.end method

.method public getDeviceServiceController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
    .locals 1

    .line 409
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    return-object v0
.end method

.method public getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
    .locals 1

    .line 405
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    return-object v0
.end method

.method public getFitnessCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;
    .locals 1

    .line 425
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    return-object v0
.end method

.method public getGoalController()Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;
    .locals 1

    .line 456
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    return-object v0
.end method

.method public getLightsCommandController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;
    .locals 1

    .line 429
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    return-object v0
.end method

.method public getMasterDfuController()Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;
    .locals 1

    .line 413
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->masterDfuController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    return-object v0
.end method

.method public getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;
    .locals 1

    .line 433
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->navigationCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    return-object v0
.end method

.method public getNavigationIntroController()Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroContract;
    .locals 1

    .line 458
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->navigationIntroController:Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroContract;

    return-object v0
.end method

.method public getTouchInputController()Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;
    .locals 1

    .line 453
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->touchInputController:Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;

    return-object v0
.end method

.method public getTrackingController()Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;
    .locals 1

    .line 397
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    return-object v0
.end method

.method public getTrackingLifecycleController()Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;
    .locals 1

    .line 393
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->trackingLifecycleController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    return-object v0
.end method

.method public getUiCommandsController()Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;
    .locals 1

    .line 441
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 381
    iget-object p1, p0, Lbike/smarthalo/app/services/SHCentralService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 12

    .line 158
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 159
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->TAG:Ljava/lang/String;

    const-string v1, "Central Service has been created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "CENTRAL_SERVICE_ALIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/services/SHCentralService;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCentralServiceComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;->inject(Lbike/smarthalo/app/services/SHCentralService;)V

    .line 165
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getCurrentRide(Z)Lbike/smarthalo/app/models/SHRide;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0, v10}, Lbike/smarthalo/app/models/SHRide;->realmSet$isActive(Z)V

    .line 168
    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateRide(Lbike/smarthalo/app/models/SHRide;)V

    .line 171
    :cond_0
    invoke-direct {p0, p0}, Lbike/smarthalo/app/services/SHCentralService;->buildLocationManager(Landroid/content/Context;)V

    .line 172
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->retrofit:Lretrofit2/Retrofit;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/app/managers/cloudManagers/ActivityCloudManager;->buildManager(Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->activityCloudManager:Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;

    .line 174
    invoke-static {p0}, Lbike/smarthalo/app/controllers/DeviceServiceController;->buildController(Landroid/content/Context;)Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    .line 175
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->onStart()V

    .line 177
    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->activityCloudManager:Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iget-object v6, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v7, p0, Lbike/smarthalo/app/services/SHCentralService;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lbike/smarthalo/app/controllers/DeviceStateController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/services/JobServiceCreator;)Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 186
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->onStart()V

    .line 188
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-static {p0, v0}, Lbike/smarthalo/app/controllers/commandsControllers/UICommandsController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;)Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 190
    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    iget-object v6, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v7, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lbike/smarthalo/app/controllers/MasterDfuController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->masterDfuController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    .line 199
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->masterDfuController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->onStart()V

    .line 201
    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/controllers/DirectionServiceController;->buildProvider(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;)Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    .line 208
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->onStart()V

    .line 210
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-static {p0, v0, v1, v2, v3}, Lbike/smarthalo/app/controllers/commandsControllers/FitnessCommandsController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;)Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    .line 217
    new-instance v0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-direct {v0, p0, v1, v2, v3}, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    .line 223
    new-instance v0, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-direct {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/controllers/commandsControllers/LightsCommandsController;-><init>(Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    .line 228
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->onStart()V

    .line 230
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-static {p0, v0, v1, v2, v3}, Lbike/smarthalo/app/controllers/commandsControllers/NavigationCommandsController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->navigationCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    .line 236
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->navigationCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->onStart()V

    .line 238
    new-instance v8, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v6, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v7, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    iput-object v8, p0, Lbike/smarthalo/app/services/SHCentralService;->goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    .line 248
    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    iget-object v6, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v7, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v8, p0, Lbike/smarthalo/app/services/SHCentralService;->goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    iget-object v9, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lbike/smarthalo/app/controllers/TrackingController;->buildTrackingProvider(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    .line 261
    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v6, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->buildTrackingLifecycleController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;)Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->trackingLifecycleController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    .line 269
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->trackingLifecycleController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;->onStart()V

    .line 270
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->trackingLifecycleController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;->observeTrackingState()Lio/reactivex/Flowable;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;->setTrackingStateSource(Lio/reactivex/Flowable;)V

    .line 271
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;->onStart()V

    .line 273
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    invoke-static {v0, p0, v1}, Lbike/smarthalo/app/controllers/BikeLocationController;->buildController(Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Landroid/content/Context;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;)Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->bikeLocationController:Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;

    .line 277
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->bikeLocationController:Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;->onStart()V

    .line 279
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->isTester()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 280
    :cond_1
    invoke-static {p0, v1, v2, v10}, Lbike/smarthalo/app/controllers/EasterEggController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Z)Lbike/smarthalo/app/controllers/controllerContracts/EasterEggControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->easterEggController:Lbike/smarthalo/app/controllers/controllerContracts/EasterEggControllerContract;

    .line 285
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->easterEggController:Lbike/smarthalo/app/controllers/controllerContracts/EasterEggControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/EasterEggControllerContract;->onStart()V

    .line 287
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-static {p0, v0, v1, v2}, Lbike/smarthalo/app/controllers/DayLightController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;)Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->dayLightController:Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;

    .line 292
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->dayLightController:Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;->onStart()V

    .line 294
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p0, v0, v1, v2, v3}, Lbike/smarthalo/app/controllers/AssistantController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->assistantController:Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

    .line 300
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->assistantController:Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;->onStart()V

    .line 302
    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iget-object v6, p0, Lbike/smarthalo/app/services/SHCentralService;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    iget-object v7, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v8, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    iget-object v9, p0, Lbike/smarthalo/app/services/SHCentralService;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iget-object v10, p0, Lbike/smarthalo/app/services/SHCentralService;->assistantController:Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

    iget-object v11, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-object v0, p0

    invoke-static/range {v0 .. v11}, Lbike/smarthalo/app/controllers/TouchInputController;->buildProvider(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->touchInputController:Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;

    .line 315
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->touchInputController:Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;->onStart()V

    .line 317
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p0, v0, v1, v2}, Lbike/smarthalo/app/controllers/AlarmController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->alarmController:Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

    .line 322
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->alarmController:Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;->onStart()V

    .line 324
    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->masterDfuController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    iget-object v6, p0, Lbike/smarthalo/app/services/SHCentralService;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lbike/smarthalo/app/controllers/AppNotificationController;->buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->appNotificationController:Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;

    .line 332
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->appNotificationController:Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;->onStart()V

    .line 334
    new-instance v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    iget-object v6, p0, Lbike/smarthalo/app/services/SHCentralService;->goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    iget-object v7, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v8, p0, Lbike/smarthalo/app/services/SHCentralService;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    iget-object v9, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;-><init>(Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->carouselController:Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;

    .line 344
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->carouselController:Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;->onStart()V

    .line 346
    new-instance v7, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iget-object v4, p0, Lbike/smarthalo/app/services/SHCentralService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v5, p0, Lbike/smarthalo/app/services/SHCentralService;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iget-object v6, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;)V

    iput-object v7, p0, Lbike/smarthalo/app/services/SHCentralService;->instabugController:Lbike/smarthalo/app/controllers/analyticsController/InstabugControllerContract;

    .line 354
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->instabugController:Lbike/smarthalo/app/controllers/analyticsController/InstabugControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/analyticsController/InstabugControllerContract;->onStart()V

    .line 356
    new-instance v0, Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->carouselController:Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;)V

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->navigationIntroController:Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroContract;

    .line 358
    new-instance v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;

    iget-object v1, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iget-object v2, p0, Lbike/smarthalo/app/services/SHCentralService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v3, p0, Lbike/smarthalo/app/services/SHCentralService;->powerSavingManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-direct {v0, p0, v1, v2, v3}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V

    iput-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->systemStatusContract:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusContract;

    .line 364
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->systemStatusContract:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusContract;->onStart()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 462
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 463
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->TAG:Ljava/lang/String;

    const-string v1, "Central service has been destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->onDispose()V

    .line 466
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->onDispose()V

    .line 467
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->trackingLifecycleController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;->onDispose(Z)V

    .line 468
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->dayLightController:Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;->onDispose()V

    .line 469
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->touchInputController:Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TouchInputContract;->onDispose()V

    .line 470
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->directionServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->onDispose()V

    .line 471
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->easterEggController:Lbike/smarthalo/app/controllers/controllerContracts/EasterEggControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/EasterEggControllerContract;->onDispose()V

    .line 472
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->assistantController:Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AssistantControllerContract;->onDispose()V

    .line 473
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->bikeLocationController:Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;->onDispose()V

    .line 474
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->dayLightController:Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;->onDispose()V

    .line 475
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->navigationCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->onDispose()V

    .line 476
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->alarmController:Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;->onDispose()V

    .line 477
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->masterDfuController:Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->onDispose()V

    .line 478
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->appNotificationController:Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;->onDispose()V

    .line 479
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->lightsCommandController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->onDispose()V

    .line 480
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->carouselController:Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;->onDispose()V

    .line 481
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->instabugController:Lbike/smarthalo/app/controllers/analyticsController/InstabugControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/analyticsController/InstabugControllerContract;->onDispose()V

    .line 482
    iget-object v0, p0, Lbike/smarthalo/app/services/SHCentralService;->systemStatusContract:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusContract;->onDispose()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
