.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;
.super Ljava/lang/Object;
.source "TrackingLifecycleContract.java"


# virtual methods
.method public abstract checkAndStopActiveRide()V
.end method

.method public abstract checkShouldStartTracking(Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;)Z
.end method

.method public abstract getShouldPreTrack()Z
.end method

.method public abstract observeTrackingState()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onDispose(Z)V
.end method

.method public abstract onStart()V
.end method

.method public abstract toggleShouldPreTrack()V
.end method

.method public abstract updatePreTrackingState(Landroid/location/Location;Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;)Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;
.end method
