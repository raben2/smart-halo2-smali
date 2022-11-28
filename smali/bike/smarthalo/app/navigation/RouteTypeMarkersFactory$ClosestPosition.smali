.class final enum Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;
.super Ljava/lang/Enum;
.source "RouteTypeMarkersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClosestPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

.field public static final enum Lower:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

.field public static final enum Middle:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

.field public static final enum Upper:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 221
    new-instance v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    const-string v1, "Lower"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Lower:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    .line 222
    new-instance v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    const-string v1, "Middle"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Middle:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    .line 223
    new-instance v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    const-string v1, "Upper"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Upper:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    const/4 v0, 0x3

    .line 220
    new-array v0, v0, [Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    sget-object v1, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Lower:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Middle:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->Upper:Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->$VALUES:[Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;
    .locals 1

    .line 220
    const-class v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;
    .locals 1

    .line 220
    sget-object v0, Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->$VALUES:[Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    invoke-virtual {v0}, [Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/navigation/RouteTypeMarkersFactory$ClosestPosition;

    return-object v0
.end method
