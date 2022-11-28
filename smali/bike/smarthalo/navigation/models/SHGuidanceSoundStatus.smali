.class public final enum Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;
.super Ljava/lang/Enum;
.source "SHGuidanceSoundStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

.field public static final enum DESTINATION:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

.field public static final enum NONE:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

.field public static final enum PROGRESS:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

.field public static final enum RETURN_TO_PATH:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

.field public static final enum TURN_NOW:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    const-string v1, "RETURN_TO_PATH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->RETURN_TO_PATH:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    .line 9
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    const-string v1, "PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->PROGRESS:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    .line 10
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    const-string v1, "TURN_NOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->TURN_NOW:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    .line 11
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    const-string v1, "DESTINATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->DESTINATION:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    .line 12
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    const-string v1, "NONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->NONE:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->RETURN_TO_PATH:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->PROGRESS:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->TURN_NOW:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->DESTINATION:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->NONE:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    aput-object v1, v0, v6

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->$VALUES:[Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->$VALUES:[Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    invoke-virtual {v0}, [Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->value:I

    return v0
.end method
