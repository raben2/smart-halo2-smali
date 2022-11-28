.class public Lbike/smarthalo/app/controllers/EasterEggController;
.super Ljava/lang/Object;
.source "EasterEggController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/EasterEggControllerContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "EasterEggController"


# instance fields
.field private christmasGreetingSubscription:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private isTester:Z

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lbike/smarthalo/app/controllers/EasterEggController;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lbike/smarthalo/app/controllers/EasterEggController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 36
    iput-object p3, p0, Lbike/smarthalo/app/controllers/EasterEggController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 37
    iput-boolean p4, p0, Lbike/smarthalo/app/controllers/EasterEggController;->isTester:Z

    return-void
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Z)Lbike/smarthalo/app/controllers/controllerContracts/EasterEggControllerContract;
    .locals 1

    .line 45
    new-instance v0, Lbike/smarthalo/app/controllers/EasterEggController;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/controllers/EasterEggController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Z)V

    return-object v0
.end method

.method private clearChristmasGreetingSubscription()V
    .locals 1

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/controllers/EasterEggController;->christmasGreetingSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lbike/smarthalo/app/controllers/EasterEggController;->christmasGreetingSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$observeChristmasGreetingSequence$0(Lbike/smarthalo/app/controllers/EasterEggController;Lbike/smarthalo/app/models/Ping;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/DateHelper;->isChristmas(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lbike/smarthalo/app/controllers/EasterEggController;->context:Landroid/content/Context;

    const-string v0, "greeting_xmas"

    invoke-static {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsHelper;->sendAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lbike/smarthalo/app/controllers/EasterEggController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    sget-object v0, Lbike/smarthalo/app/models/SHSounds;->christmas_sound:[B

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->playSound(II[B)V

    :cond_0
    return-void
.end method

.method private observeChristmasGreetingSequence()V
    .locals 4

    .line 59
    iget-boolean v0, p0, Lbike/smarthalo/app/controllers/EasterEggController;->isTester:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/EasterEggController;->clearChristmasGreetingSubscription()V

    .line 62
    iget-object v0, p0, Lbike/smarthalo/app/controllers/EasterEggController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 63
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->observeFirstMovementOnConnection()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$EasterEggController$8VBC2zZUw-c9d2ESkJXm49VOrHo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$EasterEggController$8VBC2zZUw-c9d2ESkJXm49VOrHo;-><init>(Lbike/smarthalo/app/controllers/EasterEggController;)V

    .line 65
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/EasterEggController;->christmasGreetingSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public onDispose()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/EasterEggController;->clearChristmasGreetingSubscription()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/EasterEggController;->observeChristmasGreetingSequence()V

    return-void
.end method
