.class public final enum Lbike/smarthalo/navigation/models/OfflineModeStatus;
.super Ljava/lang/Enum;
.source "OfflineModeStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/navigation/models/OfflineModeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/navigation/models/OfflineModeStatus;

.field public static final enum OffPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

.field public static final enum OnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

.field public static final enum TurningOnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;

    const-string v1, "OnPath"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/navigation/models/OfflineModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    .line 9
    new-instance v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;

    const-string v1, "OffPath"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/navigation/models/OfflineModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OffPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    .line 10
    new-instance v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;

    const-string v1, "TurningOnPath"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/navigation/models/OfflineModeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;->TurningOnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lbike/smarthalo/navigation/models/OfflineModeStatus;

    sget-object v1, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OffPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/navigation/models/OfflineModeStatus;->TurningOnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;->$VALUES:[Lbike/smarthalo/navigation/models/OfflineModeStatus;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/navigation/models/OfflineModeStatus;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/navigation/models/OfflineModeStatus;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/navigation/models/OfflineModeStatus;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/navigation/models/OfflineModeStatus;->$VALUES:[Lbike/smarthalo/navigation/models/OfflineModeStatus;

    invoke-virtual {v0}, [Lbike/smarthalo/navigation/models/OfflineModeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/navigation/models/OfflineModeStatus;

    return-object v0
.end method
