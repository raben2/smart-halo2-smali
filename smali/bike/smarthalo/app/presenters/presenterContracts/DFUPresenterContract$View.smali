.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract$View;
.super Ljava/lang/Object;
.source "DFUPresenterContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/DFUPresenterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract askCancelConfirmation()V
.end method

.method public abstract onCloseDFU()V
.end method

.method public abstract onDFUCancelled()V
.end method

.method public abstract onDFUCancelling()V
.end method

.method public abstract onDFUCompleted(Z)V
.end method

.method public abstract onDFUError(ZZ)V
.end method

.method public abstract onDFULowBatteryError(Z)V
.end method

.method public abstract onDFUProgressChanged(I)V
.end method

.method public abstract onDFUReady(Lbike/smarthalo/app/models/dfu/DfuAvailability;Ljava/lang/String;)V
.end method

.method public abstract onDFUStarted(Lbike/smarthalo/app/models/dfu/DfuAvailability;)V
.end method

.method public abstract onDeviceConnected()V
.end method

.method public abstract onDeviceDisconnecting()V
.end method

.method public abstract onFirmwareDownloaded()V
.end method

.method public abstract onFirmwareDownloading()V
.end method
