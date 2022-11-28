.class public final Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;
.super Ljava/lang/Object;
.source "NavigationIntroController.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroContract;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationIntroController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationIntroController.kt\nbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController\n*L\n1#1,25:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;",
        "Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroContract;",
        "carouselMaskController",
        "Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;",
        "deviceServiceController",
        "Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;",
        "(Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;)V",
        "getCarouselMaskController",
        "()Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;",
        "getDeviceServiceController",
        "()Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;",
        "showNavigationIntro",
        "",
        "destination",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final carouselMaskController:Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "carouselMaskController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceServiceController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;->carouselMaskController:Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    return-void
.end method


# virtual methods
.method public final getCarouselMaskController()Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;->carouselMaskController:Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;

    return-object v0
.end method

.method public final getDeviceServiceController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    return-object v0
.end method

.method public showNavigationIntro(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "safeService"

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lbike/smarthalo/sdk/models/BleDevice;->deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v1, v3, :cond_1

    .line 20
    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->TriplePulse:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    invoke-virtual {v0, v1, p1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showTurnByTurnIntro(Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    .line 21
    sget-object p1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Navigation:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/NavigationIntroController;->carouselMaskController:Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;->addNavigationMask()Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarouselPosition(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_1
    return-void
.end method
