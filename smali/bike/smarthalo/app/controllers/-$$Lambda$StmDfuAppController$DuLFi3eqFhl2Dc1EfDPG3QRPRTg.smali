.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$DuLFi3eqFhl2Dc1EfDPG3QRPRTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/StmDfuAppController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$DuLFi3eqFhl2Dc1EfDPG3QRPRTg;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    return-void
.end method


# virtual methods
.method public final onResult(ZLbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$DuLFi3eqFhl2Dc1EfDPG3QRPRTg;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    invoke-static {v0, p1, p2}, Lbike/smarthalo/app/controllers/StmDfuAppController;->lambda$null$0(Lbike/smarthalo/app/controllers/StmDfuAppController;ZLbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;)V

    return-void
.end method
