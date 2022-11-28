.class public final synthetic Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$5oakvkY6ckhuGQQk9n1yw2QGFuU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/commands/SuccessCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/bluetooth/StmDfuController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$5oakvkY6ckhuGQQk9n1yw2QGFuU;->f$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$5oakvkY6ckhuGQQk9n1yw2QGFuU;->f$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    invoke-static {v0, p1}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->lambda$sendNextFirmwareWindow$2(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Z)V

    return-void
.end method
