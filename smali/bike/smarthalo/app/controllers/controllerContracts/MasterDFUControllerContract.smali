.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/MasterDFUControllerContract;
.super Ljava/lang/Object;
.source "MasterDFUControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# virtual methods
.method public abstract finalizeDfu()V
.end method

.method public abstract getAndObserveDFUAvailability()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/dfu/DfuAvailability;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAndObserveGlobalDfuState()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/dfu/DfuState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGlobalDfuState()Lbike/smarthalo/app/models/dfu/DfuState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getLatestFirmware()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract performNextDfuStep()V
.end method
