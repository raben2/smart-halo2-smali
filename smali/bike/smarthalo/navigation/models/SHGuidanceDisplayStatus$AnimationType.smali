.class public final enum Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;
.super Ljava/lang/Enum;
.source "SHGuidanceDisplayStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

.field public static final enum ANGLE:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

.field public static final enum DESTINATION:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

.field public static final enum ENTERED_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

.field public static final enum ENTERING_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

.field public static final enum NONE:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

.field public static final enum POINTER:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

.field public static final enum U_TURN:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    const-string v1, "DESTINATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->DESTINATION:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    .line 14
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    const-string v1, "U_TURN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->U_TURN:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    .line 15
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    const-string v1, "ENTERING_ROUNDABOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ENTERING_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    .line 16
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    const-string v1, "ENTERED_ROUNDABOUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ENTERED_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    .line 17
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    const-string v1, "POINTER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->POINTER:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    .line 18
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    const-string v1, "ANGLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ANGLE:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    .line 19
    new-instance v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    const-string v1, "NONE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->NONE:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    const/4 v0, 0x7

    .line 12
    new-array v0, v0, [Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->DESTINATION:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->U_TURN:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ENTERING_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ENTERED_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->POINTER:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ANGLE:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->NONE:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    aput-object v1, v0, v8

    sput-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->$VALUES:[Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->value:I

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;)I
    .locals 0

    .line 12
    iget p0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;
    .locals 1

    .line 12
    const-class v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;
    .locals 1

    .line 12
    sget-object v0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->$VALUES:[Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-virtual {v0}, [Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 28
    iget v0, p0, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->value:I

    return v0
.end method
