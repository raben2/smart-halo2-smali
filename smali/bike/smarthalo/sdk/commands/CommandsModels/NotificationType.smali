.class public final enum Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum Call:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum Clock:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum Error:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum GoToHome:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum GoToWork:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum Horn:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum NavModeAsTheCrownFlies:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum NavModeTurnByTurn:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum StopNav:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum Text:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field public static final enum Weather:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 4
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "Text"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Text:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 5
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "Call"

    invoke-direct {v0, v1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Call:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 6
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "Weather"

    const/4 v4, 0x2

    const/16 v5, 0x20

    invoke-direct {v0, v1, v4, v5}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Weather:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 7
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "Horn"

    const/4 v5, 0x3

    const/16 v6, 0x40

    invoke-direct {v0, v1, v5, v6}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Horn:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 8
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "Clock"

    const/4 v6, 0x4

    const/16 v7, 0x41

    invoke-direct {v0, v1, v6, v7}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Clock:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 9
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "GoToHome"

    const/4 v7, 0x5

    const/16 v8, 0x42

    invoke-direct {v0, v1, v7, v8}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->GoToHome:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "GoToWork"

    const/4 v8, 0x6

    const/16 v9, 0x43

    invoke-direct {v0, v1, v8, v9}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->GoToWork:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 11
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "StopNav"

    const/4 v9, 0x7

    const/16 v10, 0x44

    invoke-direct {v0, v1, v9, v10}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->StopNav:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 12
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "Error"

    const/16 v10, 0x8

    const/16 v11, 0x45

    invoke-direct {v0, v1, v10, v11}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Error:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 13
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "NavModeAsTheCrownFlies"

    const/16 v11, 0x9

    const/16 v12, 0x46

    invoke-direct {v0, v1, v11, v12}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->NavModeAsTheCrownFlies:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 14
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const-string v1, "NavModeTurnByTurn"

    const/16 v12, 0xa

    const/16 v13, 0x47

    invoke-direct {v0, v1, v12, v13}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->NavModeTurnByTurn:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    const/16 v0, 0xb

    .line 3
    new-array v0, v0, [Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Text:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Call:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Weather:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Horn:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Clock:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->GoToHome:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->GoToWork:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->StopNav:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v9

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Error:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v10

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->NavModeAsTheCrownFlies:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v11

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->NavModeTurnByTurn:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    aput-object v1, v0, v12

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->$VALUES:[Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

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
    iput p3, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;
    .locals 1

    .line 3
    const-class v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;
    .locals 1

    .line 3
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->$VALUES:[Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->value:I

    return v0
.end method
