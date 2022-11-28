.class public interface abstract Lbike/smarthalo/app/managers/contracts/LocationManagerContract;
.super Ljava/lang/Object;
.source "LocationManagerContract.java"


# virtual methods
.method public abstract disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V
.end method

.method public abstract getCurrentHeading()Ljava/lang/Integer;
.end method

.method public abstract getCurrentLocation()Landroid/location/Location;
.end method

.method public abstract getLastKnownLocation()Landroid/location/Location;
.end method

.method public abstract observeLocationUpdates()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V
.end method
