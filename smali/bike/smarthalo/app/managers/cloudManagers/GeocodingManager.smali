.class public Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;
.super Ljava/lang/Object;
.source "GeocodingManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;,
        Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private nativeGeocoder:Landroid/location/Geocoder;

.field private placesClient:Lcom/google/android/libraries/places/api/net/PlacesClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->context:Landroid/content/Context;

    const v0, 0x7f110183

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/api/Places;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/google/android/libraries/places/api/Places;->createClient(Landroid/content/Context;)Lcom/google/android/libraries/places/api/net/PlacesClient;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->placesClient:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 53
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->nativeGeocoder:Landroid/location/Geocoder;

    return-void
.end method

.method private getBoundBox(Landroid/location/Location;)Lcom/google/android/libraries/places/api/model/RectangularBounds;
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide v3, 0x406c200000000000L    # 225.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->coordinateFromCoords(Landroid/location/Location;Ljava/lang/Double;Ljava/lang/Double;)Landroid/location/Location;

    move-result-object v2

    invoke-static {v2}, Lbike/smarthalo/app/helpers/GoogleMapsHelper;->getLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide v3, 0x4046800000000000L    # 45.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->coordinateFromCoords(Landroid/location/Location;Ljava/lang/Double;Ljava/lang/Double;)Landroid/location/Location;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/GoogleMapsHelper;->getLatLng(Landroid/location/Location;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 157
    invoke-static {v2, p1}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->newInstance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/RectangularBounds;

    move-result-object p1

    return-object p1
.end method

.method private getLocationAddress(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHLocation;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$j66JB9yKF5fsvd2e46rUgDeIugk;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$j66JB9yKF5fsvd2e46rUgDeIugk;-><init>(Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;Lbike/smarthalo/app/models/SHLocation;)V

    .line 146
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$ZODEKtOkPkw03f6FaVjg6YOavXY;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$ZODEKtOkPkw03f6FaVjg6YOavXY;

    .line 151
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 152
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 153
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getLocationAddress$5(Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;Lbike/smarthalo/app/models/SHLocation;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->nativeGeocoder:Landroid/location/Geocoder;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    .line 149
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$getLocationAddress$6(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$getLocationInformation$3(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/GenericResponse;)Lbike/smarthalo/app/models/SHLocation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, Landroid/location/Address;

    .line 118
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$description(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method static synthetic lambda$getLocationInformationById$0(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;)V
    .locals 1

    .line 73
    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p2

    .line 74
    invoke-static {p2}, Lbike/smarthalo/app/helpers/GeocodingHelper;->getLocation(Lcom/google/android/libraries/places/api/model/Place;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p2

    .line 75
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v0

    invoke-virtual {p2, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    .line 76
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$key()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$key(Ljava/lang/String;)V

    .line 77
    invoke-interface {p1, p2}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;->onLocationReady(Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method

.method static synthetic lambda$getLocationInformationById$1(Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;Lbike/smarthalo/app/models/SHLocation;Ljava/lang/Exception;)V
    .locals 0

    .line 80
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    invoke-interface {p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;->onLocationReady(Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method

.method static synthetic lambda$isImperialCountry$4(Lbike/smarthalo/app/models/GenericResponse;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast v0, Landroid/location/Address;

    .line 138
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "United States"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast v0, Landroid/location/Address;

    .line 139
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Liberia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p0, Landroid/location/Address;

    .line 140
    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Myanmar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 137
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$searchForLocations$2(Ljava/util/List;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;)V
    .locals 1

    .line 101
    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 102
    invoke-static {v0}, Lbike/smarthalo/app/helpers/GeocodingHelper;->getSearchResultLocation(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {p1, p0}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;->onSearchResultsReady(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getLocationInformation(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHLocation;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->getLocationAddress(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$mxSbCFJST0joSh3TSYpiGfu08-Q;

    invoke-direct {v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$mxSbCFJST0joSh3TSYpiGfu08-Q;-><init>(Lbike/smarthalo/app/models/SHLocation;)V

    .line 114
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getLocationInformationById(Lbike/smarthalo/app/models/SHLocation;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;)V
    .locals 3
    .param p1    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    iget-object v0, p1, Lbike/smarthalo/app/models/SHLocation;->geocodingId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 58
    invoke-interface {p3, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;->onLocationReady(Lbike/smarthalo/app/models/SHLocation;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Field;->ID:Lcom/google/android/libraries/places/api/model/Place$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Field;->NAME:Lcom/google/android/libraries/places/api/model/Place$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Field;->ADDRESS:Lcom/google/android/libraries/places/api/model/Place$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Field;->LAT_LNG:Lcom/google/android/libraries/places/api/model/Place$Field;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    iget-object v1, p1, Lbike/smarthalo/app/models/SHLocation;->geocodingId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->builder(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;->setSessionToken(Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

    move-result-object p2

    .line 71
    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->placesClient:Lcom/google/android/libraries/places/api/net/PlacesClient;

    invoke-interface {v0, p2}, Lcom/google/android/libraries/places/api/net/PlacesClient;->fetchPlace(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$hgosXpGdwoN_JLJ-tRpV1VM08j0;

    invoke-direct {v0, p1, p3}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$hgosXpGdwoN_JLJ-tRpV1VM08j0;-><init>(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;)V

    .line 72
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$4Pycztad5PbcL8ceQEvBTiSJr60;

    invoke-direct {v0, p3, p1}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$4Pycztad5PbcL8ceQEvBTiSJr60;-><init>(Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;Lbike/smarthalo/app/models/SHLocation;)V

    .line 79
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getNewSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
    .locals 1

    .line 86
    invoke-static {}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->newInstance()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v0

    return-object v0
.end method

.method public isImperialCountry(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHLocation;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->getLocationAddress(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$asmW2U1LnHRRbppRbslrpAmj_Qw;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$asmW2U1LnHRRbppRbslrpAmj_Qw;

    .line 136
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public searchForLocations(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Landroid/location/Location;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-static {}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->builder()Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    .line 93
    invoke-direct {p0, p3}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->getBoundBox(Landroid/location/Location;)Lcom/google/android/libraries/places/api/model/RectangularBounds;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object p3

    .line 94
    invoke-virtual {p3, p2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setSessionToken(Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object p2

    .line 95
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->placesClient:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 99
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/api/net/PlacesClient;->findAutocompletePredictions(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$b0jvl7j2rYncpBiPbqiCE9rfM0I;

    invoke-direct {p2, v0, p4}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$b0jvl7j2rYncpBiPbqiCE9rfM0I;-><init>(Ljava/util/List;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;)V

    .line 100
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
