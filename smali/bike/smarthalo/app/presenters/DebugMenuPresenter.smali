.class public Lbike/smarthalo/app/presenters/DebugMenuPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "DebugMenuPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;
    }
.end annotation


# static fields
.field private static final ANGLE_INCREMENT:I = 0xf

.field private static final ANIM_REFRESH_DELAY:I = 0x2710

.field public static final DEFAULT_ANGLE_TURN:I = 0x5a

.field public static final DEFAULT_BRIGHTNESS:I = 0x64

.field public static final DEFAULT_OLED_ANIMATION_TIME:I = 0x258

.field public static final DEFAULT_QUICK_TURN:I = -0x5a

.field public static final DEFAULT_QUICK_TURN_PROGRESS:I = 0xa

.field private static final GOAL_PERIOD:I = 0x3e8

.field private static final MAXIMUM_ANGLE:I = 0xb4

.field private static final MAXIMUM_PROGRESS:I = 0x64

.field private static final MINIMUM_ANGLE:I = -0xb4

.field private static final MINIMUM_PROGRESS:I = 0x0

.field private static final PROGRESS_INCREMENT:I = 0xa

.field public static final STILL_ANIMATION_DEFAULT_VALUE:I = 0x32

.field private static final STILL_ANIMATION_PROGRESS_INCREMENT:I = 0xa

.field private static final U_TURN_ANGLE:I = 0xb4


# instance fields
.field private abbeyRoadNavAngle:I

.field private alarmWarningPercentage:I

.field private angleTurnAngle:I

.field private angleTurnProgress:I

.field private bleMetricsSubscription:Lio/reactivex/disposables/Disposable;

.field private carouselDelay:I

.field private carouselMetric:Lbike/smarthalo/app/models/PresentationModels/MetricType;

.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private clockSequenceIndex:I

.field private currentTapcode:Ljava/lang/String;

.field private destinationProgress:I

.field private deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

.field private deviceServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private distanceSequenceIndex:I

.field private elmStreetAngle:I

.field private fitnessProgress:I

.field private isCarouselMode:Z

.field private isFitnessMode:Z

.field private isNightLightBlinking:Z

.field private isNightLightOn:Z

.field private isPointerStandby:Z

.field private isQuickTurn:Z

.field private isRoundAboutBlinking:Z

.field private isTurnDemo:Z

.field private isUturnBlinking:Z

.field private kickstarterOffset:I

.field private lastDebugCommandFamily:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field private ledBrightness:I

.field private looperSubscription:Lio/reactivex/disposables/Disposable;

.field private nightLightBrightness:I

.field private oledAnimationTime:I

.field private oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

.field private oledBrightness:I

.field private oledContrast:I

.field private oledLooperSubsription:Lio/reactivex/disposables/Disposable;

.field private oledScreenNumber:I

.field private oledSecondaryScreenNumber:I

.field private pointerAngle:I

.field private pointerProgress:I

.field private quickTurnAngle:I

.field private quickTurnProgress:I

.field private roundaboutMode:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

.field private roundaboutNumber:I

.field private speedSequenceIndex:I

.field private speedometerPercentage:I

.field private statusBarIndex:I

.field private stmDfuStepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field private stmDfuSubscription:Lio/reactivex/disposables/Disposable;

.field private timeSequenceIndex:I

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;)V
    .locals 5

    .line 148
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    .line 80
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    const/16 v1, 0x32

    .line 81
    iput v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedometerPercentage:I

    .line 82
    iput v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->fitnessProgress:I

    const/4 v2, 0x1

    .line 83
    iput-boolean v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isFitnessMode:Z

    .line 85
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isRoundAboutBlinking:Z

    .line 86
    iput v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutNumber:I

    .line 87
    sget-object v3, Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;->Normal:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    iput-object v3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutMode:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    .line 89
    iput v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->destinationProgress:I

    .line 91
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isUturnBlinking:Z

    .line 97
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isTurnDemo:Z

    .line 98
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isQuickTurn:Z

    const/16 v3, 0x5a

    .line 99
    iput v3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    .line 100
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnProgress:I

    const/16 v3, -0x5a

    .line 101
    iput v3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    const/16 v3, 0xa

    .line 102
    iput v3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnProgress:I

    const/16 v4, 0x64

    .line 105
    iput v4, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->ledBrightness:I

    .line 106
    iput v4, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledBrightness:I

    .line 107
    iput v4, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledContrast:I

    .line 109
    sget-object v4, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Other:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    iput-object v4, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lastDebugCommandFamily:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 112
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    .line 113
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledSecondaryScreenNumber:I

    .line 114
    sget-object v4, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    iput-object v4, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/16 v4, 0x258

    .line 115
    iput v4, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationTime:I

    .line 116
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->statusBarIndex:I

    .line 119
    iput v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->nightLightBrightness:I

    .line 122
    iput v3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->alarmWarningPercentage:I

    const-string v1, ""

    .line 124
    iput-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    .line 126
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    const/16 v1, 0x3e8

    .line 127
    iput v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    .line 129
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedSequenceIndex:I

    .line 130
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->distanceSequenceIndex:I

    .line 131
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->timeSequenceIndex:I

    .line 132
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clockSequenceIndex:I

    .line 134
    iput-boolean v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isCarouselMode:Z

    .line 135
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/MetricType;->Speed:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselMetric:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    const/16 v0, -0x3c

    .line 137
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v0, 0x2d

    .line 138
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    .line 145
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuStepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 149
    iput-object p2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    .line 151
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->initializeServiceConnections(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 57
    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 0

    .line 57
    iget-object p0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    return-object p0
.end method

.method static synthetic access$102(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 0

    .line 57
    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    return-object p1
.end method

.method static synthetic access$200(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->observeBleMetrics()V

    return-void
.end method

.method static synthetic access$300(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearLooperSubscription()V

    return-void
.end method

.method static synthetic access$400(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearStmDfuSubscription()V

    return-void
.end method

.method static synthetic access$500(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearBleMetricsSubscription()V

    return-void
.end method

.method private addLongToTapcode()V
    .locals 2

    .line 1901
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    .line 1903
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setTapcode(Ljava/lang/String;)V

    .line 1905
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendTapcode(Ljava/lang/String;)V

    return-void
.end method

.method private addshortToTapcode()V
    .locals 2

    .line 1909
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    .line 1911
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setTapcode(Ljava/lang/String;)V

    .line 1913
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendTapcode(Ljava/lang/String;)V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$Presenter;
    .locals 1

    .line 192
    new-instance v0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;)V

    return-object v0
.end method

.method private clearBleMetricsSubscription()V
    .locals 1

    .line 241
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->bleMetricsSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->bleMetricsSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearLooperSubscription()V
    .locals 1

    .line 220
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearOledLooperSubscription()V
    .locals 1

    .line 227
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledLooperSubsription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledLooperSubsription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearStmDfuSubscription()V
    .locals 1

    .line 234
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearTapcode()V
    .locals 2

    const-string v0, ""

    .line 1927
    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    .line 1928
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setTapcode(Ljava/lang/String;)V

    .line 1929
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearTapcodeAnimation()V

    return-void
.end method

.method private clearTapcodeAnimation()V
    .locals 3

    .line 1933
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1934
    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showDemo(ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private cycleAnimationType()V
    .locals 2

    .line 846
    sget-object v0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$5;->$SwitchMap$bike$smarthalo$sdk$models$OledAnimationType:[I

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/OledAnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 860
    :pswitch_0
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_0

    .line 857
    :pswitch_1
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_0

    .line 854
    :pswitch_2
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_0

    .line 851
    :pswitch_3
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Right:Lbike/smarthalo/sdk/models/OledAnimationType;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_0

    .line 848
    :pswitch_4
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 864
    :goto_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setOledAnimationType(Lbike/smarthalo/sdk/models/OledAnimationType;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cycleClockSequences()V
    .locals 2

    .line 2268
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clockSequenceIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clockSequenceIndex:I

    .line 2269
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clockSequenceIndex:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setClockSequence(I)V

    return-void
.end method

.method private cycleDistanceSequences()V
    .locals 2

    .line 2258
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->distanceSequenceIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->distanceSequenceIndex:I

    .line 2259
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->distanceSequenceIndex:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setDistanceSequence(I)V

    return-void
.end method

.method private cycleMetricToDisplay()V
    .locals 2

    .line 2278
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselMetric:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    invoke-static {v0}, Lbike/smarthalo/app/models/PresentationModels/MetricType;->getNextMetric(Lbike/smarthalo/app/models/PresentationModels/MetricType;)Lbike/smarthalo/app/models/PresentationModels/MetricType;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselMetric:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    .line 2279
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselMetric:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setCarouselMetric(Lbike/smarthalo/app/models/PresentationModels/MetricType;)V

    return-void
.end method

.method private cycleRoundAboutMode()V
    .locals 2

    .line 1086
    sget-object v0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$5;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$RoundaboutMode:[I

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutMode:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1094
    :pswitch_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;->Clockwise:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutMode:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    goto :goto_0

    .line 1091
    :pswitch_1
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;->Normal:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutMode:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    goto :goto_0

    .line 1088
    :pswitch_2
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;->CounterClockwise:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutMode:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    .line 1097
    :goto_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutMode:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setRoundAboutMode(Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;)V

    .line 1099
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutNumber:I

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showRoundabout(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cycleSpeedSequences()V
    .locals 2

    .line 2253
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedSequenceIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedSequenceIndex:I

    .line 2254
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedSequenceIndex:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setSpeedSequence(I)V

    return-void
.end method

.method private cycleTimeSequences()V
    .locals 2

    .line 2263
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->timeSequenceIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->timeSequenceIndex:I

    .line 2264
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->timeSequenceIndex:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setTimeSequence(I)V

    return-void
.end method

.method private decideAndShowPointerAnim()V
    .locals 1

    .line 934
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isPointerStandby:Z

    if-eqz v0, :cond_0

    .line 935
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showPointerStandby()V

    goto :goto_0

    .line 937
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showPointerAnim()V

    :goto_0
    return-void
.end method

.method private decrementOledAnimationTime()V
    .locals 2

    .line 873
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationTime:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x64

    .line 874
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationTime:I

    .line 876
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationTime:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setOledAnimationTime(I)V

    return-void
.end method

.method private decrementOledScreen()V
    .locals 2

    .line 831
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    .line 832
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setOledScreen(I)V

    return-void
.end method

.method private decrementOledStatusBarIndex()V
    .locals 2

    .line 885
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->statusBarIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    :cond_0
    iput v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->statusBarIndex:I

    .line 886
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->statusBarIndex:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setStatusBarIndex(I)V

    return-void
.end method

.method private decrementSecondaryOledScreen()V
    .locals 2

    .line 841
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledSecondaryScreenNumber:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledSecondaryScreenNumber:I

    .line 842
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledSecondaryScreenNumber:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setSecondaryOledScreen(I)V

    return-void
.end method

.method private displayBatteryLevel()V
    .locals 1

    .line 1669
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 1670
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->showChargeState()V

    :cond_0
    return-void
.end method

.method private enterBootloader()V
    .locals 3

    .line 790
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 791
    new-instance v1, Lbike/smarthalo/app/presenters/DebugMenuPresenter$3;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter$3;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->requestBootloader(Lbike/smarthalo/sdk/CmdCallback;Z)V

    :cond_0
    return-void
.end method

.method private forceInstallGoldenFirmware()V
    .locals 2

    .line 776
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 777
    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$O0Uq2ctyPzMK3tRWPNM2nF9H6EM;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$O0Uq2ctyPzMK3tRWPNM2nF9H6EM;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->forceInstallGoldenFirmware(Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    :cond_0
    return-void
.end method

.method private getAbbeyRoadObservable()Lio/reactivex/Observable;
    .locals 6

    const/16 v0, 0xd

    .line 2104
    new-array v0, v0, [Lio/reactivex/Observable;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0x0

    .line 2106
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$tukzkSdCS8XALrmJBgOzL7wRuuw;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$tukzkSdCS8XALrmJBgOzL7wRuuw;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v4, 0x12c

    .line 2107
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$gcjRxI1qQD9l3vXQ4NJkHTSUHCw;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$gcjRxI1qQD9l3vXQ4NJkHTSUHCw;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2108
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ozuLGpiBXb4sMHAbzctvN2TDzKU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ozuLGpiBXb4sMHAbzctvN2TDzKU;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2109
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$iFg4UgvMFb4vkvOlmMw0gLpz_dU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$iFg4UgvMFb4vkvOlmMw0gLpz_dU;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2110
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ZkAXtLrp66zYDYYo8UKnQ_tXoQY;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ZkAXtLrp66zYDYYo8UKnQ_tXoQY;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2111
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$rDcvQa2k-I8no2Z0ZlWplZif9uM;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$rDcvQa2k-I8no2Z0ZlWplZif9uM;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2112
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$OjXwGh9g0XFlDurRNYJCvEZ1Id4;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$OjXwGh9g0XFlDurRNYJCvEZ1Id4;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2113
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$HzBQ8SYll8BDeHQ5NirRSJqq8NE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$HzBQ8SYll8BDeHQ5NirRSJqq8NE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2114
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ysutnw3Gn3ByMTlXqFY4fTvQrx0;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ysutnw3Gn3ByMTlXqFY4fTvQrx0;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2115
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$L1XDi5FbFb2JM3V5kom0q7Hni5I;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$L1XDi5FbFb2JM3V5kom0q7Hni5I;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2116
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x5dc

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$yOr_eBWorDyyR13GwBrWiU5XvT8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$yOr_eBWorDyyR13GwBrWiU5XvT8;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2117
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RpVdg8x3mRjaOK0i85zqeNLQO50;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RpVdg8x3mRjaOK0i85zqeNLQO50;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2118
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2105
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2104
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getAlarmTrigger(I)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    int-to-long v0, p1

    .line 1891
    new-instance p1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$cPhFmc8ch08nIz9-nzpQyxSFS-I;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$cPhFmc8ch08nIz9-nzpQyxSFS-I;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$EllMrpEhZzbhNGZbsYkpejfJv68;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$EllMrpEhZzbhNGZbsYkpejfJv68;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-static {v0, v1, p1, v2}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getAlarmWarning(I)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-wide/16 v0, 0x0

    int-to-long v2, p1

    .line 1878
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1879
    invoke-static {v0, v1, v2, v3, p1}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$euDw5amXwyneA8t2ts-HR2RWxt8;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$euDw5amXwyneA8t2ts-HR2RWxt8;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1880
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0xa

    .line 1887
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getAngleTurnObservable(III)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1251
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x3e8

    .line 1252
    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vr7wrckCP5Qz-tC4U_yYE5K366o;

    invoke-direct {v1, p0, p1, p3}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vr7wrckCP5Qz-tC4U_yYE5K366o;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;II)V

    .line 1253
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    int-to-long p2, p2

    .line 1254
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 1255
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getArrivedAtDestinationObservable()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1316
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x3e8

    .line 1317
    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$GooPq7_PhOnLCXOPrCWJm9GWJLA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$GooPq7_PhOnLCXOPrCWJm9GWJLA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1318
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0xc

    .line 1325
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$-U8rZI53TYmuJVt4GYso1N8raQo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$-U8rZI53TYmuJVt4GYso1N8raQo;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1326
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1327
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getCallObservable(Z)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1331
    sget-object v0, Lbike/smarthalo/app/models/SHSounds;->call_sound:[B

    .line 1332
    invoke-static {v0}, Lbike/smarthalo/app/models/SHSounds;->getTrackDuration([B)I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x4

    .line 1333
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$fd5JRRgEsRymK-C5w7gT8tcjAmM;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$fd5JRRgEsRymK-C5w7gT8tcjAmM;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V

    .line 1334
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$-MUaL4JcYL2rho5oVW5jo2yIhbY;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$-MUaL4JcYL2rho5oVW5jo2yIhbY;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1335
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1336
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getCallSequenceObservable()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2203
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v1, 0x0

    .line 2204
    invoke-static {v1, v2, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$H1a7vffT0FgJ0oNo1qqRaqASLuU;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$H1a7vffT0FgJ0oNo1qqRaqASLuU;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2205
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    iget v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v2, v2, 0xfa

    int-to-long v2, v2

    new-instance v4, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$MAYzFKwg3HbA0x6W1qfvPr6F5BI;

    invoke-direct {v4, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$MAYzFKwg3HbA0x6W1qfvPr6F5BI;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2206
    invoke-static {v2, v3, v4}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v2

    iget v3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v3, v3, 0xfa0

    int-to-long v3, v3

    new-instance v5, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$tJ_tXF3ynrlCc4UOFoJrAkgwJQg;

    invoke-direct {v5, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$tJ_tXF3ynrlCc4UOFoJrAkgwJQg;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2207
    invoke-static {v3, v4, v5}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v3

    .line 2203
    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lbike/smarthalo/sdk/models/OledAnimationType;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1701
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$BeXBwFszeYeOPEK_ogHnerDLX_c;

    invoke-direct {v0, p0, p3, p4, p5}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$BeXBwFszeYeOPEK_ogHnerDLX_c;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;IILbike/smarthalo/sdk/models/OledAnimationType;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getCarouselObservable(JJIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Lbike/smarthalo/sdk/models/OledAnimationType;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1708
    new-instance v4, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;

    invoke-direct {v4, p0, p5, p6, p7}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;IILbike/smarthalo/sdk/models/OledAnimationType;)V

    const/4 v5, 0x0

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JJLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getClimbSequence(Z)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2405
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_0
    move-object v5, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    move-object v0, p0

    .line 2406
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    const/4 v4, 0x4

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 2407
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2405
    invoke-static {p1, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getClockSequence(ZIZI)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZI)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x7d0

    .line 2412
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2413
    invoke-static {v0, v1, v2, v3, p3}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p3

    goto :goto_0

    :cond_0
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2414
    invoke-static {v0, v1, p3}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p3

    :goto_0
    if-nez p2, :cond_2

    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x3

    if-eqz p1, :cond_1

    .line 2417
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_1

    :cond_1
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_1
    move-object v5, p1

    move-object v0, p0

    .line 2418
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x3

    const/4 v4, 0x4

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 2419
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$uINHNPjBlBzrG2XZvNH0ky-PelM;

    invoke-direct {v0, p0, p4}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$uINHNPjBlBzrG2XZvNH0ky-PelM;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V

    .line 2420
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p3

    .line 2417
    invoke-static {p1, p2, p3}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x3

    .line 2423
    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object v0, p0

    .line 2424
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x7

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 2425
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$crkN7RR6EkUv5anFtoNq5uJGI0I;

    invoke-direct {v0, p0, p4}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$crkN7RR6EkUv5anFtoNq5uJGI0I;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V

    .line 2426
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p3

    .line 2423
    invoke-static {p1, p2, p3}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getCompleteAngleTurnObservable(IZ)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1259
    invoke-direct {p0, p1, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAngleTurnObservable(III)Lio/reactivex/Observable;

    move-result-object v0

    .line 1261
    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1icMNNbZO4BWzr6nCb0lFUnEhJE;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1icMNNbZO4BWzr6nCb0lFUnEhJE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V

    const-wide/16 v2, 0x708

    const/4 p1, 0x0

    .line 1262
    invoke-static {v2, v3, v1, p1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1267
    invoke-static {v0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1z8CCW2ZTjnub3StNf4jt-EJohQ;

    invoke-direct {v0, p0, p2}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1z8CCW2ZTjnub3StNf4jt-EJohQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V

    .line 1268
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1273
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getDemoQuickTurnObservable()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1231
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    .line 1232
    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$lUM1-X6yTi2A57aWNcc4dvg5B3M;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$lUM1-X6yTi2A57aWNcc4dvg5B3M;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1233
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0xc

    .line 1238
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 1240
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    const/4 v2, 0x2

    const/16 v3, 0x50

    invoke-direct {p0, v1, v2, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAngleTurnObservable(III)Lio/reactivex/Observable;

    move-result-object v1

    .line 1242
    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$lWPL9ItVR0oYXNaHO61Iw1JXPF8;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$lWPL9ItVR0oYXNaHO61Iw1JXPF8;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$bGeGaDRb2uprCvVPL5VDg-OFffg;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$bGeGaDRb2uprCvVPL5VDg-OFffg;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v4, 0x708

    invoke-static {v4, v5, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v2

    .line 1247
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getDistanceSequence(ZI)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_1

    const-wide/16 v1, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 2376
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_0
    move-object v5, p1

    move-object v0, p0

    .line 2377
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 2378
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p2

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    int-to-long v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x2

    sget-object v6, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object v1, p0

    .line 2379
    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2376
    invoke-static {p1, p2, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v1, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 2382
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_1

    :cond_2
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_1
    move-object v5, p1

    move-object v0, p0

    .line 2383
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x0

    const/4 v4, 0x3

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 2384
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p2

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    int-to-long v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x4

    sget-object v6, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object v1, p0

    .line 2385
    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2382
    invoke-static {p1, p2, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getElmStreetObservables()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xd

    .line 2047
    new-array v0, v0, [Lio/reactivex/Observable;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0x0

    .line 2049
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$HUh6BufrYFAP7LCkCmGK1NPN-Yc;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$HUh6BufrYFAP7LCkCmGK1NPN-Yc;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v4, 0x12c

    .line 2050
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Yz1fB0Vgd6rARuMFbq49GXgDxCA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Yz1fB0Vgd6rARuMFbq49GXgDxCA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2051
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$OpFbNQy5RC2WynYQvmw4nLelU5g;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$OpFbNQy5RC2WynYQvmw4nLelU5g;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2052
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$bo2jgpzMl9XkUDD-6g3HgNqJaB8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$bo2jgpzMl9XkUDD-6g3HgNqJaB8;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2053
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$SktMMQENIx7xz38SE1mZmVmFKl8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$SktMMQENIx7xz38SE1mZmVmFKl8;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2054
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$qTMFvBch6Y0GV101ljjQSmXqnSo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$qTMFvBch6Y0GV101ljjQSmXqnSo;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2055
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$yNe_tU-9EyU_eD0Gw0KjsViRXtA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$yNe_tU-9EyU_eD0Gw0KjsViRXtA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2056
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1n0Kcni3hkOTTPqePwoVM_3bcrQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$1n0Kcni3hkOTTPqePwoVM_3bcrQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2057
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$xGhp1szSxefQHI7Z1nELxnroUXg;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$xGhp1szSxefQHI7Z1nELxnroUXg;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2058
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$U5zh_Bee-Bw-cHI10v08OpAOTrQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$U5zh_Bee-Bw-cHI10v08OpAOTrQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2059
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x5dc

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$tPbwCBnLqj09ztD1WI7X-X3jfEQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$tPbwCBnLqj09ztD1WI7X-X3jfEQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2060
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$f2vWRzOQhYmmzp8sg9I_27qyRGg;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$f2vWRzOQhYmmzp8sg9I_27qyRGg;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2061
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2048
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2047
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getIntroObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1277
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$raiQrZmgeZe3WBP0Ve6AJd8lzTQ;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$raiQrZmgeZe3WBP0Ve6AJd8lzTQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v1, 0xfa0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getIntroSequenceObservables()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 1995
    new-array v0, v0, [Lio/reactivex/Observable;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$raiQrZmgeZe3WBP0Ve6AJd8lzTQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$raiQrZmgeZe3WBP0Ve6AJd8lzTQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0x0

    .line 1996
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1997
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$zYrWDkbDWE73CpLfrKf9pXA2v7U;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$zYrWDkbDWE73CpLfrKf9pXA2v7U;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1998
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x1f4

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$byfz9tzsWBJLMQR2wzkw1mieZRY;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$byfz9tzsWBJLMQR2wzkw1mieZRY;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1999
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x1f4

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$AGhaE_lN8V5KaLFag9c9OsqP-dQ;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$AGhaE_lN8V5KaLFag9c9OsqP-dQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2000
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x4e2

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$eJI1Lc2h5unWc8IhLDPrKzdCoAE;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$eJI1Lc2h5unWc8IhLDPrKzdCoAE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2001
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0xfa

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$mLWNuumodqXUBy5TjmJ8DecSM2I;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$mLWNuumodqXUBy5TjmJ8DecSM2I;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2002
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1995
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2005
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getLightOledCombo(JZZ)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p4, 0x2

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    :goto_1
    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 p4, 0x0

    .line 2531
    :goto_2
    new-instance p3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$qaVLj9DkKQaxf9TqWG5kAhvH4II;

    invoke-direct {p3, p0, v0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$qaVLj9DkKQaxf9TqWG5kAhvH4II;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V

    .line 2533
    invoke-static {p1, p2, p3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$S5NYTj0XQ1oh1TayRJ2-KAVGWBg;

    invoke-direct {v0, p0, p4}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$S5NYTj0XQ1oh1TayRJ2-KAVGWBg;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V

    .line 2534
    invoke-static {p2, p3, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p2

    .line 2532
    invoke-static {p1, p2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getLoopQuickTurnObservable()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x5a

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1283
    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAngleTurnObservable(III)Lio/reactivex/Observable;

    move-result-object v0

    .line 1285
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    .line 1286
    invoke-static {v2, v3, v4, v5, v1}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$IiLb7AgCX4r2sMQo-xOpJ68ol7Y;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$IiLb7AgCX4r2sMQo-xOpJ68ol7Y;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1287
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    const-wide/16 v2, 0x7

    .line 1288
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, -0x2d

    const/4 v3, 0x3

    const/16 v4, 0x50

    .line 1290
    invoke-direct {p0, v2, v3, v4}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAngleTurnObservable(III)Lio/reactivex/Observable;

    move-result-object v2

    .line 1292
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x708

    invoke-static {v4, v5, v3}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v3

    .line 1294
    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getPressTourAlarmObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3e8

    .line 2471
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAlarmWarning(I)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$4yyMNxzeRKMWHxjFZNUQI-pChxs;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$4yyMNxzeRKMWHxjFZNUQI-pChxs;

    const-wide/16 v2, 0x3e8

    .line 2472
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0xfa0

    .line 2474
    invoke-direct {p0, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAlarmTrigger(I)Lio/reactivex/Observable;

    move-result-object v2

    .line 2475
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getIntroSequenceObservables()Lio/reactivex/Observable;

    move-result-object v3

    .line 2470
    invoke-static {v0, v1, v2, v3}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getPressTourLightSequence()Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xb

    .line 2480
    new-array v0, v0, [Lio/reactivex/Observable;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$DwMhDLsq6mMyM7H2HQ7UzysUKdE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$DwMhDLsq6mMyM7H2HQ7UzysUKdE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0x0

    .line 2482
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2483
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$qEgqg9vsRqpCF3dFr5oGVhwMJfs;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$qEgqg9vsRqpCF3dFr5oGVhwMJfs;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2484
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$pRn7eXKqBRsw95jBMPZ1Z18lLHk;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$pRn7eXKqBRsw95jBMPZ1Z18lLHk;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v4, 0x3e8

    .line 2485
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$nh9w36wWh0oLjS5zFGWlimtfPqc;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$nh9w36wWh0oLjS5zFGWlimtfPqc;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2486
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$INXJyikN9J3b-rpPQjCmFqcNFQI;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$INXJyikN9J3b-rpPQjCmFqcNFQI;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v4, 0x9c4

    .line 2487
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$kS93fDBdK2f9nKtZGeYxlQacymg;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$kS93fDBdK2f9nKtZGeYxlQacymg;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v4, 0x1f4

    .line 2488
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RkQZzzKTZ4zHmb9wQNw7tNY-08s;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RkQZzzKTZ4zHmb9wQNw7tNY-08s;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v4, 0xbb8

    .line 2489
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v0, v6

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$NJEu7c9PFwMx0cL2z5LlLZD176g;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$NJEu7c9PFwMx0cL2z5LlLZD176g;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2490
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v6, 0x8

    aput-object v1, v0, v6

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$FWoAhQsvHTXKAYnsaGlm6n_QJHQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$FWoAhQsvHTXKAYnsaGlm6n_QJHQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2491
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$hsyQmM-4As0twAl1aNMG4L-2amk;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$hsyQmM-4As0twAl1aNMG4L-2amk;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2492
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2481
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2480
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getPressTourMetricsCarousel(Z)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 2558
    new-array v0, v0, [Lio/reactivex/Observable;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const/4 v2, 0x0

    .line 2560
    invoke-direct {p0, v2, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getSpeedSequence(IZ)Lio/reactivex/Observable;

    move-result-object p1

    aput-object p1, v0, v2

    new-instance p1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RP7pb3Z6-OjM3bZGcd2ST-XNz5M;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RP7pb3Z6-OjM3bZGcd2ST-XNz5M;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v3, 0x7d0

    .line 2561
    invoke-static {v3, v4, p1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    .line 2562
    invoke-direct {p0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getTimeSequence(ZI)Lio/reactivex/Observable;

    move-result-object v5

    aput-object v5, v0, p1

    const/4 p1, 0x3

    sget-object v5, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$54ghbD3FHe0ALqv4rnDae4mbygQ;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$54ghbD3FHe0ALqv4rnDae4mbygQ;

    .line 2563
    invoke-static {v3, v4, v5}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v5

    aput-object v5, v0, p1

    const/4 p1, 0x4

    .line 2565
    invoke-direct {p0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getDistanceSequence(ZI)Lio/reactivex/Observable;

    move-result-object v5

    aput-object v5, v0, p1

    const/4 p1, 0x5

    sget-object v5, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$QO8PHMzNFk40biXOOxVomAGxqCc;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$QO8PHMzNFk40biXOOxVomAGxqCc;

    .line 2566
    invoke-static {v3, v4, v5}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v5

    aput-object v5, v0, p1

    const/4 p1, 0x6

    .line 2568
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getClimbSequence(Z)Lio/reactivex/Observable;

    move-result-object v5

    aput-object v5, v0, p1

    const/4 p1, 0x7

    sget-object v5, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$pirk1dMFbXRoWvcw6Apella1OC0;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$pirk1dMFbXRoWvcw6Apella1OC0;

    .line 2569
    invoke-static {v3, v4, v5}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v3

    aput-object v3, v0, p1

    const/16 p1, 0x8

    const/16 v3, 0x9c4

    .line 2571
    invoke-direct {p0, v1, v2, v2, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getClockSequence(ZIZI)Lio/reactivex/Observable;

    move-result-object v1

    aput-object v1, v0, p1

    const/16 p1, 0x9

    const-wide/16 v1, 0xbb8

    sget-object v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$dwhjiqqPi7wGlTNbhhtu5fd0ANY;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$dwhjiqqPi7wGlTNbhhtu5fd0ANY;

    .line 2572
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    aput-object v1, v0, p1

    .line 2559
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2558
    invoke-static {p1}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getProgressObservable(Z)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1340
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$9J9eF25oJX9dIDHcV_ON0tQUu6M;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$9J9eF25oJX9dIDHcV_ON0tQUu6M;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V

    new-instance p1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$0k9rpe6Sll7D9De0hOqjMepESuY;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$0k9rpe6Sll7D9De0hOqjMepESuY;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v1, 0xfa0

    invoke-static {v1, v2, v0, p1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getRoundAboutObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1307
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1308
    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ka2_Nw4JTYEf-GpOmgaFSen1QIE;

    invoke-direct {v1, p0, v0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ka2_Nw4JTYEf-GpOmgaFSen1QIE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;[I)V

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$bGeGaDRb2uprCvVPL5VDg-OFffg;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$bGeGaDRb2uprCvVPL5VDg-OFffg;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0xfa0

    invoke-static {v2, v3, v1, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        -0x5a
        -0xb4
    .end array-data
.end method

.method private getSpeedSequence(IZ)Lio/reactivex/Observable;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v0, p1

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v1, 0x7

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    if-nez v0, :cond_1

    .line 2336
    new-array v5, v1, [Lio/reactivex/Observable;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_0
    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 2338
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v12

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object/from16 v0, p0

    .line 2339
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v13

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$dPxVdjR3VwsTrYCgeQ_6NJu019Q;

    invoke-direct {v0, v6}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$dPxVdjR3VwsTrYCgeQ_6NJu019Q;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2340
    invoke-static {v14, v15, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v11

    iget v0, v6, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    int-to-long v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object/from16 v0, p0

    .line 2341
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v10

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$nGCiplMDK5FGilEI4lPmbORfW50;

    invoke-direct {v0, v6}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$nGCiplMDK5FGilEI4lPmbORfW50;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2342
    invoke-static {v14, v15, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v9

    iget v0, v6, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    int-to-long v1, v0

    const/4 v3, 0x2

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object/from16 v0, p0

    .line 2343
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v8

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$S0oYZN6BSfctJQ-3dmSEzg6hywg;

    invoke-direct {v0, v6}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$S0oYZN6BSfctJQ-3dmSEzg6hywg;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2344
    invoke-static {v14, v15, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v7

    .line 2337
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2336
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    :cond_1
    if-ne v0, v13, :cond_3

    .line 2348
    new-array v5, v1, [Lio/reactivex/Observable;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_1

    :cond_2
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_1
    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 2350
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v12

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object/from16 v0, p0

    .line 2351
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v13

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Py6FpgfIuSzU1qg-d8h1zaF_ZDw;

    invoke-direct {v0, v6}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Py6FpgfIuSzU1qg-d8h1zaF_ZDw;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2352
    invoke-static {v14, v15, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v11

    iget v0, v6, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    int-to-long v1, v0

    const/4 v4, 0x4

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object/from16 v0, p0

    .line 2353
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v10

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$uQP4loXrtkzTgWCIkF790VbsYpw;

    invoke-direct {v0, v6}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$uQP4loXrtkzTgWCIkF790VbsYpw;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2354
    invoke-static {v14, v15, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v9

    iget v0, v6, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    int-to-long v1, v0

    const/4 v3, 0x1

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object/from16 v0, p0

    .line 2355
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v8

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$cXLmT448YxvfGlf8INk5UcChTSM;

    invoke-direct {v0, v6}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$cXLmT448YxvfGlf8INk5UcChTSM;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2356
    invoke-static {v14, v15, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v7

    .line 2349
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2348
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 2360
    :cond_3
    new-array v5, v1, [Lio/reactivex/Observable;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_2

    :cond_4
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_2
    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 2362
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v12

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object/from16 v0, p0

    .line 2363
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v13

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$pCJ1qjMrkSacRK8qyJhTxkx7Em0;

    invoke-direct {v0, v6}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$pCJ1qjMrkSacRK8qyJhTxkx7Em0;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2364
    invoke-static {v14, v15, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v11

    iget v0, v6, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    int-to-long v1, v0

    const/4 v4, 0x3

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object/from16 v0, p0

    .line 2365
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v10

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$SmLP-HFsbJhDxZlxqlLKIgu0wGA;

    invoke-direct {v0, v6}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$SmLP-HFsbJhDxZlxqlLKIgu0wGA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2366
    invoke-static {v14, v15, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v9

    iget v0, v6, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    int-to-long v1, v0

    const/4 v3, 0x2

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object/from16 v0, p0

    .line 2367
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v8

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ARZvK9IwNTJpK-j0s8ZB2poD1dQ;

    invoke-direct {v0, v6}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ARZvK9IwNTJpK-j0s8ZB2poD1dQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2368
    invoke-static {v14, v15, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    aput-object v0, v17, v7

    .line 2361
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2360
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getSpeedometerObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1346
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2waHjuhChTX9vGUIJwNiCjAI4iQ;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2waHjuhChTX9vGUIJwNiCjAI4iQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RP7pb3Z6-OjM3bZGcd2ST-XNz5M;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RP7pb3Z6-OjM3bZGcd2ST-XNz5M;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3, v0, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getTimeSequence(ZI)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_1

    const-wide/16 v1, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 2392
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_0
    move-object v5, p1

    move-object v0, p0

    .line 2393
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x7

    const/4 v4, 0x1

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 2394
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p2

    .line 2392
    invoke-static {p1, p2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v1, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 2397
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_1

    :cond_2
    sget-object p1, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_1
    move-object v5, p1

    move-object v0, p0

    .line 2398
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x5

    const/4 v4, 0x4

    sget-object v5, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    .line 2399
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object p2

    .line 2397
    invoke-static {p1, p2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getUturnObservable()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1298
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x3e8

    .line 1299
    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$dxTuydGuqBlgQuBN9ulbS8T4LJY;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$dxTuydGuqBlgQuBN9ulbS8T4LJY;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1300
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x3

    .line 1301
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$-U8rZI53TYmuJVt4GYso1N8raQo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$-U8rZI53TYmuJVt4GYso1N8raQo;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1302
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1303
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getWeatherAlertObservable()Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 2186
    new-array v0, v0, [Lio/reactivex/Observable;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$u4XPCMlHQ_xQJej_MmkB6d_6NIA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0x0

    .line 2188
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$6y945WPpabbend472gzeVzt5mmc;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$6y945WPpabbend472gzeVzt5mmc;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2189
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0xfa

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Mx3dF7EOMIcEtcPsVKn-eFsSDhw;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Mx3dF7EOMIcEtcPsVKn-eFsSDhw;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2190
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x7d0

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Z2Z1vnph_oJn6HaDHi47209ssCE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Z2Z1vnph_oJn6HaDHi47209ssCE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2191
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$eMEQrEo7h4DOFrEBcYjz5M9ioNU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$eMEQrEo7h4DOFrEBcYjz5M9ioNU;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2192
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2187
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2186
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private incrementOledAnimationTime()V
    .locals 2

    .line 868
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationTime:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationTime:I

    .line 869
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationTime:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setOledAnimationTime(I)V

    return-void
.end method

.method private incrementOledScreen()V
    .locals 2

    .line 826
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    .line 827
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setOledScreen(I)V

    return-void
.end method

.method private incrementOledStatusBarIndex()V
    .locals 2

    .line 880
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->statusBarIndex:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :cond_0
    iput v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->statusBarIndex:I

    .line 881
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->statusBarIndex:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setStatusBarIndex(I)V

    return-void
.end method

.method private incrementSecondaryOledScreen()V
    .locals 2

    .line 836
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledSecondaryScreenNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledSecondaryScreenNumber:I

    .line 837
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledSecondaryScreenNumber:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setSecondaryOledScreen(I)V

    return-void
.end method

.method private initializeServiceConnections(Landroid/content/Context;)V
    .locals 1

    .line 155
    new-instance v0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter$1;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-static {v0, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    .line 168
    new-instance v0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter$2;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-static {v0, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getDeviceServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method private initializeStmDfu([B)V
    .locals 2

    .line 718
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$jM4aBipqA548bK1mnGBNomhk1BY;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$jM4aBipqA548bK1mnGBNomhk1BY;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;[B)V

    invoke-virtual {v0, p1, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->initializeStmDfu([BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;)V

    return-void
.end method

.method public static synthetic lambda$-MUaL4JcYL2rho5oVW5jo2yIhbY(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffAssistant()V

    return-void
.end method

.method public static synthetic lambda$-U8rZI53TYmuJVt4GYso1N8raQo(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffNav()V

    return-void
.end method

.method public static synthetic lambda$0k9rpe6Sll7D9De0hOqjMepESuY(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffFitnessProgress()V

    return-void
.end method

.method public static synthetic lambda$2XLrEqkVgRCcUoIAKzJzPTeK3mk(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stopOled()V

    return-void
.end method

.method public static synthetic lambda$EllMrpEhZzbhNGZbsYkpejfJv68(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmOff()V

    return-void
.end method

.method public static synthetic lambda$JzNNUeHSroID4imriFAeo7Iwm-Q(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearTapcodeAnimation()V

    return-void
.end method

.method public static synthetic lambda$RP7pb3Z6-OjM3bZGcd2ST-XNz5M(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffSpeedometer()V

    return-void
.end method

.method public static synthetic lambda$Z2Z1vnph_oJn6HaDHi47209ssCE(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffAssistantAnimation()V

    return-void
.end method

.method public static synthetic lambda$bGeGaDRb2uprCvVPL5VDg-OFffg(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffNav()V

    return-void
.end method

.method public static synthetic lambda$cPhFmc8ch08nIz9-nzpQyxSFS-I(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmTrigger()V

    return-void
.end method

.method public static synthetic lambda$forceInstallGoldenFirmware$8(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "Successfully installed golden firmware"

    goto :goto_0

    :cond_0
    const-string p1, "Error occurred when forcing golden firmware installation"

    .line 784
    :goto_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$59(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 3

    .line 2107
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, v2, v1, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$60(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2108
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$61(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2109
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/16 v3, 0x1c

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$62(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2110
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/16 v1, 0xb

    const/4 v2, 0x3

    const/16 v3, 0x2a

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$63(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2111
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/16 v1, 0xb

    const/4 v2, 0x4

    const/16 v3, 0x38

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$64(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2112
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/16 v1, 0xb

    const/4 v2, 0x5

    const/16 v3, 0x46

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$65(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2113
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/16 v1, 0xb

    const/4 v2, 0x6

    const/16 v3, 0x54

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$66(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2114
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/16 v1, 0xb

    const/4 v2, 0x7

    const/16 v3, 0x62

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$67(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2115
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/16 v1, 0xb

    const/16 v2, 0x8

    const/16 v3, 0x64

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$68(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2116
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    const/16 v1, 0xb

    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$69(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2117
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getAbbeyRoadObservable$70(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    .line 2119
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stopOled()V

    .line 2120
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffNav()V

    return-void
.end method

.method public static synthetic lambda$getAlarmWarning$38(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Ljava/lang/Long;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1881
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x5

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 1882
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long v0, v0, v2

    long-to-int p1, v0

    add-int/lit8 p1, p1, 0xa

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmProgressAnimation(IZ)V

    goto :goto_0

    .line 1884
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long v0, v0, v2

    long-to-int p1, v0

    add-int/lit8 p1, p1, 0xa

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmProgressAnimation(IZ)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$getAngleTurnObservable$23(Lbike/smarthalo/app/presenters/DebugMenuPresenter;IILjava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1253
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long v0, v0, v2

    long-to-int p3, v0

    add-int/2addr p3, p2

    invoke-direct {p0, p1, p3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendNavigationAnimation(II)V

    return-void
.end method

.method public static synthetic lambda$getArrivedAtDestinationObservable$29(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Ljava/lang/Long;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1319
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1320
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    long-to-int p1, v0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendArrivedAtDestinationAnimation(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    .line 1322
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendArrivedAtDestinationAnimation(I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$getCallObservable$30(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ZLjava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1334
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendCallAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$getCallSequenceObservable$89(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 7

    const/16 v1, 0xfa

    const/16 v2, 0x96

    const/16 v3, 0xfa

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xc8

    move-object v0, p0

    .line 2205
    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAssistantAnimation(IIIIII)V

    return-void
.end method

.method public static synthetic lambda$getCallSequenceObservable$90(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2206
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getCallSequenceObservable$91(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2210
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffAssistantAnimation()V

    .line 2211
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getCarouselObservable$36(Lbike/smarthalo/app/presenters/DebugMenuPresenter;IILbike/smarthalo/sdk/models/OledAnimationType;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 1704
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getCarouselObservable$37(Lbike/smarthalo/app/presenters/DebugMenuPresenter;IILbike/smarthalo/sdk/models/OledAnimationType;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 1711
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getClockSequence$107(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ILjava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2420
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x9

    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1, p2, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendClockCommand(IIZI)V

    return-void
.end method

.method public static synthetic lambda$getClockSequence$108(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ILjava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2426
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0x1c

    invoke-virtual {p0, v0, v1, p2, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendClockCommand(IIZI)V

    return-void
.end method

.method public static synthetic lambda$getCompleteAngleTurnObservable$24(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V
    .locals 1

    const/16 v0, 0x64

    .line 1263
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendNavigationAnimation(II)V

    return-void
.end method

.method public static synthetic lambda$getCompleteAngleTurnObservable$25(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1270
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffNav()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getDemoQuickTurnObservable$21(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Ljava/lang/Long;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1233
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    .line 1236
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0xa

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v4

    mul-long v2, v2, v6

    long-to-int v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x64

    .line 1237
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x7

    cmp-long v2, v8, v10

    if-lez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v4

    mul-long v8, v8, v6

    const-wide/16 v4, 0x28

    sub-long/2addr v8, v4

    long-to-int p1, v8

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1233
    :goto_1
    invoke-direct {p0, v0, v1, v3, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendQuickTurnAnimation(IIII)V

    return-void
.end method

.method public static synthetic lambda$getDemoQuickTurnObservable$22(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 2

    .line 1244
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendNavigationAnimation(II)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$45(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 3

    .line 2050
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, v2, v1, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$46(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2051
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/16 v3, 0xe

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$47(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2052
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/16 v3, 0x1c

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$48(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2053
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/16 v3, 0x2a

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$49(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2054
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/16 v3, 0x38

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$50(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2055
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v1, 0xa

    const/4 v2, 0x5

    const/16 v3, 0x46

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$51(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2056
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v1, 0xa

    const/4 v2, 0x6

    const/16 v3, 0x54

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$52(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2057
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v1, 0xa

    const/4 v2, 0x7

    const/16 v3, 0x62

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$53(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2058
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/16 v3, 0x64

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$54(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 4

    .line 2059
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAngleTurnAndOled(IIII)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$55(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2060
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getElmStreetObservables$56(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    .line 2062
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stopOled()V

    .line 2063
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffNav()V

    return-void
.end method

.method public static synthetic lambda$getIntroSequenceObservables$39(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 1998
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Right:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getIntroSequenceObservables$40(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 1999
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getIntroSequenceObservables$41(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2000
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getIntroSequenceObservables$42(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2001
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getIntroSequenceObservables$43(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2002
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Right:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getLightOledCombo$123(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V
    .locals 6

    .line 2533
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getLightOledCombo$124(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V
    .locals 6

    .line 2534
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getLoopQuickTurnObservable$26(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Ljava/lang/Long;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1287
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long v0, v0, v2

    const-wide/16 v4, 0x32

    add-long/2addr v0, v4

    long-to-int v1, v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long v4, v4, v2

    long-to-int p1, v4

    const/16 v0, 0x5a

    const/16 v2, -0x2d

    invoke-direct {p0, v0, v2, v1, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendQuickTurnAnimation(IIII)V

    return-void
.end method

.method static synthetic lambda$getPressTourAlarmObservable$112()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$113(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/4 v0, 0x0

    .line 2482
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLightBlinking(Z)V

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$114(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2484
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$115(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2485
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$116(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/4 v0, 0x1

    .line 2486
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLight(Z)V

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$117(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2487
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$118(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/4 v0, 0x1

    .line 2488
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLightBlinking(Z)V

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$119(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2489
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$120(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/4 v0, 0x0

    .line 2490
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLight(Z)V

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$121(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/4 v0, 0x0

    .line 2491
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLightBlinking(Z)V

    return-void
.end method

.method public static synthetic lambda$getPressTourLightSequence$122(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2492
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method static synthetic lambda$getPressTourMetricsCarousel$126()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$getPressTourMetricsCarousel$127()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$getPressTourMetricsCarousel$128()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$getPressTourMetricsCarousel$129()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$getProgressObservable$31(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V
    .locals 1

    const/16 v0, 0x3c

    .line 1341
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendGoalProgressAnimation(IZ)V

    return-void
.end method

.method public static synthetic lambda$getRoundAboutObservable$28(Lbike/smarthalo/app/presenters/DebugMenuPresenter;[I)V
    .locals 2

    .line 1310
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;->Normal:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendRoundAboutAnimation([ILbike/smarthalo/app/models/PresentationModels/RoundaboutMode;Z)V

    return-void
.end method

.method public static synthetic lambda$getSpeedSequence$100(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x5a

    .line 2344
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getSpeedSequence$101(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x46

    .line 2352
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getSpeedSequence$102(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x3c

    .line 2354
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getSpeedSequence$103(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x32

    .line 2356
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getSpeedSequence$104(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/4 v0, 0x0

    .line 2364
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getSpeedSequence$105(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x1e

    .line 2366
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getSpeedSequence$106(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x28

    .line 2368
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getSpeedSequence$98(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x3c

    .line 2340
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getSpeedSequence$99(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x46

    .line 2342
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getSpeedometerObservable$32(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x50

    .line 1347
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$getUturnObservable$27(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 1300
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendUTurnAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$getWeatherAlertObservable$86(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc8

    move-object v0, p0

    .line 2189
    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAssistantAnimation(IIIIII)V

    return-void
.end method

.method public static synthetic lambda$getWeatherAlertObservable$87(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2190
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$getWeatherAlertObservable$88(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2192
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$initializeStmDfu$4(Lbike/smarthalo/app/presenters/DebugMenuPresenter;[BZLbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 721
    sget-object p2, Lbike/smarthalo/app/presenters/DebugMenuPresenter$5;->$SwitchMap$bike$smarthalo$sdk$bluetooth$stmDfuModels$StmDfuState:[I

    invoke-virtual {p3}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getCurrentState()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    move-result-object p3

    invoke-virtual {p3}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 727
    :pswitch_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->onStmFirmwareReadyToTransfer()V

    goto :goto_0

    .line 724
    :pswitch_1
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->startStmDfu([B)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$launchLoopedAnimation$12(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1019
    iget-object p2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz p2, :cond_0

    .line 1020
    invoke-interface {p1, p2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;->run(Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$null$2(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V
    .locals 2

    .line 693
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->Success:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 694
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->context:Landroid/content/Context;

    const-string v0, "Success"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 695
    :cond_0
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->InstallError:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    if-ne p1, v0, :cond_1

    .line 696
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->onDfuError()V

    goto :goto_0

    .line 697
    :cond_1
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->LowBattery:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    if-ne p1, v0, :cond_2

    .line 698
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->context:Landroid/content/Context;

    const-string v0, "Please charge your device up to at least 30% or plug it to install your firmware"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 700
    :cond_2
    :goto_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->resetStmDfu()V

    return-void
.end method

.method public static synthetic lambda$observeBleMetrics$0(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getBluetoothSpeedMetrics()Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setBleMetrics(Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onStmFirmwareReadyToTransfer$7(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 2

    .line 770
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    const-string v1, "St firmware ready to install"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setStmDfuTransferText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$processAndShowTurn$19(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 3

    .line 1223
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnProgress:I

    iget v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnProgress:I

    invoke-direct {p0, p1, v0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendQuickTurnAnimation(IIII)V

    return-void
.end method

.method public static synthetic lambda$processAndShowTurn$20(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 1

    .line 1224
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnProgress:I

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendNavigationAnimation(II)V

    return-void
.end method

.method public static synthetic lambda$raiQrZmgeZe3WBP0Ve6AJd8lzTQ(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendIntroAnimation()V

    return-void
.end method

.method public static synthetic lambda$rx7pIdYcP_tZonpfEuUhJjMCwL4(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnLightOnFullBrightness(Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V

    return-void
.end method

.method public static synthetic lambda$sendIntroAndOled$33(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 1415
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showAlarmWarningSequence$44(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 p1, 0x64

    const/4 v0, 0x1

    .line 2022
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmProgressAnimation(IZ)V

    return-void
.end method

.method static synthetic lambda$showAssistant$11(Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 9

    .line 981
    new-instance v1, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v0, 0xc6

    const/16 v2, 0xdb

    const/16 v3, 0x8f

    invoke-direct {v1, v3, v2, v0}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    new-instance v4, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v4, v3, v2, v0}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v3, 0x5dc

    const/16 v5, 0x32

    const/16 v6, 0x4e2

    const/16 v7, 0x32

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_hb(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public static synthetic lambda$showBatterySequence$92(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2228
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showCompassSequence$71(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2145
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showCompassSequence$72(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 2

    const/16 v0, 0x3c

    const/16 v1, 0x32

    .line 2146
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sentPointerAnim(II)V

    return-void
.end method

.method public static synthetic lambda$showCompassSequence$73(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 2

    const/16 v0, 0x1e

    const/16 v1, 0x3c

    .line 2147
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sentPointerAnim(II)V

    return-void
.end method

.method public static synthetic lambda$showCompassSequence$74(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 2

    const/16 v0, -0xf

    const/16 v1, 0x46

    .line 2148
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sentPointerAnim(II)V

    return-void
.end method

.method public static synthetic lambda$showDestinationStill$16(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ILbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 0

    .line 1106
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendArrivedAtDestinationAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$showFitnessProgress$14(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ILbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 0

    .line 1060
    iget-boolean p2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isFitnessMode:Z

    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendGoalProgressAnimation(IZ)V

    return-void
.end method

.method public static synthetic lambda$showGoNavigationSequence$109(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2438
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showGoodbyeSequence$110(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 2

    .line 2455
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_disconnect(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public static synthetic lambda$showGoodbyeSequence$111(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2458
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showIfttSequence$93(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const-string v0, "S"

    .line 2236
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendTapcode(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$showIfttSequence$94(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const-string v0, "SS"

    .line 2237
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendTapcode(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$showIfttSequence$95(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const-string v0, "SSS"

    .line 2238
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendTapcode(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$showIfttSequence$96(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2239
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showIfttSequence$97(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2241
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showLoopedReroute$17(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 0

    .line 1122
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showRerouteAnimation()V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$75(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x3c

    .line 2165
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$76(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2166
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$77(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x4b

    .line 2167
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$78(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2168
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$79(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 1

    const/16 v0, 0x5a

    .line 2169
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$80(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2170
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$81(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2172
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$82(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2173
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$83(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2174
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$84(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2175
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showMetricsSequence$85(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 2176
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showNextOledScreen$34(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 1690
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showNightlightSequence$57(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 7

    const/4 v0, 0x0

    .line 2083
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLight(Z)V

    .line 2084
    sget-object v4, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showNightlightSequence$58(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 7

    const/4 v0, 0x1

    .line 2088
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLight(Z)V

    .line 2089
    sget-object v4, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showPointerAnim$9(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 1

    .line 951
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sentPointerAnim(II)V

    return-void
.end method

.method public static synthetic lambda$showPointerStandby$10(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 7

    .line 970
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    .line 971
    invoke-static {v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColourFromProgressForSmartHalo(I)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object v2

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float v0, v1, v0

    const/high16 v3, 0x44fa0000    # 2000.0f

    mul-float v0, v0, v3

    div-float/2addr v0, v1

    .line 973
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    const-string v5, "Destination"

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    .line 970
    invoke-virtual/range {v1 .. v6}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_pointer_standby(Lbike/smarthalo/sdk/models/SHColour;ZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method static synthetic lambda$showPressTourFeatureLoop$125()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$showPreviousOledScreen$35(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 6

    .line 1697
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method public static synthetic lambda$showRoundabout$15(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I[I[ILbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 1074
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutMode:Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;

    iget-boolean p3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isRoundAboutBlinking:Z

    invoke-direct {p0, p2, p1, p3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendRoundAboutAnimation([ILbike/smarthalo/app/models/PresentationModels/RoundaboutMode;Z)V

    return-void
.end method

.method public static synthetic lambda$showSpeedometer$13(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ILbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 0

    .line 1040
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendSpeedometerAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$showUturn$18(Lbike/smarthalo/app/presenters/DebugMenuPresenter;ZLbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 0

    .line 1135
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendUTurnAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$startStmDfu$5(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getCurrentStmDfuInformation()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;->getCurrentState()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Completed:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    if-ne v0, v1, :cond_0

    .line 747
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->onStmFirmwareReadyToTransfer()V

    .line 748
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearStmDfuSubscription()V

    goto :goto_0

    .line 750
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring st firmware "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setStmDfuTransferText(Ljava/lang/String;)V

    .line 751
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuStepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$startStmDfu$6(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 756
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->onDfuError()V

    .line 757
    sget-object p1, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuStepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 758
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearStmDfuSubscription()V

    return-void
.end method

.method static synthetic lambda$startTouchTest$1(Z)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$stmDfuFromFile$3(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V
    .locals 2

    .line 692
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->context:Landroid/content/Context;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$OioUxshCnjgCunnk3u8DBz_PPYs;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$OioUxshCnjgCunnk3u8DBz_PPYs;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$u4XPCMlHQ_xQJej_MmkB6d_6NIA(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showEmptyOled()V

    return-void
.end method

.method private launchAlarmDemo()V
    .locals 2

    .line 1865
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearLooperSubscription()V

    const/16 v0, 0x3e8

    .line 1868
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAlarmWarning(I)Lio/reactivex/Observable;

    move-result-object v0

    const/16 v1, 0xfa0

    .line 1869
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAlarmTrigger(I)Lio/reactivex/Observable;

    move-result-object v1

    .line 1867
    invoke-static {v0, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1871
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1872
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private launchDelayedOledLooper(JLjava/lang/Runnable;)V
    .locals 1

    .line 1716
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearOledLooperSubscription()V

    const/4 v0, 0x0

    .line 1717
    invoke-static {p1, p2, v0, p3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledLooperSubsription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private launchLoop()V
    .locals 5

    const/16 v0, 0xb

    .line 1352
    new-array v0, v0, [Lio/reactivex/Observable;

    .line 1353
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getIntroObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, -0x5a

    .line 1354
    invoke-direct {p0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCompleteAngleTurnObservable(IZ)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x2d

    .line 1355
    invoke-direct {p0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCompleteAngleTurnObservable(IZ)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/16 v1, -0x87

    .line 1356
    invoke-direct {p0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCompleteAngleTurnObservable(IZ)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1357
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getLoopQuickTurnObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1358
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getUturnObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1359
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getRoundAboutObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1360
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getArrivedAtDestinationObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1361
    invoke-direct {p0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCallObservable(Z)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1362
    invoke-direct {p0, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getProgressObservable(Z)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1363
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getSpeedometerObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1352
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1367
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1368
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 1026
    invoke-direct {p0, p1, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;J)V

    return-void
.end method

.method private launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;J)V
    .locals 3

    .line 1015
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    .line 1016
    invoke-static {v1, v2, p2, p3, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    .line 1017
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$l2Rkp_PEY2Dx8Hh4NCl9Ae7byqE;

    invoke-direct {p3, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$l2Rkp_PEY2Dx8Hh4NCl9Ae7byqE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    .line 1018
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private lightToggle()V
    .locals 2

    .line 1756
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightOn:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightOn:Z

    .line 1757
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightOn:Z

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setIsLightOn(Z)V

    .line 1758
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightOn:Z

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLight(Z)V

    return-void
.end method

.method private observeBleMetrics()V
    .locals 3

    .line 248
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearBleMetricsSubscription()V

    .line 250
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    .line 251
    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 252
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$-3njQNG0WIIyEyVkzxaQAhlKnoQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$-3njQNG0WIIyEyVkzxaQAhlKnoQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 253
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->bleMetricsSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onDfuError()V
    .locals 3

    .line 764
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->context:Landroid/content/Context;

    const-string v1, "Error in dfu transfer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onStmFirmwareReadyToTransfer()V
    .locals 2

    .line 769
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->context:Landroid/content/Context;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$oEEf1yHpwdJf0nr1Ois8ERmPf0E;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$oEEf1yHpwdJf0nr1Ois8ERmPf0E;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 772
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuStepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    return-void
.end method

.method private playHorn()V
    .locals 1

    .line 1681
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->playHorn()V

    :cond_0
    return-void
.end method

.method private pressTourLightCycle()V
    .locals 4

    .line 2504
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightOn:Z

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightBlinking:Z

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getLightOledCombo(JZZ)Lio/reactivex/Observable;

    move-result-object v0

    .line 2505
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2506
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    .line 2508
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightBlinking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2513
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setLightMode(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2510
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setLightMode(Z)V

    .line 2511
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lightToggle()V

    .line 2515
    :goto_1
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightOn:Z

    iget-boolean v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightBlinking:Z

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setPressTourLightCycle(ZZ)V

    return-void
.end method

.method private processAndShowTurn()V
    .locals 2

    .line 1215
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isTurnDemo:Z

    if-eqz v0, :cond_1

    .line 1216
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isQuickTurn:Z

    if-eqz v0, :cond_0

    .line 1217
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getDemoQuickTurnObservable()Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    const/4 v1, 0x1

    .line 1218
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCompleteAngleTurnObservable(IZ)Lio/reactivex/Observable;

    move-result-object v0

    .line 1220
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    goto :goto_2

    .line 1222
    :cond_1
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isQuickTurn:Z

    if-eqz v0, :cond_2

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$aGBwbSej2xbsDuHbZZ4MEgDeYsY;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$aGBwbSej2xbsDuHbZZ4MEgDeYsY;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$5QNCQWGQ-TvgggLEvzl0el0uXI0;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$5QNCQWGQ-TvgggLEvzl0el0uXI0;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 1226
    :goto_1
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    :goto_2
    return-void
.end method

.method private processAngle(IZ)I
    .locals 1

    const/16 v0, 0xb4

    if-lt p1, v0, :cond_0

    if-eqz p2, :cond_0

    const/16 p1, -0xa5

    return p1

    :cond_0
    const/16 v0, -0xb4

    if-gt p1, v0, :cond_1

    if-nez p2, :cond_1

    const/16 p1, 0xa5

    return p1

    :cond_1
    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, 0xf

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0xf

    :goto_0
    return p1
.end method

.method private processAnimationFamilyState(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;)V
    .locals 2

    .line 652
    invoke-static {p1}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->getDebugCommandFamily(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;)Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    move-result-object p1

    .line 654
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lastDebugCommandFamily:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    if-eq p1, v0, :cond_0

    .line 655
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffAnimationFamily()V

    .line 658
    :cond_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Brightness:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    if-eq p1, v0, :cond_1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Oled:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    if-eq p1, v0, :cond_1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Light:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    if-eq p1, v0, :cond_1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->OledCarouselConfig:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    if-eq p1, v0, :cond_1

    .line 662
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearLooperSubscription()V

    .line 665
    :cond_1
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Kickstarter:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lastDebugCommandFamily:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Kickstarter:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    if-eq v0, v1, :cond_2

    .line 667
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearOledLooperSubscription()V

    .line 670
    :cond_2
    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lastDebugCommandFamily:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    return-void
.end method

.method private removeLastTapFromTapcode()V
    .locals 4

    .line 1917
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1918
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    .line 1919
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setTapcode(Ljava/lang/String;)V

    .line 1920
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->currentTapcode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendTapcode(Ljava/lang/String;)V

    goto :goto_0

    .line 1922
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearTapcode()V

    :goto_0
    return-void
.end method

.method private resetStmDfu()V
    .locals 2

    .line 681
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuStepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 682
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    const-string v1, "Stm DFU from file"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setStmDfuTransferText(Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearStmDfuSubscription()V

    return-void
.end method

.method private sendAlarmArm()V
    .locals 3

    .line 1801
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1802
    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showDemo(ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendAlarmDisarm()V
    .locals 3

    .line 1807
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1808
    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showDemo(ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendAlarmOff()V
    .locals 3

    .line 1858
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1859
    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showDemo(ILbike/smarthalo/sdk/CmdCallback;)V

    .line 1860
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stopOled()V

    :cond_0
    return-void
.end method

.method private sendAlarmProgressAnimation(IZ)V
    .locals 7

    .line 1844
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    .line 1845
    sget-object v4, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    .line 1846
    iget-object p2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showDemo(IILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendAlarmTrigger()V
    .locals 7

    .line 1851
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 1852
    sget-object v4, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    .line 1853
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showDemo(ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendAlarmWarning()V
    .locals 4

    .line 1813
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_1

    .line 1814
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->alarmWarningPercentage:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setAlarmWarning(I)V

    .line 1815
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->alarmWarningPercentage:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmProgressAnimation(IZ)V

    .line 1817
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearLooperSubscription()V

    const-wide/16 v0, 0xbb8

    const/4 v2, 0x0

    .line 1818
    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2XLrEqkVgRCcUoIAKzJzPTeK3mk;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2XLrEqkVgRCcUoIAKzJzPTeK3mk;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1819
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private sendAndSetAlarmWarning(Z)V
    .locals 3

    .line 1824
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    .line 1825
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->alarmWarningPercentage:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    add-int/2addr v1, v0

    .line 1826
    iput v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->alarmWarningPercentage:I

    :cond_0
    if-nez p1, :cond_1

    .line 1829
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->alarmWarningPercentage:I

    if-le p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 1830
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->alarmWarningPercentage:I

    .line 1833
    :cond_1
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->alarmWarningPercentage:I

    const/16 v0, 0x32

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmProgressAnimation(IZ)V

    .line 1835
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->alarmWarningPercentage:I

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setAlarmWarning(I)V

    .line 1837
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearLooperSubscription()V

    const-wide/16 v0, 0xbb8

    const/4 p1, 0x0

    .line 1838
    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2XLrEqkVgRCcUoIAKzJzPTeK3mk;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2XLrEqkVgRCcUoIAKzJzPTeK3mk;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-static {v0, v1, p1, v2}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1839
    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    :cond_3
    return-void
.end method

.method private sendArrivedAtDestinationAnimation(I)V
    .locals 9

    .line 1513
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 1514
    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v0, 0x43

    const/16 v1, 0xff

    invoke-direct {v2, v0, v1, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    rsub-int/lit8 v5, p1, 0x64

    .line 1520
    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/4 v3, 0x0

    const-string v6, "Saint-Urbain"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v8}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;ZLbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendAssistantAnimation(IIIIII)V
    .locals 0

    return-void
.end method

.method private sendCallAnimation(Z)V
    .locals 10

    .line 1566
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 1568
    new-instance v1, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v2, 0xc6

    const/16 v3, 0xdb

    const/16 v4, 0x8f

    invoke-direct {v1, v4, v3, v2}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/4 v9, 0x0

    invoke-direct {v2, v4, v3, v9}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v3, 0x64

    const/16 v4, 0x100

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_central(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/CmdCallback;)V

    if-eqz p1, :cond_0

    .line 1579
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/16 v0, 0x32

    sget-object v1, Lbike/smarthalo/app/models/SHSounds;->call_sound:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v9, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->play_sound(II[BLbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendGoalProgressAnimation(IZ)V
    .locals 11

    .line 1585
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_1

    const/16 v0, 0xed

    const/16 v1, 0xff

    if-eqz p2, :cond_0

    .line 1586
    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v3, 0xd2

    const/16 v4, 0x6e

    invoke-direct {v2, v0, v3, v4}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    goto :goto_0

    :cond_0
    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v2, v0, v1, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    :goto_0
    move-object v5, v2

    .line 1601
    iget-object v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    new-instance v10, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;

    new-instance v4, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v4, v0, v1, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v6, 0x3e8

    const-string v9, "Sup homie"

    move-object v3, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v9}, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;-><init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIZLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v2, v10, p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_progress(Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_1
    return-void
.end method

.method private sendIntroAndOled()V
    .locals 4

    .line 1412
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendIntroAnimation()V

    .line 1413
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$M0d-GN0SyTrTChoblvBBvvVcaJk;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$M0d-GN0SyTrTChoblvBBvvVcaJk;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2XLrEqkVgRCcUoIAKzJzPTeK3mk;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2XLrEqkVgRCcUoIAKzJzPTeK3mk;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3, v0, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;Ljava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledLooperSubsription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private sendIntroAnimation()V
    .locals 2

    .line 1422
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1423
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_logo(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendLowBatteryAnimation()V
    .locals 2

    .line 1663
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1664
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_lowBat(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendNavigationAnimation(II)V
    .locals 13

    .line 1428
    new-instance v1, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v0, 0xff

    const/16 v2, 0x43

    invoke-direct {v1, v2, v0, v0}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    .line 1434
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    rsub-int/lit8 v7, p2, 0x64

    .line 1436
    new-instance v4, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v4}, Lbike/smarthalo/sdk/models/SHColour;-><init>()V

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v8, -0x1

    const-string v9, "Beaubien"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v12}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_angle_quick(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/models/SHColour;IIIILjava/lang/String;ZZLbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendNavigationAnimation(Lbike/smarthalo/sdk/models/SHColour;II)V
    .locals 14

    move-object v0, p0

    .line 1481
    iget-object v1, v0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v1, :cond_0

    rsub-int/lit8 v8, p3, 0x64

    .line 1483
    new-instance v5, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v5}, Lbike/smarthalo/sdk/models/SHColour;-><init>()V

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, -0x1

    const-string v10, "Saint-Denis"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v13}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_angle_quick(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/models/SHColour;IIIILjava/lang/String;ZZLbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendQuickTurnAnimation(IIII)V
    .locals 14

    .line 1454
    new-instance v4, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v0, 0xff

    const/16 v1, 0x43

    invoke-direct {v4, v1, v0, v0}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    move-object v13, p0

    .line 1460
    iget-object v0, v13, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    rsub-int/lit8 v7, p3, 0x64

    rsub-int/lit8 v8, p4, 0x64

    const-string v9, "Laverdure"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v4

    move v2, p1

    move/from16 v3, p3

    move/from16 v5, p2

    move/from16 v6, p4

    .line 1463
    invoke-virtual/range {v0 .. v12}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_angle_quick(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/models/SHColour;IIIILjava/lang/String;ZZLbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendRoundAboutAnimation([ILbike/smarthalo/app/models/PresentationModels/RoundaboutMode;Z)V
    .locals 10

    .line 1538
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 1539
    new-instance v4, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v0, 0x43

    const/16 v1, 0xff

    invoke-direct {v4, v0, v1, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    .line 1545
    new-instance v5, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v0, 0xfd

    const/16 v2, 0xed

    invoke-direct {v5, v0, v2, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/4 v0, 0x0

    .line 1552
    sget-object v1, Lbike/smarthalo/app/presenters/DebugMenuPresenter$5;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$RoundaboutMode:[I

    invoke-virtual {p2}, Lbike/smarthalo/app/models/PresentationModels/RoundaboutMode;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p2, 0x2

    const/4 v3, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x1

    const/4 v3, 0x1

    .line 1561
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/16 v7, 0x32

    const/4 v8, 0x1

    const-string v9, "Take the 3rd exit"

    move v2, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v9}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_roundabout(IILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;[IIZLjava/lang/String;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendSpeedometerAnimation(I)V
    .locals 4

    .line 1532
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 1533
    new-instance v1, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;

    div-int/lit8 v2, p1, 0x4

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;-><init>(IIZ)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_speedometer_speed(Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendTapcode(Ljava/lang/String;)V
    .locals 4

    .line 1895
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1896
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/4 v1, 0x5

    invoke-static {p1}, Lbike/smarthalo/sdk/DemoCommandsHelper;->getDemoTapcodeValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showDemo(IIILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendUIOff()V
    .locals 2

    .line 1944
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1945
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_anim_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private sendUTurnAnimation(Z)V
    .locals 4

    .line 1501
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v1, 0xfd

    const/16 v2, 0xed

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x63

    :goto_0
    const/16 v1, 0xb4

    invoke-direct {p0, v0, v1, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendNavigationAnimation(Lbike/smarthalo/sdk/models/SHColour;II)V

    return-void
.end method

.method private sentPointerAnim(II)V
    .locals 8

    .line 955
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 956
    invoke-static {p2}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColourFromProgressForSmartHalo(I)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object v2

    .line 957
    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/4 v4, 0x1

    const/high16 v0, 0x44fa0000    # 2000.0f

    int-to-float p2, p2

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float p2, v3, p2

    mul-float p2, p2, v0

    div-float/2addr p2, v3

    .line 961
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    const-string v6, "Destination"

    const/4 v7, 0x0

    move v3, p1

    .line 957
    invoke-virtual/range {v1 .. v7}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private setAbbeyRoadNavAngle(IZ)V
    .locals 0

    .line 2132
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAngle(IZ)I

    move-result p1

    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    .line 2133
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget p2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    invoke-interface {p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setAbbeyRoadAngle(I)V

    .line 2134
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAbbeyRoadSequence()V

    return-void
.end method

.method private setCarouselDelay(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2465
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    add-int/lit16 p1, p1, 0xfa

    goto :goto_0

    :cond_0
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    add-int/lit16 p1, p1, -0xfa

    :goto_0
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    .line 2466
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselDelay:I

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setCarouselDelay(I)V

    return-void
.end method

.method private setElmStreetAngle(IZ)V
    .locals 0

    .line 2076
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAngle(IZ)I

    move-result p1

    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    .line 2077
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget p2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    invoke-interface {p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setElmStreetAngle(I)V

    .line 2078
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showElmStreetSequence()V

    return-void
.end method

.method private setIsQuickTurn(Z)V
    .locals 1

    .line 1145
    iput-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isQuickTurn:Z

    .line 1146
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setIsQuickTurn(Z)V

    .line 1147
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private setIsTurnDemo(Z)V
    .locals 1

    .line 1139
    iput-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isTurnDemo:Z

    .line 1140
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setIsTurnDemo(Z)V

    .line 1141
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private setKickstarterOffset(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1939
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 p1, p1, 0xfa

    goto :goto_0

    :cond_0
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 p1, p1, -0xfa

    :goto_0
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    .line 1940
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setKickstarterOffset(I)V

    return-void
.end method

.method private setLightBrightness(Z)V
    .locals 7

    .line 1780
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    .line 1781
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->nightLightBrightness:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    .line 1782
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->nightLightBrightness:I

    :cond_0
    if-nez p1, :cond_1

    .line 1785
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->nightLightBrightness:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0xa

    .line 1786
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->nightLightBrightness:I

    .line 1789
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->nightLightBrightness:I

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setLightBrightness(I)V

    .line 1790
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    new-instance v6, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;

    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightBlinking:Z

    if-eqz v0, :cond_2

    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    goto :goto_0

    :cond_2
    sget-object v0, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    :goto_0
    move-object v1, v0

    iget v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->nightLightBrightness:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;-><init>(Lbike/smarthalo/sdk/commands/light/LightMode;IZZLbike/smarthalo/sdk/commands/SuccessCallback;)V

    invoke-virtual {p1, v6}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V

    :cond_3
    return-void
.end method

.method private setLightMode(Z)V
    .locals 2

    .line 1774
    iput-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightBlinking:Z

    .line 1775
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightBlinking:Z

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setLightMode(Z)V

    .line 1776
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLightBlinking(Z)V

    return-void
.end method

.method private setNightLight(Z)V
    .locals 3

    .line 1738
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1739
    invoke-virtual {v0, p1, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_frontLight(ZZLbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private setNightLightBlinking(Z)V
    .locals 8

    .line 1744
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_1

    .line 1745
    new-instance v7, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;

    if-eqz p1, :cond_0

    sget-object p1, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    :goto_0
    move-object v2, p1

    iget v3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->nightLightBrightness:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;-><init>(Lbike/smarthalo/sdk/commands/light/LightMode;IZZLbike/smarthalo/sdk/commands/SuccessCallback;)V

    invoke-virtual {v0, v7}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V

    :cond_1
    return-void
.end method

.method private setPointerValues(II)V
    .locals 1

    .line 942
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    .line 943
    iput p2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    .line 945
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setPointerAngle(I)V

    .line 946
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setPointerProgress(I)V

    return-void
.end method

.method private setRoundAboutBlinking(Z)V
    .locals 1

    .line 1079
    iput-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isRoundAboutBlinking:Z

    .line 1080
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setRoundAboutBlinking(Z)V

    .line 1082
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutNumber:I

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showRoundabout(I)V

    return-void
.end method

.method private showAbbeyRoadSequence()V
    .locals 2

    .line 2126
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAbbeyRoadObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 2127
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2128
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showAlarmTrigger()V
    .locals 2

    const v0, 0xea60

    .line 2035
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAlarmTrigger(I)Lio/reactivex/Observable;

    move-result-object v0

    .line 2036
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2037
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showAlarmWarningSequence()V
    .locals 3

    .line 2020
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    .line 2021
    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$JRZjiBfYJIWi82Q1CzlJSoSY9nc;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$JRZjiBfYJIWi82Q1CzlJSoSY9nc;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2022
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2024
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showEmptyOled()V

    .line 2025
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x1f4

    .line 2027
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAlarmWarning(I)Lio/reactivex/Observable;

    move-result-object v1

    .line 2026
    invoke-static {v1, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2030
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2031
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showAngleTurnAndOled(IIII)V
    .locals 7

    if-nez p4, :cond_0

    .line 2041
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 2042
    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    .line 2043
    invoke-direct {p0, p3, p4}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendNavigationAnimation(II)V

    return-void
.end method

.method private showAssistant()V
    .locals 1

    .line 980
    sget-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$FDSfKLCANvLU9PlNJOeHUuw7i-c;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$FDSfKLCANvLU9PlNJOeHUuw7i-c;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    return-void
.end method

.method private showBatterySequence()V
    .locals 10

    .line 2224
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 2225
    invoke-virtual {v0, v1, v2, v3}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showDemo(IILbike/smarthalo/sdk/CmdCallback;)V

    const/16 v5, 0x9

    const/4 v6, 0x0

    .line 2226
    sget-object v7, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    .line 2228
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v0, v0, 0x9c4

    int-to-long v0, v0

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$k5FnV9B8VLX-rlKwTvjIuo74_IA;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$k5FnV9B8VLX-rlKwTvjIuo74_IA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-static {v0, v1, v2}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2229
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2230
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private showBeautyShotTwo()V
    .locals 9

    .line 2015
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$rx7pIdYcP_tZonpfEuUhJjMCwL4;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$rx7pIdYcP_tZonpfEuUhJjMCwL4;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;J)V

    .line 2016
    sget-object v6, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method private showCall(Z)V
    .locals 0

    .line 1011
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCallObservable(Z)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showCallSequence()V
    .locals 2

    .line 2218
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCallSequenceObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 2219
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2220
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showClock()V
    .locals 1

    .line 1675
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 1676
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->showClock()V

    :cond_0
    return-void
.end method

.method private showCompassSequence()V
    .locals 5

    const/4 v0, 0x4

    .line 2144
    new-array v0, v0, [Lio/reactivex/Observable;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$KIwbi4WkNrNYba1JpFvv7hGt1uI;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$KIwbi4WkNrNYba1JpFvv7hGt1uI;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0x0

    .line 2145
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$yOB9_Ud1FQxyltrI-EmZ8Ud8m-I;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$yOB9_Ud1FQxyltrI-EmZ8Ud8m-I;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2146
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x7d0

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$dZeLxZ3Z94k8Q1AI0e2U2icdGPw;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$dZeLxZ3Z94k8Q1AI0e2U2icdGPw;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2147
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x7d0

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$MI2-RKPgmJQmOrG1cUMXXZt74WM;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$MI2-RKPgmJQmOrG1cUMXXZt74WM;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2148
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2144
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2152
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2153
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2154
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showDecrementedAnglePointer()V
    .locals 2

    .line 910
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAngle(IZ)I

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    .line 911
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setPointerValues(II)V

    .line 912
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->decideAndShowPointerAnim()V

    return-void
.end method

.method private showDecrementedAngleTurn()V
    .locals 2

    .line 1158
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAngle(IZ)I

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    .line 1159
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setTurnAngle(I)V

    .line 1161
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private showDecrementedAngleTurnProgress()V
    .locals 2

    .line 1188
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnProgress:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0xa

    .line 1189
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnProgress:I

    .line 1190
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnProgress:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setTurnProgress(I)V

    .line 1193
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private showDecrementedDestination()V
    .locals 1

    .line 1114
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->destinationProgress:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0xa

    :cond_0
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDestinationStill(I)V

    return-void
.end method

.method private showDecrementedFitnessProgress()V
    .locals 1

    .line 1048
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->fitnessProgress:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0xa

    :cond_0
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showFitnessProgress(I)V

    return-void
.end method

.method private showDecrementedProgressPointer()V
    .locals 2

    .line 925
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0xa

    .line 926
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    .line 927
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setPointerValues(II)V

    .line 929
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->decideAndShowPointerAnim()V

    :cond_0
    return-void
.end method

.method private showDecrementedQuickTurn()V
    .locals 2

    .line 1172
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAngle(IZ)I

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    .line 1173
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setQuickTurnAngle(I)V

    .line 1175
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private showDecrementedQuickTurnProgress()V
    .locals 2

    .line 1206
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnProgress:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0xa

    .line 1207
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnProgress:I

    .line 1208
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnProgress:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setQuickTurnProgress(I)V

    .line 1211
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private showDecrementedSpeedometer()V
    .locals 1

    .line 1034
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedometerPercentage:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0xa

    :cond_0
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showSpeedometer(I)V

    return-void
.end method

.method private showDestinationDemo()V
    .locals 1

    .line 1118
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getArrivedAtDestinationObservable()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showDestinationSequence()V
    .locals 12

    .line 2158
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    .line 2159
    sget-object v9, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    const/16 v0, 0x64

    .line 2160
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendArrivedAtDestinationAnimation(I)V

    return-void
.end method

.method private showDestinationStill(I)V
    .locals 1

    .line 1103
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->destinationProgress:I

    .line 1104
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setDestinationProgress(I)V

    .line 1106
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$IzgnNprf-Ov-Yl7RSDWTct3VKMU;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$IzgnNprf-Ov-Yl7RSDWTct3VKMU;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    return-void
.end method

.method private showElmStreetSequence()V
    .locals 2

    .line 2070
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getElmStreetObservables()Lio/reactivex/Observable;

    move-result-object v0

    .line 2071
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2072
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showEmptyOled()V
    .locals 6

    .line 1734
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method private showFitnessProgress(I)V
    .locals 1

    .line 1058
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->fitnessProgress:I

    .line 1059
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setFitnessProgressPercentage(I)V

    .line 1060
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$akWY1QFgmMaZzsu0tUYED5101_s;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$akWY1QFgmMaZzsu0tUYED5101_s;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    return-void
.end method

.method private showFunnyDestinationSequence()V
    .locals 7

    const/16 v0, 0x64

    .line 2445
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendArrivedAtDestinationAnimation(I)V

    .line 2446
    sget-object v4, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    return-void
.end method

.method private showGoNavigationSequence()V
    .locals 10

    .line 2432
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 2433
    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->TriplePulse:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    const-string v2, "Chez Claudette"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showTurnByTurnIntro(Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 v5, 0x6

    const/4 v6, 0x3

    .line 2434
    sget-object v7, Lbike/smarthalo/sdk/models/OledAnimationType;->Top:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    const-wide/16 v0, 0x5dc

    .line 2436
    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$SspPMFmTIxBw1fXTSDp7_iPb6qE;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$SspPMFmTIxBw1fXTSDp7_iPb6qE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-static {v0, v1, v2}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2439
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2440
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private showGoalProgressSequence()V
    .locals 6

    .line 2099
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    const/16 v0, 0x4a

    const/4 v1, 0x0

    .line 2100
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendGoalProgressAnimation(IZ)V

    return-void
.end method

.method private showGoodbyeSequence()V
    .locals 7

    .line 2450
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    const/4 v3, 0x3

    .line 2451
    sget-object v4, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    const-wide/16 v0, 0xc8

    .line 2453
    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Pig9YfppRfWyoI5U25vT83Q7UQo;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$Pig9YfppRfWyoI5U25vT83Q7UQo;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2455
    invoke-static {v0, v1, v2}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$nTv0xMXQI42cMUnYTJQYUd08nzU;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$nTv0xMXQI42cMUnYTJQYUd08nzU;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2456
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    .line 2454
    invoke-static {v0, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2459
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2460
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private showIfttSequence()V
    .locals 4

    const/4 v0, 0x6

    .line 2235
    new-array v0, v0, [Lio/reactivex/Observable;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$YYfhlSlT9eKe4TKHpjYRWAbOefs;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$YYfhlSlT9eKe4TKHpjYRWAbOefs;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0x0

    .line 2236
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x1f4

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$c8POYbat4oT0iKsI53rPizE0U2c;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$c8POYbat4oT0iKsI53rPizE0U2c;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2237
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x1f4

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$BeSz73XPB9CErFidU1Jqe6NoMrE;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$BeSz73XPB9CErFidU1Jqe6NoMrE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2238
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0xfa

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$wh4ZkjE4QlXOYyiLQKroADYQQE4;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$wh4ZkjE4QlXOYyiLQKroADYQQE4;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2239
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x1f4

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$JzNNUeHSroID4imriFAeo7Iwm-Q;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$JzNNUeHSroID4imriFAeo7Iwm-Q;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2240
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x7d0

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$aQDZdBjQF4yODUCKpitKXIvmx-8;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$aQDZdBjQF4yODUCKpitKXIvmx-8;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2241
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2235
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2244
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showEmptyOled()V

    .line 2247
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2248
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2249
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showIncrementedAnglePointer()V
    .locals 2

    .line 904
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAngle(IZ)I

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    .line 905
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setPointerValues(II)V

    .line 906
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->decideAndShowPointerAnim()V

    return-void
.end method

.method private showIncrementedAngleTurn()V
    .locals 2

    .line 1151
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAngle(IZ)I

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    .line 1152
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnAngle:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setTurnAngle(I)V

    .line 1154
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private showIncrementedAngleTurnProgress()V
    .locals 2

    .line 1179
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnProgress:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    .line 1180
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnProgress:I

    .line 1181
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->angleTurnProgress:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setTurnProgress(I)V

    .line 1184
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private showIncrementedDestination()V
    .locals 2

    .line 1110
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->destinationProgress:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    :cond_0
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDestinationStill(I)V

    return-void
.end method

.method private showIncrementedFitnessProgress()V
    .locals 2

    .line 1044
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->fitnessProgress:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    :cond_0
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showFitnessProgress(I)V

    return-void
.end method

.method private showIncrementedProgressPointer()V
    .locals 2

    .line 916
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    .line 917
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    .line 918
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerAngle:I

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pointerProgress:I

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setPointerValues(II)V

    .line 920
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->decideAndShowPointerAnim()V

    :cond_0
    return-void
.end method

.method private showIncrementedQuickTurn()V
    .locals 2

    .line 1165
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAngle(IZ)I

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    .line 1166
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnAngle:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setQuickTurnAngle(I)V

    .line 1168
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private showIncrementedQuickTurnProgress()V
    .locals 2

    .line 1197
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnProgress:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    .line 1198
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnProgress:I

    .line 1199
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->quickTurnProgress:I

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setQuickTurnProgress(I)V

    .line 1202
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    return-void
.end method

.method private showIncrementedSpeedometer()V
    .locals 2

    .line 1030
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedometerPercentage:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    :cond_0
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showSpeedometer(I)V

    return-void
.end method

.method private showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V
    .locals 7

    .line 1728
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1729
    invoke-virtual/range {v0 .. v6}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showOled(IILbike/smarthalo/sdk/models/OledAnimationType;IILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private showIntroSequence()V
    .locals 2

    .line 2009
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getIntroSequenceObservables()Lio/reactivex/Observable;

    move-result-object v0

    .line 2010
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2011
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showLoopedReroute()V
    .locals 3

    .line 1122
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$3pjUChfVFhOPQXNxuMDv7kW4R8M;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$3pjUChfVFhOPQXNxuMDv7kW4R8M;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v1, 0xbb8

    invoke-direct {p0, v0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;J)V

    return-void
.end method

.method private showMetricCarousel()V
    .locals 12

    .line 2283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselMetric:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/MetricType;->ordinal()I

    move-result v1

    .line 2287
    iget-boolean v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isCarouselMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-lez v1, :cond_0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2290
    sget-object v11, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JJIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-le v1, v3, :cond_1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x7

    const/4 v10, 0x0

    .line 2294
    sget-object v11, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JJIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 2298
    sget-object v11, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JJIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x3

    if-le v1, v2, :cond_3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x4

    const/4 v10, 0x3

    .line 2302
    sget-object v11, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCarouselObservable(JJIILbike/smarthalo/sdk/models/OledAnimationType;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2308
    :cond_3
    sget-object v1, Lbike/smarthalo/app/presenters/DebugMenuPresenter$5;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$MetricType:[I

    iget-object v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->carouselMetric:Lbike/smarthalo/app/models/PresentationModels/MetricType;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/PresentationModels/MetricType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2323
    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isCarouselMode:Z

    iget v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clockSequenceIndex:I

    const/16 v4, 0xfa0

    invoke-direct {p0, v1, v2, v3, v4}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getClockSequence(ZIZI)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_0

    .line 2319
    :pswitch_0
    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isCarouselMode:Z

    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getClimbSequence(Z)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_0

    .line 2316
    :pswitch_1
    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isCarouselMode:Z

    iget v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->distanceSequenceIndex:I

    invoke-direct {p0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getDistanceSequence(ZI)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_0

    .line 2313
    :pswitch_2
    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isCarouselMode:Z

    iget v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->timeSequenceIndex:I

    invoke-direct {p0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getTimeSequence(ZI)Lio/reactivex/Observable;

    move-result-object v1

    goto :goto_0

    .line 2310
    :pswitch_3
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedSequenceIndex:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getSpeedSequence(IZ)Lio/reactivex/Observable;

    move-result-object v1

    .line 2326
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2329
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2330
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2331
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showMetricsSequence()V
    .locals 6

    const/16 v0, 0xc

    .line 2164
    new-array v0, v0, [Lio/reactivex/Observable;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$IC2mkumzYRZIBnrCLlEOm5fwHZ0;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$IC2mkumzYRZIBnrCLlEOm5fwHZ0;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v2, 0x0

    .line 2165
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$0CuX7uqMfFXUcLwU6fl9u2i_INo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$0CuX7uqMfFXUcLwU6fl9u2i_INo;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2166
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vk8gnXCTyP-giUGNgkg1yeMwcdI;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vk8gnXCTyP-giUGNgkg1yeMwcdI;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2167
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$_WgT5yH2i41gCn_n3cQ0x7pa3dw;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$_WgT5yH2i41gCn_n3cQ0x7pa3dw;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2168
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2SkYKwmBcyxQlUBdoVCXAsRsqaw;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2SkYKwmBcyxQlUBdoVCXAsRsqaw;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2169
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$QstqUoj8ECEulrmaV3G4FSDyPvE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$QstqUoj8ECEulrmaV3G4FSDyPvE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2170
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RP7pb3Z6-OjM3bZGcd2ST-XNz5M;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$RP7pb3Z6-OjM3bZGcd2ST-XNz5M;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2171
    invoke-static {v4, v5, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7756HElJIXL2zld_o_4R4-tdXjg;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7756HElJIXL2zld_o_4R4-tdXjg;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2172
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ugQtdsSgAYRXTBKlVZK7FvB7lyY;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$ugQtdsSgAYRXTBKlVZK7FvB7lyY;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2173
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x7d0

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$3dGm-tXU6chZIkNfSmS-upu55mE;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$3dGm-tXU6chZIkNfSmS-upu55mE;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2174
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$h0GdjRW_KsXRwV2e8LfVuiHBJKo;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$h0GdjRW_KsXRwV2e8LfVuiHBJKo;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2175
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$BeB-FZp8ghVrhKdqIB8Yx24Yu2E;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$BeB-FZp8ghVrhKdqIB8Yx24Yu2E;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 2176
    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 2164
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2180
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2181
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2182
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showNextOledScreen()V
    .locals 6

    .line 1687
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->incrementOledScreen()V

    .line 1688
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Left:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    .line 1690
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$R730bhkUSqJK_EQWBh8tzDb9zK4;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$R730bhkUSqJK_EQWBh8tzDb9zK4;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v1, 0x5dc

    invoke-direct {p0, v1, v2, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchDelayedOledLooper(JLjava/lang/Runnable;)V

    return-void
.end method

.method private showNightlightSequence()V
    .locals 4

    .line 2082
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2JyWQZvZpt6hQeTx49R7RA186n0;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$2JyWQZvZpt6hQeTx49R7RA186n0;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2087
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->kickstarterOffset:I

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    new-instance v3, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$U7vx1Fp92Ia-Max-o5EiXdzF2g0;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$U7vx1Fp92Ia-Max-o5EiXdzF2g0;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-static {v1, v2, v3}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    .line 2093
    invoke-static {v0, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2094
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2095
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showPointerAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 950
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isPointerStandby:Z

    .line 951
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vBGFSFW3Ay6MOPbyfZ5dtuwT7uY;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vBGFSFW3Ay6MOPbyfZ5dtuwT7uY;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    return-void
.end method

.method private showPointerStandby()V
    .locals 1

    const/4 v0, 0x1

    .line 968
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isPointerStandby:Z

    .line 969
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7WuYAWMYUyN4Lbj_0i-axoGF7M0;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7WuYAWMYUyN4Lbj_0i-axoGF7M0;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    return-void
.end method

.method private showPressTourAlarm()V
    .locals 2

    .line 2498
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getPressTourAlarmObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 2499
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2500
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showPressTourFeatureLoop()V
    .locals 4

    const/16 v0, 0x8

    .line 2539
    new-array v0, v0, [Lio/reactivex/Observable;

    .line 2540
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getIntroSequenceObservables()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2541
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getAbbeyRoadObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2542
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getElmStreetObservables()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2543
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getPressTourAlarmObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UOT7KSiWyEVJL7RL4Wrth25TJHo;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UOT7KSiWyEVJL7RL4Wrth25TJHo;

    const-wide/16 v2, 0x3e8

    .line 2544
    invoke-static {v2, v3, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2546
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getWeatherAlertObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2547
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getCallSequenceObservable()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2548
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getPressTourLightSequence()Lio/reactivex/Observable;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2539
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2551
    invoke-static {v0}, Lio/reactivex/Observable;->concat(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2552
    invoke-virtual {v0}, Lio/reactivex/Observable;->repeat()Lio/reactivex/Observable;

    move-result-object v0

    .line 2553
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2554
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showPressTourMetricsCarousel()V
    .locals 2

    const/4 v0, 0x1

    .line 2579
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getPressTourMetricsCarousel(Z)Lio/reactivex/Observable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getPressTourMetricsCarousel(Z)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Observable;->repeat()Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2580
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2581
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showPreviousOledScreen()V
    .locals 6

    .line 1694
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->decrementOledScreen()V

    .line 1695
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->Right:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    .line 1697
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$TwFMRxx5oTvT-aACEzjxtRHxi4Q;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$TwFMRxx5oTvT-aACEzjxtRHxi4Q;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    const-wide/16 v1, 0x5dc

    invoke-direct {p0, v1, v2, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchDelayedOledLooper(JLjava/lang/Runnable;)V

    return-void
.end method

.method private showRerouteAnimation()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1127
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_reroute(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private showRoundabout(I)V
    .locals 3

    const/4 v0, 0x4

    .line 1069
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x3

    .line 1070
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 1072
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->roundaboutNumber:I

    .line 1073
    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;

    invoke-direct {v2, p0, p1, v0, v1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I[I[I)V

    invoke-direct {p0, v2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        -0x5a
        -0xb4
    .end array-data

    :array_1
    .array-data 4
        -0x78
        0x2d
        0x64
    .end array-data
.end method

.method private showSms(Z)V
    .locals 10

    .line 993
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 994
    new-instance v1, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v2, 0xc6

    const/16 v3, 0xdb

    const/16 v4, 0x8f

    invoke-direct {v1, v4, v3, v2}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    new-instance v2, Lbike/smarthalo/sdk/models/SHColour;

    const/4 v9, 0x0

    invoke-direct {v2, v4, v3, v9}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v3, 0xc8

    const/16 v4, 0x32

    const/16 v5, 0x64

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_central(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/CmdCallback;)V

    if-eqz p1, :cond_0

    .line 1005
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/16 v0, 0x32

    sget-object v1, Lbike/smarthalo/app/models/SHSounds;->sms_sound:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v9, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->play_sound(II[BLbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private showSpeedometer(I)V
    .locals 1

    .line 1038
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedometerPercentage:I

    .line 1039
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setSpeedometerPercentage(I)V

    .line 1040
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$TnCK49hUwIBbPdm1S8AInSzx-oU;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$TnCK49hUwIBbPdm1S8AInSzx-oU;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I)V

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    return-void
.end method

.method private showStillPointer()V
    .locals 0

    .line 890
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showPointerAnim()V

    return-void
.end method

.method private showUturn(Z)V
    .locals 1

    .line 1132
    iput-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isUturnBlinking:Z

    .line 1133
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setUturnlinking(Z)V

    .line 1135
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$kO8Kmtmkpcjyl4U6Ooj9lEgk1a8;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$kO8Kmtmkpcjyl4U6Ooj9lEgk1a8;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;Z)V

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoopedAnimation(Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;)V

    return-void
.end method

.method private showUturnSequence()V
    .locals 12

    .line 2138
    sget-object v3, Lbike/smarthalo/sdk/models/OledAnimationType;->None:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    .line 2139
    sget-object v9, Lbike/smarthalo/sdk/models/OledAnimationType;->Bottom:Lbike/smarthalo/sdk/models/OledAnimationType;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    const/4 v0, 0x1

    .line 2140
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendUTurnAnimation(Z)V

    return-void
.end method

.method private showWeatherSequence()V
    .locals 2

    .line 2197
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->getWeatherAlertObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 2198
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2199
    invoke-virtual {v0}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->looperSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private startStmDfu([B)V
    .locals 2

    .line 736
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuSubscription:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    .line 738
    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getCurrentStmDfuInformation()Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 739
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    .line 740
    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->startStmDfu()Lio/reactivex/Flowable;

    move-result-object p1

    .line 741
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 742
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vDtvIcIV3_OmTq-7El1lSkNgYZQ;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$vDtvIcIV3_OmTq-7El1lSkNgYZQ;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$WlMhF76QQRhXi3cclVhhIVcf1XA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$WlMhF76QQRhXi3cclVhhIVcf1XA;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    .line 743
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private startTouchTest()V
    .locals 2

    .line 674
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 675
    sget-object v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$JR6Uo0xvIV6Jgg0LSpC6HssB7yQ;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$JR6Uo0xvIV6Jgg0LSpC6HssB7yQ;

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->startTouchTest(Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    :cond_0
    return-void
.end method

.method private stmDfuFromFile()V
    .locals 2

    .line 688
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuStepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_0

    .line 689
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->showStmDfuFilePicker()V

    goto :goto_0

    .line 690
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuStepType:Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    if-ne v0, v1, :cond_1

    .line 691
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$E2F13mT1VmxtUX4r9ULG_dp3Uls;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$E2F13mT1VmxtUX4r9ULG_dp3Uls;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->installTransferredFirmware(Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopOled()V
    .locals 2

    .line 1721
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearOledLooperSubscription()V

    .line 1722
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1723
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->stopOled(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private toggleAndShowFitnessProgress()V
    .locals 2

    .line 1052
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isFitnessMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isFitnessMode:Z

    .line 1053
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isFitnessMode:Z

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setFitnessMode(Z)V

    .line 1054
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->fitnessProgress:I

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showFitnessProgress(I)V

    return-void
.end method

.method private toggleCarouselMode()V
    .locals 2

    .line 2273
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isCarouselMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isCarouselMode:Z

    .line 2274
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isCarouselMode:Z

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setCarouselMode(Z)V

    return-void
.end method

.method private toggleFitnessPreTracking()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->toggleFitnessPreTracking()V

    .line 1065
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getIsFitnessPreTrackingOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setIsFitnessPreTrackingOn(Z)V

    return-void
.end method

.method private turnLightOnFullBrightness(Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 8
    .param p1    # Lbike/smarthalo/sdk/SHDeviceServiceBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1762
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightOn:Z

    .line 1763
    new-instance v7, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;

    sget-object v2, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lbike/smarthalo/sdk/commands/light/LightSettingPayload;-><init>(Lbike/smarthalo/sdk/commands/light/LightMode;IZZLbike/smarthalo/sdk/commands/SuccessCallback;)V

    invoke-virtual {p1, v7}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1770
    invoke-virtual {p1, v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_frontLight(ZZLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method private turnOffAnimationFamily()V
    .locals 2

    .line 797
    sget-object v0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$5;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$DebugCommandFamily:[I

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lastDebugCommandFamily:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 812
    :pswitch_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffNav()V

    goto :goto_0

    .line 809
    :pswitch_1
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffFitnessProgress()V

    goto :goto_0

    .line 806
    :pswitch_2
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffNav()V

    goto :goto_0

    .line 803
    :pswitch_3
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffSpeedometer()V

    goto :goto_0

    .line 799
    :pswitch_4
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffPointer()V

    :goto_0
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private turnOffAssistant()V
    .locals 2

    .line 1644
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1645
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_central_off(Lbike/smarthalo/sdk/CmdCallback;)V

    .line 1646
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_hb_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private turnOffAssistantAnimation()V
    .locals 2

    .line 1950
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1951
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_anim_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private turnOffEverything()V
    .locals 1

    .line 1956
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearOledLooperSubscription()V

    .line 1957
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearLooperSubscription()V

    .line 1958
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendUIOff()V

    .line 1959
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stopOled()V

    const/4 v0, 0x0

    .line 1960
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setNightLight(Z)V

    .line 1961
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearTapcode()V

    .line 1962
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmOff()V

    return-void
.end method

.method private turnOffFitnessProgress()V
    .locals 2

    .line 1651
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1652
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_progress_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private turnOffLedAnimations()V
    .locals 2

    .line 1619
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1620
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_off(Lbike/smarthalo/sdk/CmdCallback;)V

    .line 1621
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_pointer_off(Lbike/smarthalo/sdk/CmdCallback;)V

    .line 1622
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_central_off(Lbike/smarthalo/sdk/CmdCallback;)V

    .line 1623
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_progress_off(Lbike/smarthalo/sdk/CmdCallback;)V

    .line 1624
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_hb_off(Lbike/smarthalo/sdk/CmdCallback;)V

    .line 1625
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_speedometer_off(Lbike/smarthalo/sdk/CmdCallback;)V

    .line 1628
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearLooperSubscription()V

    return-void
.end method

.method private turnOffNav()V
    .locals 2

    .line 1632
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1633
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private turnOffPointer()V
    .locals 2

    .line 1638
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1639
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_nav_pointer_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private turnOffSpeedometer()V
    .locals 2

    .line 1657
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1658
    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_speedometer_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private updateLedBrightness(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1372
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->ledBrightness:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    .line 1373
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->ledBrightness:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1374
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->ledBrightness:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0xa

    .line 1375
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->ledBrightness:I

    .line 1378
    :cond_1
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->ledBrightness:I

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setLedBrightness(I)V

    .line 1379
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz p1, :cond_2

    .line 1380
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->ledBrightness:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->ui_setBrightness(ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_2
    return-void
.end method

.method private updateOledBrightness(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1385
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledBrightness:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    .line 1386
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledBrightness:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1387
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledBrightness:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0xa

    .line 1388
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledBrightness:I

    .line 1391
    :cond_1
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledBrightness:I

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setOledBrightness(I)V

    .line 1392
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz p1, :cond_2

    .line 1393
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledBrightness:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setOledBrightness(ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_2
    return-void
.end method

.method private updateOledContrast(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1398
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledContrast:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0xa

    .line 1399
    iput v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledContrast:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1400
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledContrast:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0xa

    .line 1401
    iput p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledContrast:I

    .line 1404
    :cond_1
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;

    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledContrast:I

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/DebugMenuContract$View;->setOledContrast(I)V

    .line 1405
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz p1, :cond_2

    .line 1406
    iget v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledContrast:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setOledContrast(ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public debugItemClicked(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;)V
    .locals 6

    .line 262
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAnimationFamilyState(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;)V

    .line 264
    sget-object v0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$5;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$DebugMenuItemType:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 640
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Debug menu crash"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 635
    :pswitch_1
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->startTouchTest()V

    .line 637
    :pswitch_2
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->enterBootloader()V

    goto/16 :goto_0

    .line 632
    :pswitch_3
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->forceInstallGoldenFirmware()V

    goto/16 :goto_0

    .line 629
    :pswitch_4
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stmDfuFromFile()V

    goto/16 :goto_0

    .line 626
    :pswitch_5
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showPressTourMetricsCarousel()V

    goto/16 :goto_0

    .line 623
    :pswitch_6
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showPressTourAlarm()V

    goto/16 :goto_0

    .line 620
    :pswitch_7
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->pressTourLightCycle()V

    goto/16 :goto_0

    .line 617
    :pswitch_8
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showPressTourFeatureLoop()V

    goto/16 :goto_0

    .line 614
    :pswitch_9
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showGoodbyeSequence()V

    goto/16 :goto_0

    .line 611
    :pswitch_a
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showGoNavigationSequence()V

    goto/16 :goto_0

    .line 608
    :pswitch_b
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showFunnyDestinationSequence()V

    goto/16 :goto_0

    .line 605
    :pswitch_c
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showBatterySequence()V

    goto/16 :goto_0

    .line 602
    :pswitch_d
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIfttSequence()V

    goto/16 :goto_0

    .line 599
    :pswitch_e
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showCallSequence()V

    goto/16 :goto_0

    .line 596
    :pswitch_f
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showWeatherSequence()V

    goto/16 :goto_0

    .line 593
    :pswitch_10
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showMetricsSequence()V

    goto/16 :goto_0

    .line 590
    :pswitch_11
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDestinationSequence()V

    goto/16 :goto_0

    .line 587
    :pswitch_12
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showCompassSequence()V

    goto/16 :goto_0

    .line 584
    :pswitch_13
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showUturnSequence()V

    goto/16 :goto_0

    .line 581
    :pswitch_14
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setAbbeyRoadNavAngle(IZ)V

    goto/16 :goto_0

    .line 578
    :pswitch_15
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->abbeyRoadNavAngle:I

    invoke-direct {p0, p1, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setAbbeyRoadNavAngle(IZ)V

    goto/16 :goto_0

    .line 575
    :pswitch_16
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAbbeyRoadSequence()V

    goto/16 :goto_0

    .line 572
    :pswitch_17
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showGoalProgressSequence()V

    goto/16 :goto_0

    .line 569
    :pswitch_18
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showNightlightSequence()V

    goto/16 :goto_0

    .line 566
    :pswitch_19
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setElmStreetAngle(IZ)V

    goto/16 :goto_0

    .line 563
    :pswitch_1a
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->elmStreetAngle:I

    invoke-direct {p0, p1, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setElmStreetAngle(IZ)V

    goto/16 :goto_0

    .line 560
    :pswitch_1b
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showElmStreetSequence()V

    goto/16 :goto_0

    .line 557
    :pswitch_1c
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAlarmTrigger()V

    goto/16 :goto_0

    .line 554
    :pswitch_1d
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAlarmWarningSequence()V

    goto/16 :goto_0

    .line 551
    :pswitch_1e
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showBeautyShotTwo()V

    goto/16 :goto_0

    .line 548
    :pswitch_1f
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIntroSequence()V

    goto/16 :goto_0

    .line 545
    :pswitch_20
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setKickstarterOffset(Z)V

    goto/16 :goto_0

    .line 542
    :pswitch_21
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setKickstarterOffset(Z)V

    goto/16 :goto_0

    .line 539
    :pswitch_22
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffEverything()V

    goto/16 :goto_0

    .line 536
    :pswitch_23
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearTapcode()V

    goto/16 :goto_0

    .line 533
    :pswitch_24
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->removeLastTapFromTapcode()V

    goto/16 :goto_0

    .line 530
    :pswitch_25
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->addLongToTapcode()V

    goto/16 :goto_0

    .line 527
    :pswitch_26
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->addshortToTapcode()V

    goto/16 :goto_0

    .line 524
    :pswitch_27
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmOff()V

    goto/16 :goto_0

    .line 521
    :pswitch_28
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchAlarmDemo()V

    goto/16 :goto_0

    .line 518
    :pswitch_29
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmTrigger()V

    goto/16 :goto_0

    .line 515
    :pswitch_2a
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAndSetAlarmWarning(Z)V

    goto/16 :goto_0

    .line 512
    :pswitch_2b
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAndSetAlarmWarning(Z)V

    goto/16 :goto_0

    .line 509
    :pswitch_2c
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmWarning()V

    goto/16 :goto_0

    .line 506
    :pswitch_2d
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmDisarm()V

    goto/16 :goto_0

    .line 503
    :pswitch_2e
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendAlarmArm()V

    goto/16 :goto_0

    .line 500
    :pswitch_2f
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setLightBrightness(Z)V

    goto/16 :goto_0

    .line 497
    :pswitch_30
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setLightBrightness(Z)V

    goto/16 :goto_0

    .line 494
    :pswitch_31
    iget-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isNightLightBlinking:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setLightMode(Z)V

    goto/16 :goto_0

    .line 491
    :pswitch_32
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lightToggle()V

    goto/16 :goto_0

    .line 488
    :pswitch_33
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setCarouselDelay(Z)V

    goto/16 :goto_0

    .line 485
    :pswitch_34
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setCarouselDelay(Z)V

    goto/16 :goto_0

    .line 482
    :pswitch_35
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->cycleClockSequences()V

    goto/16 :goto_0

    .line 479
    :pswitch_36
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->cycleDistanceSequences()V

    goto/16 :goto_0

    .line 476
    :pswitch_37
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->cycleTimeSequences()V

    goto/16 :goto_0

    .line 473
    :pswitch_38
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->cycleSpeedSequences()V

    goto/16 :goto_0

    .line 470
    :pswitch_39
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->cycleMetricToDisplay()V

    goto/16 :goto_0

    .line 467
    :pswitch_3a
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->toggleCarouselMode()V

    goto/16 :goto_0

    .line 464
    :pswitch_3b
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showMetricCarousel()V

    goto/16 :goto_0

    .line 461
    :pswitch_3c
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->decrementOledStatusBarIndex()V

    goto/16 :goto_0

    .line 458
    :pswitch_3d
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->incrementOledStatusBarIndex()V

    goto/16 :goto_0

    .line 455
    :pswitch_3e
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->decrementOledAnimationTime()V

    goto/16 :goto_0

    .line 452
    :pswitch_3f
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->incrementOledAnimationTime()V

    goto/16 :goto_0

    .line 449
    :pswitch_40
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->cycleAnimationType()V

    goto/16 :goto_0

    .line 446
    :pswitch_41
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->decrementOledScreen()V

    goto/16 :goto_0

    .line 443
    :pswitch_42
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->incrementOledScreen()V

    goto/16 :goto_0

    .line 440
    :pswitch_43
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showPreviousOledScreen()V

    goto/16 :goto_0

    .line 437
    :pswitch_44
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showNextOledScreen()V

    goto/16 :goto_0

    .line 434
    :pswitch_45
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->decrementSecondaryOledScreen()V

    goto/16 :goto_0

    .line 431
    :pswitch_46
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->incrementSecondaryOledScreen()V

    goto/16 :goto_0

    .line 428
    :pswitch_47
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->stopOled()V

    goto/16 :goto_0

    .line 425
    :pswitch_48
    iget v1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledScreenNumber:I

    iget v2, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledSecondaryScreenNumber:I

    iget-object v3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationType:Lbike/smarthalo/sdk/models/OledAnimationType;

    iget v4, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->oledAnimationTime:I

    iget v5, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->statusBarIndex:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIndividualOledScreen(IILbike/smarthalo/sdk/models/OledAnimationType;II)V

    goto/16 :goto_0

    .line 422
    :pswitch_49
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showClock()V

    goto/16 :goto_0

    .line 419
    :pswitch_4a
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->playHorn()V

    goto/16 :goto_0

    .line 416
    :pswitch_4b
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->updateLedBrightness(Z)V

    goto/16 :goto_0

    .line 413
    :pswitch_4c
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->updateLedBrightness(Z)V

    goto/16 :goto_0

    .line 410
    :pswitch_4d
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDecrementedQuickTurn()V

    goto/16 :goto_0

    .line 407
    :pswitch_4e
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIncrementedQuickTurn()V

    goto/16 :goto_0

    .line 404
    :pswitch_4f
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDecrementedQuickTurnProgress()V

    goto/16 :goto_0

    .line 401
    :pswitch_50
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIncrementedQuickTurnProgress()V

    goto/16 :goto_0

    .line 398
    :pswitch_51
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDecrementedAngleTurn()V

    goto/16 :goto_0

    .line 395
    :pswitch_52
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIncrementedAngleTurn()V

    goto/16 :goto_0

    .line 392
    :pswitch_53
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDecrementedAngleTurnProgress()V

    goto/16 :goto_0

    .line 389
    :pswitch_54
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIncrementedAngleTurnProgress()V

    goto/16 :goto_0

    .line 386
    :pswitch_55
    iget-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isQuickTurn:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setIsQuickTurn(Z)V

    goto/16 :goto_0

    .line 383
    :pswitch_56
    iget-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isTurnDemo:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setIsTurnDemo(Z)V

    goto/16 :goto_0

    .line 380
    :pswitch_57
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->processAndShowTurn()V

    goto/16 :goto_0

    .line 377
    :pswitch_58
    iget-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isUturnBlinking:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showUturn(Z)V

    goto/16 :goto_0

    .line 374
    :pswitch_59
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showLoopedReroute()V

    goto/16 :goto_0

    .line 371
    :pswitch_5a
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDestinationDemo()V

    goto/16 :goto_0

    .line 368
    :pswitch_5b
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDecrementedDestination()V

    goto/16 :goto_0

    .line 365
    :pswitch_5c
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIncrementedDestination()V

    goto/16 :goto_0

    .line 362
    :pswitch_5d
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->destinationProgress:I

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDestinationStill(I)V

    goto/16 :goto_0

    .line 359
    :pswitch_5e
    iget-boolean p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->isRoundAboutBlinking:Z

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->setRoundAboutBlinking(Z)V

    goto/16 :goto_0

    .line 356
    :pswitch_5f
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->cycleRoundAboutMode()V

    goto/16 :goto_0

    :pswitch_60
    const/4 p1, 0x2

    .line 353
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showRoundabout(I)V

    goto/16 :goto_0

    .line 350
    :pswitch_61
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showRoundabout(I)V

    goto/16 :goto_0

    .line 347
    :pswitch_62
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->toggleFitnessPreTracking()V

    goto/16 :goto_0

    .line 344
    :pswitch_63
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDecrementedFitnessProgress()V

    goto/16 :goto_0

    .line 341
    :pswitch_64
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIncrementedFitnessProgress()V

    goto/16 :goto_0

    .line 338
    :pswitch_65
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->fitnessProgress:I

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showFitnessProgress(I)V

    goto/16 :goto_0

    .line 335
    :pswitch_66
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->toggleAndShowFitnessProgress()V

    goto/16 :goto_0

    .line 332
    :pswitch_67
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDecrementedSpeedometer()V

    goto/16 :goto_0

    .line 329
    :pswitch_68
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIncrementedSpeedometer()V

    goto/16 :goto_0

    .line 326
    :pswitch_69
    iget p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->speedometerPercentage:I

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showSpeedometer(I)V

    goto :goto_0

    .line 323
    :pswitch_6a
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showCall(Z)V

    goto :goto_0

    .line 320
    :pswitch_6b
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showCall(Z)V

    goto :goto_0

    .line 317
    :pswitch_6c
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showSms(Z)V

    goto :goto_0

    .line 314
    :pswitch_6d
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showSms(Z)V

    goto :goto_0

    .line 311
    :pswitch_6e
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showAssistant()V

    goto :goto_0

    .line 308
    :pswitch_6f
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showPointerStandby()V

    goto :goto_0

    .line 305
    :pswitch_70
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDecrementedAnglePointer()V

    goto :goto_0

    .line 302
    :pswitch_71
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIncrementedAnglePointer()V

    goto :goto_0

    .line 299
    :pswitch_72
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showDecrementedProgressPointer()V

    goto :goto_0

    .line 296
    :pswitch_73
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showIncrementedProgressPointer()V

    goto :goto_0

    .line 293
    :pswitch_74
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->showStillPointer()V

    goto :goto_0

    .line 290
    :pswitch_75
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->updateOledContrast(Z)V

    goto :goto_0

    .line 287
    :pswitch_76
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->updateOledContrast(Z)V

    goto :goto_0

    .line 284
    :pswitch_77
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->updateOledBrightness(Z)V

    goto :goto_0

    .line 281
    :pswitch_78
    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->updateOledBrightness(Z)V

    goto :goto_0

    .line 278
    :pswitch_79
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendLowBatteryAnimation()V

    goto :goto_0

    .line 275
    :pswitch_7a
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->displayBatteryLevel()V

    goto :goto_0

    .line 272
    :pswitch_7b
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->launchLoop()V

    goto :goto_0

    .line 269
    :pswitch_7c
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->turnOffLedAnimations()V

    goto :goto_0

    .line 266
    :pswitch_7d
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendIntroAndOled()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated()V
    .locals 1

    .line 197
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 198
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method

.method public onViewDestroyed()V
    .locals 1

    .line 213
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearLooperSubscription()V

    .line 214
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearOledLooperSubscription()V

    .line 215
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 216
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    return-void
.end method

.method public onViewPaused()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearStmDfuSubscription()V

    .line 208
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->clearBleMetricsSubscription()V

    return-void
.end method

.method public onViewResumed()V
    .locals 0

    return-void
.end method

.method public processSelectedStmDfuFile(Landroid/net/Uri;)V
    .locals 1

    .line 708
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lbike/smarthalo/app/helpers/SHFileHelper;->loadFileAsBytes(Landroid/net/Uri;Landroid/content/Context;)[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 710
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->onDfuError()V

    return-void

    .line 713
    :cond_0
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->initializeStmDfu([B)V

    return-void
.end method

.method public sendClockCommand(IIZI)V
    .locals 10

    .line 1970
    iget-object p3, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz p3, :cond_0

    .line 1971
    new-instance p3, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;

    sget-object v2, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->CLOCK_COLOURS:Lbike/smarthalo/sdk/models/SHColour;

    sget-object v4, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->ASSISTANT_COLOURS:Lbike/smarthalo/sdk/models/SHColour;

    const/16 v5, 0xfa0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p3

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v9}, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;-><init>(ILbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/models/SHColour;IZZZZ)V

    .line 1983
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    new-instance p2, Lbike/smarthalo/app/presenters/DebugMenuPresenter$4;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/DebugMenuPresenter$4;-><init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V

    invoke-virtual {p1, p3, p2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showClock(Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method
