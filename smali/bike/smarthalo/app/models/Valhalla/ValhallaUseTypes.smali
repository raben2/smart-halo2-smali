.class public final enum Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;
.super Ljava/lang/Enum;
.source "ValhallaUseTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Alley:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Bridleway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Bus:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Culdesac:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Cycleway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum DriveThru:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Driveway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum EgressConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum EmergencyAccess:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Ferry:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Footway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum MountainBike:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Other:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum ParkingAisle:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Path:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Pedestrian:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum PlatformConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Rail:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum RailFerry:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Ramp:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Road:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Sidewalk:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Steps:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum Track:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum TransitConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public static final enum TurnChannel:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Road"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Road:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Ramp"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Ramp:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "TurnChannel"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->TurnChannel:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Track"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Track:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Driveway"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Driveway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Alley"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Alley:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 14
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "ParkingAisle"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->ParkingAisle:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 15
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "EmergencyAccess"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->EmergencyAccess:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 16
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "DriveThru"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->DriveThru:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 17
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Culdesac"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Culdesac:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 18
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Cycleway"

    const/16 v12, 0xa

    const/16 v13, 0x14

    invoke-direct {v0, v1, v12, v13}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Cycleway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 19
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "MountainBike"

    const/16 v14, 0x15

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v14}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->MountainBike:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 20
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Sidewalk"

    const/16 v15, 0x18

    const/16 v12, 0xc

    invoke-direct {v0, v1, v12, v15}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Sidewalk:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 21
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Footway"

    const/16 v12, 0x19

    const/16 v11, 0xd

    invoke-direct {v0, v1, v11, v12}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Footway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 22
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Steps"

    const/16 v11, 0xe

    const/16 v10, 0x1a

    invoke-direct {v0, v1, v11, v10}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Steps:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 23
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Path"

    const/16 v10, 0xf

    const/16 v11, 0x1b

    invoke-direct {v0, v1, v10, v11}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Path:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 24
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Pedestrian"

    const/16 v10, 0x10

    const/16 v11, 0x1c

    invoke-direct {v0, v1, v10, v11}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Pedestrian:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 25
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Bridleway"

    const/16 v10, 0x11

    const/16 v11, 0x1d

    invoke-direct {v0, v1, v10, v11}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Bridleway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 26
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Other"

    const/16 v10, 0x12

    const/16 v11, 0x28

    invoke-direct {v0, v1, v10, v11}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Other:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 27
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Ferry"

    const/16 v10, 0x13

    const/16 v11, 0x29

    invoke-direct {v0, v1, v10, v11}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Ferry:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 28
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "RailFerry"

    const/16 v10, 0x2a

    invoke-direct {v0, v1, v13, v10}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->RailFerry:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 29
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Rail"

    const/16 v10, 0x32

    invoke-direct {v0, v1, v14, v10}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Rail:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 30
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "Bus"

    const/16 v10, 0x16

    const/16 v11, 0x33

    invoke-direct {v0, v1, v10, v11}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Bus:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 31
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "EgressConnection"

    const/16 v10, 0x17

    const/16 v11, 0x34

    invoke-direct {v0, v1, v10, v11}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->EgressConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 32
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "PlatformConnection"

    const/16 v10, 0x35

    invoke-direct {v0, v1, v15, v10}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->PlatformConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    .line 33
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const-string v1, "TransitConnection"

    const/16 v10, 0x36

    invoke-direct {v0, v1, v12, v10}, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->TransitConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v0, 0x1a

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Road:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Ramp:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->TurnChannel:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Track:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Driveway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Alley:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->ParkingAisle:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->EmergencyAccess:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v9

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->DriveThru:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Culdesac:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Cycleway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->MountainBike:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Sidewalk:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Footway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Steps:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Path:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Pedestrian:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Bridleway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Other:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Ferry:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->RailFerry:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v13

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Rail:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v14

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Bus:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->EgressConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->PlatformConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v15

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->TransitConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    aput-object v1, v0, v12

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->type:I

    return-void
.end method

.method public static getUseType(F)Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;
    .locals 0

    float-to-int p0, p0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    .line 71
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Road:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 70
    :pswitch_0
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->TransitConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 69
    :pswitch_1
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->PlatformConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 68
    :pswitch_2
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->EgressConnection:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 67
    :pswitch_3
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Bus:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 66
    :pswitch_4
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Rail:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 65
    :pswitch_5
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->RailFerry:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 64
    :pswitch_6
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Ferry:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 63
    :pswitch_7
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Other:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 62
    :pswitch_8
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Bridleway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 61
    :pswitch_9
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Pedestrian:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 60
    :pswitch_a
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Path:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 59
    :pswitch_b
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Steps:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 58
    :pswitch_c
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Footway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 57
    :pswitch_d
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Sidewalk:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 56
    :pswitch_e
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->MountainBike:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 55
    :pswitch_f
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Cycleway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 54
    :pswitch_10
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Culdesac:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 53
    :pswitch_11
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->DriveThru:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 52
    :pswitch_12
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->EmergencyAccess:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 51
    :pswitch_13
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->ParkingAisle:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 50
    :pswitch_14
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Alley:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 49
    :pswitch_15
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Driveway:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 48
    :pswitch_16
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Track:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 47
    :pswitch_17
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->TurnChannel:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 46
    :pswitch_18
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Ramp:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    .line 45
    :pswitch_19
    sget-object p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->Road:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x32
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 40
    iget v0, p0, Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;->type:I

    return v0
.end method
