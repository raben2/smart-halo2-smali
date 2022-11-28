.class public enum Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;
.super Ljava/lang/Enum;
.source "ValhallaBicycleTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

.field public static final enum CITY:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

.field public static final enum CROSS:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

.field public static final enum MOUNTAIN:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

.field public static final enum ROAD:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes$1;

    const-string v1, "ROAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->ROAD:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes$2;

    const-string v1, "CITY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->CITY:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    .line 18
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes$3;

    const-string v1, "CROSS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->CROSS:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    .line 23
    new-instance v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes$4;

    const-string v1, "MOUNTAIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->MOUNTAIN:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->ROAD:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->CITY:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->CROSS:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->MOUNTAIN:Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    aput-object v1, v0, v5

    sput-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

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

.method synthetic constructor <init>(Ljava/lang/String;ILbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->$VALUES:[Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/Valhalla/ValhallaBicycleTypes;

    return-object v0
.end method
