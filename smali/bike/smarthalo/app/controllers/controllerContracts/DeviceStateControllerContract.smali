.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
.super Ljava/lang/Object;
.source "DeviceStateControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# virtual methods
.method public abstract forgetDevice(Lbike/smarthalo/sdk/CmdCallback;)V
.end method

.method public abstract getAndObserveBootloaderInfo()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/BootloaderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAndObserveDeviceConnection()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAndObserveDeviceState()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/DeviceState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAndObserveSmartHaloMovement()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBootloaderInfo()Lbike/smarthalo/app/models/BootloaderInfo;
.end method

.method public abstract getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;
.end method

.method public abstract getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDeviceState()Lbike/smarthalo/app/models/DeviceState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getIsConnected()Z
.end method

.method public abstract observeFirstMovementOnConnection()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refreshDeviceState()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/DeviceState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestBootloader()V
.end method

.method public abstract updateDeviceName()V
.end method
