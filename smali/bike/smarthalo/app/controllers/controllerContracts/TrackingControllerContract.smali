.class public interface abstract Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;
.super Ljava/lang/Object;
.source "TrackingControllerContract.java"


# virtual methods
.method public abstract getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;
.end method

.method public abstract getCurrentRide()Lbike/smarthalo/app/models/SHRide;
.end method

.method public abstract onDispose(Z)V
.end method

.method public abstract startSession(Ljava/util/ArrayList;JFI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;JFI)V"
        }
    .end annotation
.end method

.method public abstract stopSession()V
.end method
