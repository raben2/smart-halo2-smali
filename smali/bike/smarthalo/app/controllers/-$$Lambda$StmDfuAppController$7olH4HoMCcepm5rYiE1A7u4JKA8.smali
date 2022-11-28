.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$7olH4HoMCcepm5rYiE1A7u4JKA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/bluetooth/StmDfuController$DfuInstallCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/StmDfuAppController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$7olH4HoMCcepm5rYiE1A7u4JKA8;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    return-void
.end method


# virtual methods
.method public final onResult(Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$7olH4HoMCcepm5rYiE1A7u4JKA8;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/StmDfuAppController;->lambda$installTransferredFirmware$4(Lbike/smarthalo/app/controllers/StmDfuAppController;Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;)V

    return-void
.end method
