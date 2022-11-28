.class public final enum Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;
.super Ljava/lang/Enum;
.source "StmDfuState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

.field public static final enum Completed:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

.field public static final enum NotStarted:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

.field public static final enum Ongoing:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    const-string v1, "NotStarted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->NotStarted:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    .line 9
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    const-string v1, "Ongoing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Ongoing:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    const-string v1, "Completed"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Completed:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->NotStarted:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Ongoing:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->Completed:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->$VALUES:[Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->$VALUES:[Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuState;

    return-object v0
.end method
