.class public interface abstract Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;
.super Ljava/lang/Object;
.source "GeocodingManagerContract.java"


# virtual methods
.method public abstract getLocationInformation(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;
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
.end method

.method public abstract getLocationInformationById(Lbike/smarthalo/app/models/SHLocation;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;)V
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
.end method

.method public abstract getNewSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;
.end method

.method public abstract isImperialCountry(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;
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
.end method

.method public abstract searchForLocations(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;Landroid/location/Location;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;)V
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
.end method
