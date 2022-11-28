.class public Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
.super Landroid/os/Binder;
.source "SHCentralServiceBinder.java"


# instance fields
.field private centralService:Lbike/smarthalo/app/services/SHCentralService;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/services/SHCentralService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    iput-object p1, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    return-void
.end method


# virtual methods
.method public areTouchInputsSupported()Ljava/lang/Boolean;
    .locals 1

    .line 220
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAssistantCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->areTouchInputsSupported()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public completeDFU()V
    .locals 1

    .line 292
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getMasterDfuController()Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->finalizeDfu()V

    return-void
.end method

.method public forgetDevice(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->forgetDevice(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public getAndObserveAlarmTriggersCount()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    .line 161
    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAlarmController()Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;->getAndObserveAlarmTriggersCount()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveDFUAvailability()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/dfu/DfuAvailability;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    .line 199
    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getMasterDfuController()Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->getAndObserveDFUAvailability()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveDeviceState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/DeviceState;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    .line 225
    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceState()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveDfuState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/dfu/DfuState;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getMasterDfuController()Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->getAndObserveGlobalDfuState()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveHasBikeLocation()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    .line 193
    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getBikeLocationController()Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;->getAndObserveHasBikeLocation()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveHasNotification()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    .line 183
    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAppNotificationController()Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/AppNotificationControllerContract;->getAndObserveHasNotification()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveIsDeviceConnected()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    .line 171
    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveIsDeviceLowBattery()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    .line 205
    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceState()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/services/ServiceBinders/-$$Lambda$fo3pTyOtMb1v4oV8PKimA8MHzXE;->INSTANCE:Lbike/smarthalo/app/services/ServiceBinders/-$$Lambda$fo3pTyOtMb1v4oV8PKimA8MHzXE;

    .line 207
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getBootloaderInfo()Lbike/smarthalo/app/models/BootloaderInfo;
    .locals 1

    .line 44
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getBootloaderInfo()Lbike/smarthalo/app/models/BootloaderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGoal()Lbike/smarthalo/app/models/SHGoal;
    .locals 1

    .line 243
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getGoalController()Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;->getCurrentGoal()Lbike/smarthalo/app/models/SHGoal;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRide()Lbike/smarthalo/app/models/SHRide;
    .locals 1

    .line 239
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getTrackingController()Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 216
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    return-object v0
.end method

.method public getIsConnected()Ljava/lang/Boolean;
    .locals 1

    .line 211
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getIsConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIsFitnessPreTrackingOn()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getTrackingLifecycleController()Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;->getShouldPreTrack()Z

    move-result v0

    return v0
.end method

.method public getLatestDfuState()Lbike/smarthalo/app/models/dfu/DfuState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 272
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getMasterDfuController()Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->getGlobalDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    return-object v0
.end method

.method public getLatestFirmware()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getMasterDfuController()Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->getLatestFirmware()Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public logout()V
    .locals 1

    .line 255
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getTrackingLifecycleController()Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;->checkAndStopActiveRide()V

    return-void
.end method

.method public nav(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;)V
    .locals 7

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->playNavAnimation(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;)V

    return-void
.end method

.method public navAngleQuick(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILjava/lang/String;Z)V
    .locals 11

    move-object v0, p0

    .line 52
    iget-object v1, v0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v1}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->navAngleQuick(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILjava/lang/String;Z)V

    return-void
.end method

.method public nav_compass(II)V
    .locals 1

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->nav_compass(II)V

    return-void
.end method

.method public nav_compass_off()V
    .locals 1

    .line 92
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->nav_compass_off()V

    return-void
.end method

.method public nav_live_direction(Lbike/smarthalo/sdk/models/SHColour;I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->nav_live_direction(Lbike/smarthalo/sdk/models/SHColour;I)V

    return-void
.end method

.method public nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IILjava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IILjava/lang/String;)V

    return-void
.end method

.method public nav_pointer_off()V
    .locals 1

    .line 72
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->nav_pointer_off()V

    return-void
.end method

.method public nav_pointer_standby(IILjava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->nav_pointer_standby(IILjava/lang/String;)V

    return-void
.end method

.method public nav_roundabout(Ljava/util/ArrayList;IZIILjava/lang/String;)V
    .locals 8
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

    .line 88
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->nav_roundabout(Ljava/util/ArrayList;IZIILjava/lang/String;)V

    return-void
.end method

.method public observeFirstMovement()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    .line 177
    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->observeFirstMovementOnConnection()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public observeTrackingState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getTrackingLifecycleController()Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;->observeTrackingState()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public onDestinationReached(Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->onDestinationReached(Ljava/lang/String;)V

    return-void
.end method

.method public onFitnessTrackingToggledOff()V
    .locals 1

    .line 188
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getTrackingLifecycleController()Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;->checkAndStopActiveRide()V

    return-void
.end method

.method public onGoalChanged()V
    .locals 1

    .line 247
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getGoalController()Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;->onGoalChanged()V

    return-void
.end method

.method public performNextDfuStep()V
    .locals 1

    .line 288
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getMasterDfuController()Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;->performNextDfuStep()V

    return-void
.end method

.method public playErrorAnimation()V
    .locals 1

    .line 136
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getUiCommandsController()Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->playErrorAnimation()V

    return-void
.end method

.method public playHorn()V
    .locals 1

    .line 263
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAssistantCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->playHorn()V

    return-void
.end method

.method public playTrack(II[B)V
    .locals 1

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getUiCommandsController()Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->playSound(II[B)V

    return-void
.end method

.method public refreshCarouselNavigationCard()V
    .locals 1

    .line 64
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getCarouselController()Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;->updateNavigationCard()V

    return-void
.end method

.method public removeGoalAnimation()V
    .locals 1

    .line 104
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getUiCommandsController()Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->removeProgress()V

    return-void
.end method

.method public removeSpeedometerAnimation()V
    .locals 1

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getFitnessCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;->removeSpeedometer()V

    return-void
.end method

.method public reroute()V
    .locals 1

    .line 100
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->reroute()V

    return-void
.end method

.method public sendLogoAnimation()V
    .locals 1

    .line 152
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getUiCommandsController()Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendLogoAnimation()V

    return-void
.end method

.method public showChargeState()V
    .locals 1

    .line 259
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAssistantCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->showChargeState()V

    return-void
.end method

.method public showClock()V
    .locals 1

    .line 267
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAssistantCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->displayClock()V

    return-void
.end method

.method public showGoalIntroAnimation()V
    .locals 1

    .line 230
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getFitnessCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;->showGoalIntroAnimation()V

    return-void
.end method

.method public showSpeedometerIntroAnimation()V
    .locals 1

    .line 234
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getFitnessCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;->showSpeedometerIntroAnimation()V

    return-void
.end method

.method public showTouchOnboarding()V
    .locals 2

    .line 296
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceServiceController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/sdk/commands/commandPayloads/TouchOnboardingCommand;

    invoke-direct {v1}, Lbike/smarthalo/sdk/commands/commandPayloads/TouchOnboardingCommand;-><init>()V

    invoke-interface {v0, v1}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V

    return-void
.end method

.method public showTurnByTurnIntro(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationIntroController()Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroContract;->showNavigationIntro(Ljava/lang/String;)V

    return-void
.end method

.method public toggleFitnessPreTracking()V
    .locals 1

    .line 112
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getTrackingLifecycleController()Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;->toggleShouldPreTrack()V

    return-void
.end method

.method public toggleNavBreathing(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->toggleNavBreathing(Z)V

    return-void
.end method

.method public turnOffNavAnimations()V
    .locals 1

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getNavigationCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/NavigationCommandsControllerContract;->turnOffNavAnimations()V

    return-void
.end method

.method public updateAlarmSettings()V
    .locals 2

    .line 144
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAlarmController()Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;->updateAlarmState(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lbike/smarthalo/app/models/AlarmUpdateCallback;)V

    return-void
.end method

.method public updateAlarmSeverity(ZLbike/smarthalo/app/models/AlarmUpdateCallback;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAlarmController()Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, p1, p2}, Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;->updateAlarmState(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lbike/smarthalo/app/models/AlarmUpdateCallback;)V

    return-void
.end method

.method public updateAlarmTapCode(Ljava/lang/String;Lbike/smarthalo/app/models/AlarmUpdateCallback;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAlarmController()Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1, p2}, Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;->updateAlarmState(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lbike/smarthalo/app/models/AlarmUpdateCallback;)V

    return-void
.end method

.method public updateDeviceName()V
    .locals 1

    .line 280
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->updateDeviceName()V

    return-void
.end method

.method public updateFrontLightMode(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getDayLightController()Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;->onLightModeChanged(Z)V

    return-void
.end method

.method public updateFrontLightSettings()V
    .locals 1

    .line 128
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getLightsCommandController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->updateDeviceLightSettings()V

    return-void
.end method

.method public updateTouchSoundsSettings(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->centralService:Lbike/smarthalo/app/services/SHCentralService;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/SHCentralService;->getAssistantCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->updateTouchSoundState(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method
