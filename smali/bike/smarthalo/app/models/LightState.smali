.class public final enum Lbike/smarthalo/app/models/LightState;
.super Ljava/lang/Enum;
.source "LightState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/LightState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/LightState;

.field public static final enum Blinking:Lbike/smarthalo/app/models/LightState;

.field public static final enum Disconnected:Lbike/smarthalo/app/models/LightState;

.field public static final enum Normal:Lbike/smarthalo/app/models/LightState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/LightState;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/LightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/LightState;->Normal:Lbike/smarthalo/app/models/LightState;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/LightState;

    const-string v1, "Blinking"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/LightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/LightState;->Blinking:Lbike/smarthalo/app/models/LightState;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/LightState;

    const-string v1, "Disconnected"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/LightState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/LightState;->Disconnected:Lbike/smarthalo/app/models/LightState;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/LightState;

    sget-object v1, Lbike/smarthalo/app/models/LightState;->Normal:Lbike/smarthalo/app/models/LightState;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/LightState;->Blinking:Lbike/smarthalo/app/models/LightState;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/LightState;->Disconnected:Lbike/smarthalo/app/models/LightState;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/models/LightState;->$VALUES:[Lbike/smarthalo/app/models/LightState;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/LightState;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/LightState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/LightState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/LightState;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/LightState;->$VALUES:[Lbike/smarthalo/app/models/LightState;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/LightState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/LightState;

    return-object v0
.end method
