.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;
.super Ljava/lang/Object;
.source "NavigationContract.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/BasePresenterContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract chooseOfflineMode(Z)V
.end method

.method public abstract getCurrentLocation()Landroid/location/Location;
.end method

.method public abstract getIsMetric()Z
.end method

.method public abstract getIsUserTester()Z
.end method

.method public abstract getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;
.end method

.method public abstract onViewReady()V
.end method

.method public abstract processSelectedGpxFile(Landroid/net/Uri;)V
.end method

.method public abstract requestItinerary(Lbike/smarthalo/app/models/SHLocation;)V
.end method

.method public abstract setRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
.end method

.method public abstract startNavigation()V
.end method

.method public abstract stopNavigation()V
.end method

.method public abstract subscribeToLocationUpdates()V
.end method
