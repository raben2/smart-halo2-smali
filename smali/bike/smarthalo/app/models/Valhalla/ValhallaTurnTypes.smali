.class public final enum Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;
.super Ljava/lang/Enum;
.source "ValhallaTurnTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kBecomes:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kContinue:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kDestination:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kDestinationLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kDestinationRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kExitLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kExitRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kFerryEnter:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kFerryExit:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kMerge:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kNone:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kPostTransitConnectionDestination:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kRampLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kRampRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kRampStraight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kRoundaboutEnter:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kRoundaboutExit:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kSharpLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kSharpRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kSlightLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kSlightRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kStart:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kStartLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kStartRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kStayLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kStayRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kStayStraight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kTransit:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kTransitConnectionDestination:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kTransitConnectionStart:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kTransitConnectionTransfer:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kTransitRemainOn:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kTransitTransfer:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kUturnLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

.field public static final enum kUturnRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kNone:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kStart"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStart:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kStartRight"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStartRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kStartLeft"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStartLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kDestination"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kDestination:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kDestinationRight"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kDestinationRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 14
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kDestinationLeft"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kDestinationLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 15
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kBecomes"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kBecomes:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 16
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kContinue"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kContinue:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 17
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kSlightRight"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kSlightRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 18
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kRight"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 19
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kSharpRight"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kSharpRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 20
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kUturnRight"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kUturnRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 21
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kUturnLeft"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kUturnLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 22
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kSharpLeft"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kSharpLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 23
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kLeft"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 24
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kSlightLeft"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kSlightLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 25
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kRampStraight"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRampStraight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 26
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kRampRight"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRampRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 27
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kRampLeft"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRampLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 28
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kExitRight"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kExitRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 29
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kExitLeft"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kExitLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 30
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kStayStraight"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStayStraight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 31
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kStayRight"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStayRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 32
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kStayLeft"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStayLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 33
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kMerge"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kMerge:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 34
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kRoundaboutEnter"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRoundaboutEnter:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 35
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kRoundaboutExit"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRoundaboutExit:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 36
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kFerryEnter"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kFerryEnter:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 37
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kFerryExit"

    const/16 v14, 0x1d

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kFerryExit:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 38
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kTransit"

    const/16 v14, 0x1e

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransit:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 39
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kTransitTransfer"

    const/16 v14, 0x1f

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitTransfer:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 40
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kTransitRemainOn"

    const/16 v14, 0x20

    const/16 v15, 0x20

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitRemainOn:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 41
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kTransitConnectionStart"

    const/16 v14, 0x21

    const/16 v15, 0x21

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitConnectionStart:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 42
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kTransitConnectionTransfer"

    const/16 v14, 0x22

    const/16 v15, 0x22

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitConnectionTransfer:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 43
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kTransitConnectionDestination"

    const/16 v14, 0x23

    const/16 v15, 0x23

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitConnectionDestination:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    .line 44
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const-string v1, "kPostTransitConnectionDestination"

    const/16 v14, 0x24

    const/16 v15, 0x24

    invoke-direct {v0, v1, v14, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kPostTransitConnectionDestination:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v0, 0x25

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kNone:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStart:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStartRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStartLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kDestination:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kDestinationRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kDestinationLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kBecomes:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v9

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kContinue:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v10

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kSlightRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v11

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v12

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kSharpRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    aput-object v1, v0, v13

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kUturnRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kUturnLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kSharpLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kSlightLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRampStraight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRampRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRampLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kExitRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kExitLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStayStraight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStayRight:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kStayLeft:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kMerge:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRoundaboutEnter:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kRoundaboutExit:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kFerryEnter:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kFerryExit:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransit:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitTransfer:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitRemainOn:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitConnectionStart:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitConnectionTransfer:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kTransitConnectionDestination:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->kPostTransitConnectionDestination:Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 53
    iget v0, p0, Lbike/smarthalo/app/models/Valhalla/ValhallaTurnTypes;->type:I

    return v0
.end method
