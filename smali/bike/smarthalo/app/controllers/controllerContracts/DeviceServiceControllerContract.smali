.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
.super Ljava/lang/Object;
.source "DeviceServiceControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# virtual methods
.method public abstract getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract observeDeviceService()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/sdk/SHDeviceServiceBinder;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V
.end method
