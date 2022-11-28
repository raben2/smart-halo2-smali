.class public Lbike/smarthalo/app/controllers/DirectionServiceController;
.super Ljava/lang/Object;
.source "DirectionServiceController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;


# static fields
.field private static final PROGRESS_ANIM_OFF_DELAY:J = 0x7d0L


# instance fields
.field private context:Landroid/content/Context;

.field private directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

.field private directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private favouritesSubscription:Lio/reactivex/disposables/Disposable;

.field private isNavigatingSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

.field private presentationNavigationState:Lbike/smarthalo/app/models/PresentationNavigationState;

.field private presentationNavigationStateSubscription:Lio/reactivex/disposables/Disposable;

.field private progressToDestinationSubscription:Lio/reactivex/disposables/Disposable;

.field private settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

.field private userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

.field private userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    .line 87
    iput-object p4, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 88
    iput-object p3, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 89
    iput-object p2, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 90
    iput-object p5, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 91
    iput-object p6, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    const/4 p2, 0x1

    .line 92
    invoke-static {p2}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p2

    iput-object p2, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->isNavigatingSource:Lio/reactivex/processors/FlowableProcessor;

    .line 93
    iget-object p2, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->isNavigatingSource:Lio/reactivex/processors/FlowableProcessor;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 95
    new-instance p2, Lbike/smarthalo/app/controllers/DirectionServiceController$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/controllers/DirectionServiceController$1;-><init>(Lbike/smarthalo/app/controllers/DirectionServiceController;)V

    invoke-static {p2, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getDirectionServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/controllers/DirectionServiceController;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;
    .locals 0

    .line 60
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;
    .locals 0

    .line 60
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/DirectionServiceController;->onDirectionServiceConnected(Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/controllers/DirectionServiceController;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->clearNavigationStateSubscription()V

    return-void
.end method

.method static synthetic access$300(Lbike/smarthalo/app/controllers/DirectionServiceController;)Lio/reactivex/processors/FlowableProcessor;
    .locals 0

    .line 60
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->isNavigatingSource:Lio/reactivex/processors/FlowableProcessor;

    return-object p0
.end method

.method public static buildProvider(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;)Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;
    .locals 8

    .line 119
    new-instance v7, Lbike/smarthalo/app/controllers/DirectionServiceController;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/controllers/DirectionServiceController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;)V

    return-object v7
.end method

.method private clearNavigationStateSubscription()V
    .locals 1

    .line 130
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->presentationNavigationStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->presentationNavigationStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearProgressToDestinationSubscription()V
    .locals 1

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->progressToDestinationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->progressToDestinationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private getDisplayStatus()Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;
    .locals 1

    .line 367
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getDisplayStatus()Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;
    .locals 1

    .line 361
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->presentationNavigationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->NoNavigation:Lbike/smarthalo/navigation/models/NavigationMode;

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$launchDelayedProgressCancelling$5(Lbike/smarthalo/app/controllers/DirectionServiceController;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 325
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    invoke-interface {p1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->removeProgress()V

    return-void
.end method

.method public static synthetic lambda$navigateToFavourite$6(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/models/UserFavourite;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/UserFavourite;->asSHLocation()Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    invoke-static {v0, p1}, Lbike/smarthalo/app/services/ServiceBinders/DirectionServiceStartHelper;->startServiceForDirectNavigation(Landroid/content/Context;Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method

.method public static synthetic lambda$navigateToFavourite$7(Lbike/smarthalo/app/controllers/DirectionServiceController;Ljava/lang/String;)V
    .locals 3

    .line 356
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Error:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getErrorPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    return-void
.end method

.method public static synthetic lambda$onDirectionServiceConnected$0(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->presentationNavigationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    return-void
.end method

.method static synthetic lambda$onDirectionServiceConnected$1(Lbike/smarthalo/app/models/PresentationNavigationState;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    iget-boolean p0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onDirectionServiceConnected$2(Lbike/smarthalo/app/controllers/DirectionServiceController;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->isNavigatingSource:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$stopNavigation$4(Lbike/smarthalo/app/controllers/DirectionServiceController;)V
    .locals 4

    .line 219
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->StopNav:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const v3, 0x7f110393

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getNavigationPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    return-void
.end method

.method public static synthetic lambda$toggleNavigationMode$3(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getNavigationPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    return-void
.end method

.method private launchDelayedProgressCancelling()V
    .locals 3

    .line 321
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->clearProgressToDestinationSubscription()V

    .line 323
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    .line 324
    invoke-static {v1, v2, v0}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$Gs6LE0s7dMK1Z1tRtA2F5_TJGW0;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$Gs6LE0s7dMK1Z1tRtA2F5_TJGW0;-><init>(Lbike/smarthalo/app/controllers/DirectionServiceController;)V

    .line 325
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->progressToDestinationSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private navigateToFavourite(Lbike/smarthalo/app/models/FavouriteType;)V
    .locals 4

    .line 329
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getLocalFavourites()Ljava/util/List;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/UserFavourite;

    .line 332
    invoke-virtual {v1}, Lbike/smarthalo/app/models/UserFavourite;->getFavouriteType()Lbike/smarthalo/app/models/FavouriteType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 333
    sget-object v0, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    if-ne p1, v0, :cond_1

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->GoToHome:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    goto :goto_0

    :cond_1
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->GoToWork:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 336
    :goto_0
    sget-object v2, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const v2, 0x7f110384

    .line 337
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const v2, 0x7f110385

    .line 338
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 340
    :goto_1
    iget-object v2, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getNavigationPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object p1

    invoke-interface {v2, p1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    .line 341
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const-wide/16 v2, 0x1f4

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$7xfy2bffVQmYSBgLMp51zbNHYIo;

    invoke-direct {v0, p0, v1}, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$7xfy2bffVQmYSBgLMp51zbNHYIo;-><init>(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/models/UserFavourite;)V

    invoke-static {p1, v2, v3, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void

    .line 350
    :cond_3
    sget-object v0, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const v0, 0x7f11037f

    .line 351
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const v0, 0x7f110394

    .line 352
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 353
    :goto_2
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const-wide/16 v1, 0x5dc

    new-instance v3, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$4tirRfO7I91ETWtzKrSRGSJ1N0M;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$4tirRfO7I91ETWtzKrSRGSJ1N0M;-><init>(Lbike/smarthalo/app/controllers/DirectionServiceController;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method private onDirectionServiceConnected(Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)V
    .locals 2
    .param p1    # Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 149
    invoke-virtual {p1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->presentationNavigationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    .line 150
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->isNavigatingSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->presentationNavigationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget-boolean v1, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationSource()Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$aLHfE3ADKz_fgsotDodkBQ71db4;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$aLHfE3ADKz_fgsotDodkBQ71db4;-><init>(Lbike/smarthalo/app/controllers/DirectionServiceController;)V

    .line 154
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$1wUuaL4VPsPYFyZ7TfVPNFXZUjA;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$1wUuaL4VPsPYFyZ7TfVPNFXZUjA;

    .line 155
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lio/reactivex/Flowable;->distinctUntilChanged()Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$qhnhcmU0sdcuYO-pWiRCbG3MPMo;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$qhnhcmU0sdcuYO-pWiRCbG3MPMo;-><init>(Lbike/smarthalo/app/controllers/DirectionServiceController;)V

    .line 157
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->presentationNavigationStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public canShowGoalTrackingAnimation()Z
    .locals 3

    .line 257
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-boolean v2, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v2, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public getDestination()Lbike/smarthalo/app/models/SHLocation;
    .locals 1

    .line 375
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->presentationNavigationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationCarouselPayload()Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;
    .locals 13

    .line 270
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v0

    .line 271
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->getDisplayStatus()Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    move-result-object v1

    .line 273
    sget-object v2, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v0, v2, :cond_0

    sget-object v2, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v0, v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    .line 274
    :cond_1
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/EmptyCommandPayload;

    invoke-direct {v0}, Lbike/smarthalo/sdk/commands/carousel/EmptyCommandPayload;-><init>()V

    return-object v0

    .line 277
    :cond_2
    iget v0, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToThisManeuver:I

    .line 278
    iget-object v2, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    iget v2, v2, Lbike/smarthalo/navigation/models/NavAngleTurns;->relativeTurnAngle:I

    .line 279
    iget-object v3, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->deviceInstruction:Ljava/lang/String;

    .line 282
    iget-object v4, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->currentType:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    sget-object v5, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ENTERING_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    iget-object v4, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->currentType:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    sget-object v5, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ENTERED_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    if-ne v4, v5, :cond_5

    .line 284
    :cond_3
    iget-object v4, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutAngles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 285
    iget-object v2, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutAngles:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutAngles:Ljava/util/ArrayList;

    iget-object v7, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutAngles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Lbike/smarthalo/app/helpers/DirectionHelper;->getClockwiseAngleGap(II)I

    move-result v2

    .line 288
    :cond_4
    iget-object v4, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutExitStreetName:Ljava/lang/String;

    invoke-static {v4}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 289
    iget-object v3, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutExitStreetName:Ljava/lang/String;

    .line 293
    :cond_5
    iget-object v4, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->currentType:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    sget-object v5, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ENTERED_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    if-ne v4, v5, :cond_6

    const/4 v0, 0x0

    .line 298
    :cond_6
    iget-object v4, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lbike/smarthalo/app/helpers/DirectionHelper;->convertStepInstruction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-static {v4}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v3, v4

    .line 303
    :cond_7
    iget-object v1, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->currentType:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    sget-object v4, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->DESTINATION:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    if-ne v1, v4, :cond_9

    .line 305
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->getDestination()Lbike/smarthalo/app/models/SHLocation;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 307
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    const/4 v10, 0x0

    goto :goto_0

    :cond_8
    move-object v12, v3

    const/4 v10, 0x0

    goto :goto_0

    :cond_9
    move v10, v2

    move-object v12, v3

    .line 312
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v9

    if-nez v9, :cond_a

    .line 314
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeet(I)I

    move-result v0

    move v8, v0

    goto :goto_1

    :cond_a
    move v8, v0

    .line 317
    :goto_1
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;

    sget-object v11, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->WHITE:Lbike/smarthalo/sdk/models/SHColour;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;-><init>(IZILbike/smarthalo/sdk/models/SHColour;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOrigin()Lbike/smarthalo/app/models/SHLocation;
    .locals 1

    .line 382
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->presentationNavigationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->origin:Lbike/smarthalo/app/models/SHLocation;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public navigateHome()V
    .locals 1

    .line 162
    sget-object v0, Lbike/smarthalo/app/models/FavouriteType;->HOME:Lbike/smarthalo/app/models/FavouriteType;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->navigateToFavourite(Lbike/smarthalo/app/models/FavouriteType;)V

    return-void
.end method

.method public navigateToWork()V
    .locals 1

    .line 167
    sget-object v0, Lbike/smarthalo/app/models/FavouriteType;->WORK:Lbike/smarthalo/app/models/FavouriteType;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->navigateToFavourite(Lbike/smarthalo/app/models/FavouriteType;)V

    return-void
.end method

.method public observeIsNavigating()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->isNavigatingSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method

.method public onDispose()V
    .locals 1

    .line 143
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 144
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->clearProgressToDestinationSubscription()V

    .line 145
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->clearNavigationStateSubscription()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 138
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method

.method public showProgressToDestination()V
    .locals 9

    .line 226
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lbike/smarthalo/app/models/PresentationNavigationState;->getProgressToDestination()I

    move-result v5

    .line 231
    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v0, 0x43

    const/16 v1, 0xff

    invoke-direct {v2, v0, v1, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    .line 237
    new-instance v3, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v4, 0xbe

    invoke-direct {v3, v0, v1, v4}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    .line 243
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    new-instance v8, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;

    const/16 v4, 0x7d0

    const/4 v6, 0x0

    const-string v7, ""

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;-><init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIZLjava/lang/String;)V

    invoke-interface {v0, v8}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendProgressAnimation(Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;)V

    .line 244
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DirectionServiceController;->launchDelayedProgressCancelling()V

    return-void

    :cond_0
    return-void
.end method

.method public stopNavigation()V
    .locals 4

    .line 212
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->StopNav:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const v3, 0x7f110389

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getErrorPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->stopNavigation()V

    .line 216
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const-wide/16 v1, 0x1f4

    new-instance v3, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$FjUbgyDrpIiHJ2k3TGgOzw9mxvg;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$FjUbgyDrpIiHJ2k3TGgOzw9mxvg;-><init>(Lbike/smarthalo/app/controllers/DirectionServiceController;)V

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public toggleNavigationMode()V
    .locals 6

    .line 172
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationCompassMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 181
    iget-object v2, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    const-string v3, "isNavigationCompassMode"

    invoke-interface {v2, v3, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->updateUserSettings(Ljava/lang/String;I)V

    .line 182
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(I)V

    .line 185
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationCompassMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->NavModeTurnByTurn:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    goto :goto_0

    :cond_1
    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->NavModeAsTheCrownFlies:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 189
    :goto_0
    iget-object v2, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const v3, 0x7f110386

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-eqz v3, :cond_4

    .line 192
    invoke-virtual {v3}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v3

    iget-object v3, v3, Lbike/smarthalo/app/models/PresentationNavigationState;->navigationMode:Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v4, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v3, v4, :cond_2

    .line 193
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Error:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const v3, 0x7f110378

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getErrorPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    return-void

    .line 196
    :cond_2
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationCompassMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->enterTurnByTurn()V

    goto :goto_1

    .line 199
    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->enterGPSAsTheCrowFlies()V

    .line 202
    :cond_4
    :goto_1
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DirectionServiceController;->context:Landroid/content/Context;

    const-wide/16 v3, 0x1f4

    new-instance v5, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$3xshGeLTiSdNztHj1y7HVN_g7g8;

    invoke-direct {v5, p0, v1, v2}, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$3xshGeLTiSdNztHj1y7HVN_g7g8;-><init>(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;)V

    invoke-static {v0, v3, v4, v5}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    :cond_5
    return-void
.end method
