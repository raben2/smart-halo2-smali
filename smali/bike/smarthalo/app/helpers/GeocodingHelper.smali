.class public Lbike/smarthalo/app/helpers/GeocodingHelper;
.super Ljava/lang/Object;
.source "GeocodingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocation(Lcom/google/android/libraries/places/api/model/Place;)Lbike/smarthalo/app/models/SHLocation;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$latitude(Ljava/lang/Double;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$longitude(Ljava/lang/Double;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$address(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/Place;->getId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lbike/smarthalo/app/models/SHLocation;->geocodingId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSearchResultLocation(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lbike/smarthalo/app/models/SHLocation;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 33
    :cond_0
    new-instance v1, Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {v1}, Lbike/smarthalo/app/models/SHLocation;-><init>()V

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPrimaryText(Landroid/text/style/CharacterStyle;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getSecondaryText(Landroid/text/style/CharacterStyle;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$address(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lbike/smarthalo/app/models/SHLocation;->geocodingId:Ljava/lang/String;

    const/4 p0, 0x6

    .line 37
    invoke-virtual {v1, p0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    .line 38
    iget-object p0, v1, Lbike/smarthalo/app/models/SHLocation;->geocodingId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$key(Ljava/lang/String;)V

    return-object v1
.end method
