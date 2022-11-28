.class public final enum Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;
.super Ljava/lang/Enum;
.source "TurnByTurnIntroMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

.field public static final enum GreenCircle:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

.field public static final enum ReverseDestination:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

.field public static final enum Samples:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

.field public static final enum TriplePulse:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    const-string v1, "GreenCircle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->GreenCircle:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    .line 9
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    const-string v1, "ReverseDestination"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->ReverseDestination:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    const-string v1, "TriplePulse"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->TriplePulse:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    .line 11
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    const-string v1, "Samples"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->Samples:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->GreenCircle:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->ReverseDestination:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->TriplePulse:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->Samples:Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    aput-object v1, v0, v5

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->$VALUES:[Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->$VALUES:[Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    iget v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->value:I

    return v0
.end method
