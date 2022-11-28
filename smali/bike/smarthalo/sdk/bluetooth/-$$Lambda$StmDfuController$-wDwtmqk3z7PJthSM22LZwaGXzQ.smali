.class public final synthetic Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:[B

.field private final synthetic f$3:Lbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Ljava/util/List;[BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;->f$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    iput-object p2, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;->f$1:Ljava/util/List;

    iput-object p3, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;->f$2:[B

    iput-object p4, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;->f$3:Lbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Lbike/smarthalo/sdk/commands/CommandResponse;I)V
    .locals 6

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;->f$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;->f$1:Ljava/util/List;

    iget-object v2, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;->f$2:[B

    iget-object v3, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$-wDwtmqk3z7PJthSM22LZwaGXzQ;->f$3:Lbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->lambda$initializeStmDfu$0(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Ljava/util/List;[BLbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;Lbike/smarthalo/sdk/commands/CommandResponse;I)V

    return-void
.end method
