.class public final Lbike/smarthalo/app/designRefresh/map/MapPresenter;
.super Ljava/lang/Object;
.source "MapPresenter.kt"

# interfaces
.implements Llayout/mapAdapter/MapProviderContract$Consumer;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0004H\u0016J\u0012\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u001c\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lbike/smarthalo/app/designRefresh/map/MapPresenter;",
        "Llayout/mapAdapter/MapProviderContract$Consumer;",
        "()V",
        "mapProvider",
        "Llayout/mapAdapter/MapProviderContract$Provider;",
        "onMapClick",
        "",
        "location",
        "Lbike/smarthalo/app/models/SHLocation;",
        "onMapReady",
        "provider",
        "onMapViewLongPress",
        "onMarkerClicked",
        "markerType",
        "Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;",
        "onPointOfInterestClicked",
        "onPolylineClick",
        "polylineId",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0
    .param p1    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onMapReady(Llayout/mapAdapter/MapProviderContract$Provider;)V
    .locals 2
    .param p1    # Llayout/mapAdapter/MapProviderContract$Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/map/MapPresenter;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    .line 19
    new-instance p1, Landroid/location/Location;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-wide v0, 0x4046c3d744f5d356L    # 45.530007

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    const-wide v0, -0x3fad98d1958969a1L    # -73.612208

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapPresenter;->mapProvider:Llayout/mapAdapter/MapProviderContract$Provider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Llayout/mapAdapter/MapProviderContract$Provider;->centerOnLocation(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onMapViewLongPress(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0
    .param p1    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onMarkerClicked(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;)V
    .locals 0
    .param p1    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/models/PresentationModels/MapMarkerType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPointOfInterestClicked(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0
    .param p1    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPolylineClick(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
