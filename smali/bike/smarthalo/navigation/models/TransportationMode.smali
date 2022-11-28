.class public final enum Lbike/smarthalo/navigation/models/TransportationMode;
.super Ljava/lang/Enum;
.source "TransportationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/navigation/models/TransportationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/navigation/models/TransportationMode;

.field public static final enum CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

.field public static final enum CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lbike/smarthalo/navigation/models/TransportationMode;

    const-string v1, "CYCLING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/navigation/models/TransportationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/TransportationMode;->CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;

    .line 5
    new-instance v0, Lbike/smarthalo/navigation/models/TransportationMode;

    const-string v1, "CAUTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/navigation/models/TransportationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lbike/smarthalo/navigation/models/TransportationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/TransportationMode;->CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    aput-object v1, v0, v3

    sput-object v0, Lbike/smarthalo/navigation/models/TransportationMode;->$VALUES:[Lbike/smarthalo/navigation/models/TransportationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lbike/smarthalo/navigation/models/TransportationMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/navigation/models/TransportationMode;
    .locals 1

    .line 3
    const-class v0, Lbike/smarthalo/navigation/models/TransportationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/navigation/models/TransportationMode;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/navigation/models/TransportationMode;
    .locals 1

    .line 3
    sget-object v0, Lbike/smarthalo/navigation/models/TransportationMode;->$VALUES:[Lbike/smarthalo/navigation/models/TransportationMode;

    invoke-virtual {v0}, [Lbike/smarthalo/navigation/models/TransportationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/navigation/models/TransportationMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 14
    iget v0, p0, Lbike/smarthalo/navigation/models/TransportationMode;->value:I

    return v0
.end method
