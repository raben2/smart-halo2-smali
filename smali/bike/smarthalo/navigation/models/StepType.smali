.class public final enum Lbike/smarthalo/navigation/models/StepType;
.super Ljava/lang/Enum;
.source "StepType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/navigation/models/StepType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/navigation/models/StepType;

.field public static final enum DEPART:Lbike/smarthalo/navigation/models/StepType;

.field public static final enum DESTINATION:Lbike/smarthalo/navigation/models/StepType;

.field public static final enum ROUNDABOUT:Lbike/smarthalo/navigation/models/StepType;

.field public static final enum ROUNDABOUT_CLOCKWISE:Lbike/smarthalo/navigation/models/StepType;

.field public static final enum ROUNDABOUT_COUNTERCLOCKWISE:Lbike/smarthalo/navigation/models/StepType;

.field public static final enum STANDARD:Lbike/smarthalo/navigation/models/StepType;

.field public static final enum UTURN:Lbike/smarthalo/navigation/models/StepType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lbike/smarthalo/navigation/models/StepType;

    const-string v1, "DESTINATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/navigation/models/StepType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/StepType;->DESTINATION:Lbike/smarthalo/navigation/models/StepType;

    .line 5
    new-instance v0, Lbike/smarthalo/navigation/models/StepType;

    const-string v1, "UTURN"

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-direct {v0, v1, v3, v4}, Lbike/smarthalo/navigation/models/StepType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/StepType;->UTURN:Lbike/smarthalo/navigation/models/StepType;

    .line 6
    new-instance v0, Lbike/smarthalo/navigation/models/StepType;

    const-string v1, "DEPART"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lbike/smarthalo/navigation/models/StepType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/StepType;->DEPART:Lbike/smarthalo/navigation/models/StepType;

    .line 7
    new-instance v0, Lbike/smarthalo/navigation/models/StepType;

    const-string v1, "ROUNDABOUT_COUNTERCLOCKWISE"

    const/4 v5, 0x3

    const/16 v6, 0x12

    invoke-direct {v0, v1, v5, v6}, Lbike/smarthalo/navigation/models/StepType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/StepType;->ROUNDABOUT_COUNTERCLOCKWISE:Lbike/smarthalo/navigation/models/StepType;

    .line 8
    new-instance v0, Lbike/smarthalo/navigation/models/StepType;

    const-string v1, "ROUNDABOUT_CLOCKWISE"

    const/4 v6, 0x4

    const/16 v7, 0x11

    invoke-direct {v0, v1, v6, v7}, Lbike/smarthalo/navigation/models/StepType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/StepType;->ROUNDABOUT_CLOCKWISE:Lbike/smarthalo/navigation/models/StepType;

    .line 9
    new-instance v0, Lbike/smarthalo/navigation/models/StepType;

    const-string v1, "ROUNDABOUT"

    const/4 v7, 0x5

    const/16 v8, 0x10

    invoke-direct {v0, v1, v7, v8}, Lbike/smarthalo/navigation/models/StepType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/StepType;->ROUNDABOUT:Lbike/smarthalo/navigation/models/StepType;

    .line 10
    new-instance v0, Lbike/smarthalo/navigation/models/StepType;

    const-string v1, "STANDARD"

    const/4 v8, 0x6

    const/16 v9, 0xf

    invoke-direct {v0, v1, v8, v9}, Lbike/smarthalo/navigation/models/StepType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/StepType;->STANDARD:Lbike/smarthalo/navigation/models/StepType;

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [Lbike/smarthalo/navigation/models/StepType;

    sget-object v1, Lbike/smarthalo/navigation/models/StepType;->DESTINATION:Lbike/smarthalo/navigation/models/StepType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/navigation/models/StepType;->UTURN:Lbike/smarthalo/navigation/models/StepType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/navigation/models/StepType;->DEPART:Lbike/smarthalo/navigation/models/StepType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/navigation/models/StepType;->ROUNDABOUT_COUNTERCLOCKWISE:Lbike/smarthalo/navigation/models/StepType;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/navigation/models/StepType;->ROUNDABOUT_CLOCKWISE:Lbike/smarthalo/navigation/models/StepType;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/navigation/models/StepType;->ROUNDABOUT:Lbike/smarthalo/navigation/models/StepType;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/navigation/models/StepType;->STANDARD:Lbike/smarthalo/navigation/models/StepType;

    aput-object v1, v0, v8

    sput-object v0, Lbike/smarthalo/navigation/models/StepType;->$VALUES:[Lbike/smarthalo/navigation/models/StepType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lbike/smarthalo/navigation/models/StepType;->type:I

    return-void
.end method

.method public static getStepType(I)Lbike/smarthalo/navigation/models/StepType;
    .locals 5

    .line 23
    invoke-static {}, Lbike/smarthalo/navigation/models/StepType;->values()[Lbike/smarthalo/navigation/models/StepType;

    move-result-object v0

    .line 24
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 25
    invoke-virtual {v3}, Lbike/smarthalo/navigation/models/StepType;->getType()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    sget-object p0, Lbike/smarthalo/navigation/models/StepType;->STANDARD:Lbike/smarthalo/navigation/models/StepType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/navigation/models/StepType;
    .locals 1

    .line 3
    const-class v0, Lbike/smarthalo/navigation/models/StepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/navigation/models/StepType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/navigation/models/StepType;
    .locals 1

    .line 3
    sget-object v0, Lbike/smarthalo/navigation/models/StepType;->$VALUES:[Lbike/smarthalo/navigation/models/StepType;

    invoke-virtual {v0}, [Lbike/smarthalo/navigation/models/StepType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/navigation/models/StepType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 19
    iget v0, p0, Lbike/smarthalo/navigation/models/StepType;->type:I

    return v0
.end method
