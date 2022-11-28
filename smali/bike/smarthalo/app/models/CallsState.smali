.class public final enum Lbike/smarthalo/app/models/CallsState;
.super Ljava/lang/Enum;
.source "CallsState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/CallsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/CallsState;

.field public static final enum CallsEnabled:Lbike/smarthalo/app/models/CallsState;

.field public static final enum CallsOff:Lbike/smarthalo/app/models/CallsState;

.field public static final enum CallsOn:Lbike/smarthalo/app/models/CallsState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/CallsState;

    const-string v1, "CallsOn"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/CallsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/CallsState;->CallsOn:Lbike/smarthalo/app/models/CallsState;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/CallsState;

    const-string v1, "CallsEnabled"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/CallsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/CallsState;->CallsEnabled:Lbike/smarthalo/app/models/CallsState;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/CallsState;

    const-string v1, "CallsOff"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/CallsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/CallsState;->CallsOff:Lbike/smarthalo/app/models/CallsState;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/CallsState;

    sget-object v1, Lbike/smarthalo/app/models/CallsState;->CallsOn:Lbike/smarthalo/app/models/CallsState;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/CallsState;->CallsEnabled:Lbike/smarthalo/app/models/CallsState;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/CallsState;->CallsOff:Lbike/smarthalo/app/models/CallsState;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/models/CallsState;->$VALUES:[Lbike/smarthalo/app/models/CallsState;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/CallsState;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/CallsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/CallsState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/CallsState;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/CallsState;->$VALUES:[Lbike/smarthalo/app/models/CallsState;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/CallsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/CallsState;

    return-object v0
.end method
