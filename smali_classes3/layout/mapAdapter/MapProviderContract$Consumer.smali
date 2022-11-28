.class public interface abstract Llayout/mapAdapter/MapProviderContract$Consumer;
.super Ljava/lang/Object;
.source "MapProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/mapAdapter/MapProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Consumer"
.end annotation


# virtual methods
.method public abstract onMapClick(Lbike/smarthalo/app/models/SHLocation;)V
.end method

.method public abstract onMapReady(Llayout/mapAdapter/MapProviderContract$Provider;)V
.end method

.method public abstract onMapViewLongPress(Lbike/smarthalo/app/models/SHLocation;)V
.end method

.method public abstract onMarkerClicked(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V
.end method

.method public abstract onPointOfInterestClicked(Lbike/smarthalo/app/models/SHLocation;)V
.end method

.method public abstract onPolylineClick(Ljava/lang/String;)V
.end method
