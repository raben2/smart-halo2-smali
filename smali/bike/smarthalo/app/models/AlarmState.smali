.class public final enum Lbike/smarthalo/app/models/AlarmState;
.super Ljava/lang/Enum;
.source "AlarmState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/AlarmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/AlarmState;

.field public static final enum Armed:Lbike/smarthalo/app/models/AlarmState;

.field public static final enum ArmedTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

.field public static final enum Disarmed:Lbike/smarthalo/app/models/AlarmState;

.field public static final enum Invalid:Lbike/smarthalo/app/models/AlarmState;

.field public static final enum Off:Lbike/smarthalo/app/models/AlarmState;

.field public static final enum WillArm:Lbike/smarthalo/app/models/AlarmState;

.field public static final enum WillArmTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

.field public static final enum WillDisarm:Lbike/smarthalo/app/models/AlarmState;

.field public static final enum WillDisarmTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/AlarmState;

    const-string v1, "Armed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/AlarmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->Armed:Lbike/smarthalo/app/models/AlarmState;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/AlarmState;

    const-string v1, "Disarmed"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/AlarmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->Disarmed:Lbike/smarthalo/app/models/AlarmState;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/AlarmState;

    const-string v1, "Off"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/AlarmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->Off:Lbike/smarthalo/app/models/AlarmState;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/AlarmState;

    const-string v1, "WillArm"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/AlarmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->WillArm:Lbike/smarthalo/app/models/AlarmState;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/AlarmState;

    const-string v1, "WillDisarm"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/app/models/AlarmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->WillDisarm:Lbike/smarthalo/app/models/AlarmState;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/AlarmState;

    const-string v1, "ArmedTapcodeChanged"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lbike/smarthalo/app/models/AlarmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->ArmedTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

    .line 14
    new-instance v0, Lbike/smarthalo/app/models/AlarmState;

    const-string v1, "WillArmTapcodeChanged"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lbike/smarthalo/app/models/AlarmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->WillArmTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

    .line 15
    new-instance v0, Lbike/smarthalo/app/models/AlarmState;

    const-string v1, "WillDisarmTapcodeChanged"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lbike/smarthalo/app/models/AlarmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->WillDisarmTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

    .line 16
    new-instance v0, Lbike/smarthalo/app/models/AlarmState;

    const-string v1, "Invalid"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lbike/smarthalo/app/models/AlarmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->Invalid:Lbike/smarthalo/app/models/AlarmState;

    const/16 v0, 0x9

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/AlarmState;

    sget-object v1, Lbike/smarthalo/app/models/AlarmState;->Armed:Lbike/smarthalo/app/models/AlarmState;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/AlarmState;->Disarmed:Lbike/smarthalo/app/models/AlarmState;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/AlarmState;->Off:Lbike/smarthalo/app/models/AlarmState;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/AlarmState;->WillArm:Lbike/smarthalo/app/models/AlarmState;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/AlarmState;->WillDisarm:Lbike/smarthalo/app/models/AlarmState;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/app/models/AlarmState;->ArmedTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/app/models/AlarmState;->WillArmTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/app/models/AlarmState;->WillDisarmTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

    aput-object v1, v0, v9

    sget-object v1, Lbike/smarthalo/app/models/AlarmState;->Invalid:Lbike/smarthalo/app/models/AlarmState;

    aput-object v1, v0, v10

    sput-object v0, Lbike/smarthalo/app/models/AlarmState;->$VALUES:[Lbike/smarthalo/app/models/AlarmState;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/AlarmState;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/AlarmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/AlarmState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/AlarmState;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/AlarmState;->$VALUES:[Lbike/smarthalo/app/models/AlarmState;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/AlarmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/AlarmState;

    return-object v0
.end method
