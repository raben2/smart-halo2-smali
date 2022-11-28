.class public Lbike/smarthalo/app/models/SHLatLng;
.super Ljava/lang/Object;
.source "SHLatLng.java"


# instance fields
.field public altitude:Ljava/lang/Double;

.field public cycleLane:Lbike/smarthalo/app/models/Valhalla/ValhallaCycleLaneTypes;

.field public grade:F

.field public isCurrentLocation:Z

.field public latitude:D

.field public longitude:D

.field public suitability:Ljava/lang/Integer;

.field public surface:Lbike/smarthalo/app/models/Valhalla/ValhallaSurfaceTypes;

.field public use:Lbike/smarthalo/app/models/Valhalla/ValhallaUseTypes;

.field public wayCategory:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lbike/smarthalo/app/models/SHLatLng;->altitude:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lbike/smarthalo/app/models/SHLatLng;->isCurrentLocation:Z

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lbike/smarthalo/app/models/SHLatLng;->altitude:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lbike/smarthalo/app/models/SHLatLng;->isCurrentLocation:Z

    .line 35
    iput-wide p1, p0, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    .line 36
    iput-wide p3, p0, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    return-void
.end method

.method public constructor <init>(DDLjava/lang/Double;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lbike/smarthalo/app/models/SHLatLng;->altitude:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lbike/smarthalo/app/models/SHLatLng;->isCurrentLocation:Z

    .line 29
    iput-wide p1, p0, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    .line 30
    iput-wide p3, p0, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    .line 31
    iput-object p5, p0, Lbike/smarthalo/app/models/SHLatLng;->altitude:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lbike/smarthalo/app/models/SHLatLng;->altitude:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lbike/smarthalo/app/models/SHLatLng;->isCurrentLocation:Z

    .line 40
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    .line 41
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    return-void
.end method

.method public static buildSHLatLng(DD)Lbike/smarthalo/app/models/SHLatLng;
    .locals 1

    .line 66
    new-instance v0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/models/SHLatLng;-><init>(DD)V

    return-object v0
.end method

.method public static buildSHLatLng(Landroid/location/Location;)Lbike/smarthalo/app/models/SHLatLng;
    .locals 5

    .line 62
    new-instance v0, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/models/SHLatLng;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public equals(Lbike/smarthalo/app/models/SHLatLng;)Z
    .locals 5

    .line 70
    iget-wide v0, p1, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    iget-wide v2, p0, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p1, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    iget-wide v2, p0, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getLocation()Landroid/location/Location;
    .locals 3

    .line 45
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 46
    iget-wide v1, p0, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 47
    iget-wide v1, p0, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    return-object v0
.end method

.method public getSHLocation()Lbike/smarthalo/app/models/SHLocation;
    .locals 3

    .line 53
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 55
    iget-wide v1, p0, Lbike/smarthalo/app/models/SHLatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 56
    iget-wide v1, p0, Lbike/smarthalo/app/models/SHLatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    return-object v0
.end method
