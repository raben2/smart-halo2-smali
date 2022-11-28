.class public final Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;
.super Ljava/lang/Object;
.source "AssistantCommandsController.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssistantCommandsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssistantCommandsController.kt\nbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController\n*L\n1#1,87:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000fH\u0016J\u0008\u0010\u0013\u001a\u00020\u000fH\u0016J!\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;",
        "Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;",
        "context",
        "Landroid/content/Context;",
        "deviceServiceController",
        "Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;",
        "uiCommandsController",
        "Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;",
        "settingsStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V",
        "areTouchInputsSupported",
        "",
        "()Ljava/lang/Boolean;",
        "displayClock",
        "",
        "getClockPayload",
        "Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;",
        "playHorn",
        "showChargeState",
        "updateTouchSoundState",
        "volume",
        "",
        "isEnabled",
        "(Ljava/lang/Integer;Ljava/lang/Boolean;)V",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController$Companion;

.field private static final DEFAULT_TOUCH_INPUT_SOUND_VOLUME:I = 0x28


# instance fields
.field private final context:Landroid/content/Context;

.field private final deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private final settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

.field private final uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->Companion:Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceServiceController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCommandsController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsStorageManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->context:Landroid/content/Context;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iput-object p3, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iput-object p4, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-void
.end method


# virtual methods
.method public areTouchInputsSupported()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->areTouchInputsSupported()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public displayClock()V
    .locals 5

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Clock:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    iget-object v3, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->context:Landroid/content/Context;

    const v4, 0x7f110379

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.touch_input_clock)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getNoHaloPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object v2

    invoke-interface {v1, v2}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    .line 59
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->getClockPayload()Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showClock(Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public getClockPayload()Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    new-instance v11, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;

    const/16 v1, 0xb

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 73
    sget-object v3, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->CLOCK_COLOURS:Lbike/smarthalo/sdk/models/SHColour;

    const/16 v1, 0xc

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 75
    sget-object v5, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->ASSISTANT_COLOURS:Lbike/smarthalo/sdk/models/SHColour;

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    const/16 v6, 0xfa0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, v11

    .line 71
    invoke-direct/range {v1 .. v10}, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;-><init>(ILbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/models/SHColour;IZZZZ)V

    return-object v11
.end method

.method public playHorn()V
    .locals 4

    .line 51
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Horn:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->context:Landroid/content/Context;

    const v3, 0x7f110380

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.string.touch_input_horn)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lbike/smarthalo/app/controllers/commandsControllers/NotificationPayloads;->getNoHaloPayload(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    .line 52
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    sget-object v1, Lbike/smarthalo/app/models/SHSounds;->horn_sound:[B

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->playSound(II[B)V

    return-void
.end method

.method public showChargeState()V
    .locals 2

    .line 64
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showChargeState(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method public updateTouchSoundState(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 38
    iget-object v0, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lbike/smarthalo/app/controllers/commandsControllers/AssistantCommandsController;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x28

    :goto_0
    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isTouchSoundEnabled()Z

    move-result p2

    :goto_1
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, p2, p1, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->toggleTouchSounds(ZILbike/smarthalo/sdk/CmdCallback;)V

    :cond_2
    return-void
.end method
