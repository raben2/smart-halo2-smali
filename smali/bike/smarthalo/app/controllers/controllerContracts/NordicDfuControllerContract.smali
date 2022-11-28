.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/NordicDfuControllerContract;
.super Ljava/lang/Object;
.source "NordicDfuControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract initializeDfu(Lbike/smarthalo/app/models/dfu/DfuState;)V
.end method

.method public abstract onDeviceConnectionEvent(Ljava/lang/Boolean;)V
.end method

.method public abstract startDfu()V
.end method
