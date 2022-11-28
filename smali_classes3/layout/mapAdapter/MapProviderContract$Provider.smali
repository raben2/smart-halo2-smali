.class public interface abstract Llayout/mapAdapter/MapProviderContract$Provider;
.super Ljava/lang/Object;
.source "MapProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/mapAdapter/MapProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# virtual methods
.method public abstract addAlternateRouteMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Z)V
.end method

.method public abstract addMarker(Lbike/smarthalo/app/models/SHLatLng;Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V
.end method

.method public abstract centerOnLocation(Landroid/location/Location;)V
.end method

.method public abstract drawPath(Lbike/smarthalo/app/models/SHMapPath;)Ljava/lang/String;
.end method

.method public abstract drawPaths(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHMapPath;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeMarkers([Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V
.end method

.method public abstract removePath(Ljava/lang/String;)V
.end method

.method public abstract removePaths(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract replacePoints(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBounds(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLatLng;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setUpFollowingCamera(ZLandroid/location/Location;)V
    .param p2    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showMarkerInfo(Ljava/lang/String;)V
.end method
