.class public final enum Lbike/smarthalo/sdk/models/DeviceConnectionState;
.super Ljava/lang/Enum;
.source "DeviceConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/models/DeviceConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/models/DeviceConnectionState;

.field public static final enum Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

.field public static final enum Connected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

.field public static final enum Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;

    const-string v1, "Disconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/models/DeviceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    .line 9
    new-instance v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;

    const-string v1, "Connected"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/models/DeviceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Connected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;

    const-string v1, "Authenticated"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/sdk/models/DeviceConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lbike/smarthalo/sdk/models/DeviceConnectionState;

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Connected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->$VALUES:[Lbike/smarthalo/sdk/models/DeviceConnectionState;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/models/DeviceConnectionState;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/models/DeviceConnectionState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/models/DeviceConnectionState;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->$VALUES:[Lbike/smarthalo/sdk/models/DeviceConnectionState;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/models/DeviceConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/models/DeviceConnectionState;

    return-object v0
.end method
