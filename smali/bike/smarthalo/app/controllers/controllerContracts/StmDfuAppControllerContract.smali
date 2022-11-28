.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/StmDfuAppControllerContract;
.super Ljava/lang/Object;
.source "StmDfuAppControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# virtual methods
.method public abstract initializeDfu(Lbike/smarthalo/app/models/dfu/DfuState;)V
.end method

.method public abstract installTransferredFirmware()V
.end method

.method public abstract onDeviceConnectionEvent(Ljava/lang/Boolean;)V
.end method

.method public abstract startStmDfu()V
.end method
