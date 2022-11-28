.class public final enum Lbike/smarthalo/navigation/models/NavigationMode;
.super Ljava/lang/Enum;
.source "NavigationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/navigation/models/NavigationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/navigation/models/NavigationMode;

.field public static final enum AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

.field public static final enum AsTheCrowFliesMagnetometer:Lbike/smarthalo/navigation/models/NavigationMode;

.field public static final enum AsTheCrowTurns:Lbike/smarthalo/navigation/models/NavigationMode;

.field public static final enum NoNavigation:Lbike/smarthalo/navigation/models/NavigationMode;

.field public static final enum OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

.field public static final enum TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lbike/smarthalo/navigation/models/NavigationMode;

    const-string v1, "TurnByTurn"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/navigation/models/NavigationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    .line 9
    new-instance v0, Lbike/smarthalo/navigation/models/NavigationMode;

    const-string v1, "OfflineTurnByTurn"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/navigation/models/NavigationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    .line 10
    new-instance v0, Lbike/smarthalo/navigation/models/NavigationMode;

    const-string v1, "AsTheCrowFliesMagnetometer"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/navigation/models/NavigationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesMagnetometer:Lbike/smarthalo/navigation/models/NavigationMode;

    .line 11
    new-instance v0, Lbike/smarthalo/navigation/models/NavigationMode;

    const-string v1, "AsTheCrowFliesGPS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/navigation/models/NavigationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    .line 12
    new-instance v0, Lbike/smarthalo/navigation/models/NavigationMode;

    const-string v1, "AsTheCrowTurns"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lbike/smarthalo/navigation/models/NavigationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowTurns:Lbike/smarthalo/navigation/models/NavigationMode;

    .line 13
    new-instance v0, Lbike/smarthalo/navigation/models/NavigationMode;

    const-string v1, "NoNavigation"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lbike/smarthalo/navigation/models/NavigationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->NoNavigation:Lbike/smarthalo/navigation/models/NavigationMode;

    const/4 v0, 0x6

    .line 7
    new-array v0, v0, [Lbike/smarthalo/navigation/models/NavigationMode;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesMagnetometer:Lbike/smarthalo/navigation/models/NavigationMode;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowTurns:Lbike/smarthalo/navigation/models/NavigationMode;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->NoNavigation:Lbike/smarthalo/navigation/models/NavigationMode;

    aput-object v1, v0, v7

    sput-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->$VALUES:[Lbike/smarthalo/navigation/models/NavigationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lbike/smarthalo/navigation/models/NavigationMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/navigation/models/NavigationMode;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/navigation/models/NavigationMode;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/navigation/models/NavigationMode;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->$VALUES:[Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v0}, [Lbike/smarthalo/navigation/models/NavigationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/navigation/models/NavigationMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 22
    iget v0, p0, Lbike/smarthalo/navigation/models/NavigationMode;->value:I

    return v0
.end method
