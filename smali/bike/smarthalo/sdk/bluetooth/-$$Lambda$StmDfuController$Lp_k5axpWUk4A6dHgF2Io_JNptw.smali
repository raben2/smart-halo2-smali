.class public final synthetic Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$Lp_k5axpWUk4A6dHgF2Io_JNptw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/commands/SuccessCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

.field private final synthetic f$1:Lbike/smarthalo/sdk/commands/SuccessCallback;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$Lp_k5axpWUk4A6dHgF2Io_JNptw;->f$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    iput-object p2, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$Lp_k5axpWUk4A6dHgF2Io_JNptw;->f$1:Lbike/smarthalo/sdk/commands/SuccessCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$Lp_k5axpWUk4A6dHgF2Io_JNptw;->f$0:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$StmDfuController$Lp_k5axpWUk4A6dHgF2Io_JNptw;->f$1:Lbike/smarthalo/sdk/commands/SuccessCallback;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->lambda$forceInstallGoldenFirmware$3(Lbike/smarthalo/sdk/bluetooth/StmDfuController;Lbike/smarthalo/sdk/commands/SuccessCallback;Z)V

    return-void
.end method
