.class public final enum Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;
.super Ljava/lang/Enum;
.source "DebugCommandFamily.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Alarm:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum BleMetrics:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Brightness:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Kickstarter:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Light:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Navigation:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Oled:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum OledCarouselConfig:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Other:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Pointer:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Progress:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Roundabout:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Speedometer:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

.field public static final enum Tapcode:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Pointer"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Pointer:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Speedometer"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Speedometer:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Roundabout"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Roundabout:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Progress"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Progress:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Navigation"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Navigation:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Brightness"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Brightness:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 14
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Other"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Other:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 15
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Oled"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Oled:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 16
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Alarm"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Alarm:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 17
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Tapcode"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Tapcode:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 18
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Light"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Light:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 19
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "OledCarouselConfig"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->OledCarouselConfig:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 20
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "Kickstarter"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Kickstarter:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 21
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const-string v1, "BleMetrics"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->BleMetrics:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    const/16 v0, 0xe

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Pointer:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Speedometer:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Roundabout:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Progress:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Navigation:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Brightness:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Other:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Oled:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v9

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Alarm:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v10

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Tapcode:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v11

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Light:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->OledCarouselConfig:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v13

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Kickstarter:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v14

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->BleMetrics:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    aput-object v1, v0, v15

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getDebugCommandFamily(Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;)Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;
    .locals 2

    .line 24
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Other:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    .line 25
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerReset:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_16

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerAngleDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_16

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerAngleIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_16

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_16

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_16

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PointerStandby:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_0

    goto/16 :goto_a

    .line 32
    :cond_0
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SpeedometerIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_15

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SpeedometerDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_15

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Speedometer:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_1

    goto/16 :goto_9

    .line 36
    :cond_1
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Progress:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_14

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_14

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_14

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->ToggleFitnessMode:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_2

    goto/16 :goto_8

    .line 41
    :cond_2
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Roundabout1:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_13

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Roundabout2:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_13

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->RoundaboutMode:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_13

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->RoundAboutBlinking:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_3

    goto/16 :goto_7

    .line 46
    :cond_3
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Destination:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->DestinationIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->DestinationDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->DestinationStill:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->UTurn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Turn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->Reroute:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleOrQuick:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->StillOrDemo:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnAngleIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnAngleDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AngleTurnProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnAngleIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnAngleDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnProgressIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_12

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->QuickTurnProgressDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_4

    goto/16 :goto_6

    .line 64
    :cond_4
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BrightnessIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_11

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->BrightnessDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_11

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledBrightnessIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_11

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledBrightnessDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_11

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledContrastIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_11

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledContrastDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_5

    goto/16 :goto_5

    .line 71
    :cond_5
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledShow:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_10

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledOff:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_10

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledScreenIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_10

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledScreenDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_10

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledAnimationType:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_10

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledStatusBarIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_10

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledStatusBarDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_10

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledAnimationTimeIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_10

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledAnimationTimeDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_6

    goto/16 :goto_4

    .line 81
    :cond_6
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightToggle:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_f

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightModeToggle:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_f

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PressTourLightCycle:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_f

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightBrightnessIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_f

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->LightBrightnessDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_7

    goto/16 :goto_3

    .line 87
    :cond_7
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselMode:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_e

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselDistanceSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_e

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselSpeedSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_e

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselTimeSequence:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_e

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselMetric:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_e

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselTimingDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_e

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselTimingIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_8

    goto/16 :goto_2

    .line 95
    :cond_8
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmArm:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_d

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmDisarm:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_d

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmWarning:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_d

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmWarningIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_d

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmTrigger:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_d

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmDemo:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_d

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmOff:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_d

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->AlarmWarningDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_9

    goto/16 :goto_1

    .line 104
    :cond_9
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeAddLong:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_c

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeClear:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_c

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeAddShort:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_c

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->TapcodeRemoveLast:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_a

    goto/16 :goto_0

    .line 109
    :cond_a
    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceIntro:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceBeautyShot2:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAlarmWarning:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAlarmTrigger:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceGoalProgress:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceNightLight:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceElmStreet:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceElmStreetIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceElmStreetDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAbbeyRoad:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAbbeyRoadIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceAbbeyRoadDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceUTurn:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceCompass:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceDestination:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceMetrics:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceWeather:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceCall:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->KickstarterOffsetIncrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->KickstarterOffsetDecrement:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceIftt:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceBattery:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceGoodbye:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceGoNavigation:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->SequenceFunnyDestination:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PressTourFeatureLoop:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PressTourAlarm:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->PressTourMetricsCarousel:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-eq p0, v1, :cond_b

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;->OledCarouselShow:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    if-ne p0, v1, :cond_17

    .line 138
    :cond_b
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Kickstarter:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 108
    :cond_c
    :goto_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Tapcode:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 103
    :cond_d
    :goto_1
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Alarm:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 94
    :cond_e
    :goto_2
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->OledCarouselConfig:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 86
    :cond_f
    :goto_3
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Light:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 80
    :cond_10
    :goto_4
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Oled:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 70
    :cond_11
    :goto_5
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Brightness:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 63
    :cond_12
    :goto_6
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Navigation:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 45
    :cond_13
    :goto_7
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Roundabout:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 40
    :cond_14
    :goto_8
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Progress:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 35
    :cond_15
    :goto_9
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Speedometer:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    goto :goto_b

    .line 31
    :cond_16
    :goto_a
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->Pointer:Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    :cond_17
    :goto_b
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/PresentationModels/DebugCommandFamily;

    return-object v0
.end method
