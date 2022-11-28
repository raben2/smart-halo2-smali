.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;
.super Ljava/lang/Object;
.source "NavigationContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract initialize(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
.end method

.method public abstract onDirectNavigation(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onFavouritesUpdated(Ljava/util/List;Lbike/smarthalo/app/models/SHLocation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;",
            "Lbike/smarthalo/app/models/SHLocation;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFindMarkerVisibilityChanged(Z)V
.end method

.method public abstract onFinish(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
.end method

.method public abstract onFirstLocationReady(Landroid/location/Location;)V
.end method

.method public abstract onNewLocation(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Z)V
.end method

.method public abstract onNewStep(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
.end method

.method public abstract onOfflineNavigation()V
.end method

.method public abstract onReroute(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
.end method

.method public abstract onResult()V
.end method

.method public abstract onStopped(Z)V
.end method

.method public abstract onUnitsChanged(Lbike/smarthalo/app/models/PresentationNavigationState;Z)V
.end method

.method public abstract recover(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Z)V
.end method
