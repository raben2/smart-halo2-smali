.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;
.super Ljava/lang/Object;
.source "BikeLocationControllerContract.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# virtual methods
.method public abstract getAndObserveHasBikeLocation()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
