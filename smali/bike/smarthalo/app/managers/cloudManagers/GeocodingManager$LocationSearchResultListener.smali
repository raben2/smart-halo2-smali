.class public interface abstract Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;
.super Ljava/lang/Object;
.source "GeocodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationSearchResultListener"
.end annotation


# virtual methods
.method public abstract onSearchResultsReady(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;)V"
        }
    .end annotation
.end method
