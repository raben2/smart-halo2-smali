.class public interface abstract Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;
.super Ljava/lang/Object;
.source "GeocodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationInformationListener"
.end annotation


# virtual methods
.method public abstract onLocationReady(Lbike/smarthalo/app/models/SHLocation;)V
    .param p1    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
