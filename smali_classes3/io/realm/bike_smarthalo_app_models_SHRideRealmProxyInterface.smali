.class public interface abstract Lio/realm/bike_smarthalo_app_models_SHRideRealmProxyInterface;
.super Ljava/lang/Object;
.source "bike_smarthalo_app_models_SHRideRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$avgSpeed()D
.end method

.method public abstract realmGet$burntCalories()D
.end method

.method public abstract realmGet$climbedElevation()D
.end method

.method public abstract realmGet$co2()D
.end method

.method public abstract realmGet$curSpeed()D
.end method

.method public abstract realmGet$endTime()J
.end method

.method public abstract realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;
.end method

.method public abstract realmGet$goodLocations()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$hasStravaUploadRequest()Z
.end method

.method public abstract realmGet$isActive()Z
.end method

.method public abstract realmGet$locations()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$maxSpeed()D
.end method

.method public abstract realmGet$timestamp()Ljava/lang/Long;
.end method

.method public abstract realmGet$traveledDistance()D
.end method

.method public abstract realmSet$avgSpeed(D)V
.end method

.method public abstract realmSet$burntCalories(D)V
.end method

.method public abstract realmSet$climbedElevation(D)V
.end method

.method public abstract realmSet$co2(D)V
.end method

.method public abstract realmSet$curSpeed(D)V
.end method

.method public abstract realmSet$endTime(J)V
.end method

.method public abstract realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V
.end method

.method public abstract realmSet$goodLocations(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$hasStravaUploadRequest(Z)V
.end method

.method public abstract realmSet$isActive(Z)V
.end method

.method public abstract realmSet$locations(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$maxSpeed(D)V
.end method

.method public abstract realmSet$timestamp(Ljava/lang/Long;)V
.end method

.method public abstract realmSet$traveledDistance(D)V
.end method
