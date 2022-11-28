.class public final enum Lbike/smarthalo/app/models/DeviceConnectionType;
.super Ljava/lang/Enum;
.source "DeviceConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/DeviceConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/DeviceConnectionType;

.field public static final enum FORGET:Lbike/smarthalo/app/models/DeviceConnectionType;

.field public static final enum PAIR:Lbike/smarthalo/app/models/DeviceConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/DeviceConnectionType;

    const-string v1, "PAIR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/DeviceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/DeviceConnectionType;->PAIR:Lbike/smarthalo/app/models/DeviceConnectionType;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/DeviceConnectionType;

    const-string v1, "FORGET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/DeviceConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/DeviceConnectionType;->FORGET:Lbike/smarthalo/app/models/DeviceConnectionType;

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/DeviceConnectionType;

    sget-object v1, Lbike/smarthalo/app/models/DeviceConnectionType;->PAIR:Lbike/smarthalo/app/models/DeviceConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/DeviceConnectionType;->FORGET:Lbike/smarthalo/app/models/DeviceConnectionType;

    aput-object v1, v0, v3

    sput-object v0, Lbike/smarthalo/app/models/DeviceConnectionType;->$VALUES:[Lbike/smarthalo/app/models/DeviceConnectionType;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/DeviceConnectionType;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/DeviceConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/DeviceConnectionType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/DeviceConnectionType;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/DeviceConnectionType;->$VALUES:[Lbike/smarthalo/app/models/DeviceConnectionType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/DeviceConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/DeviceConnectionType;

    return-object v0
.end method
