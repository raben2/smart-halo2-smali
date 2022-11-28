.class public interface abstract Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
.super Ljava/lang/Object;
.source "IFitnessCloudManager.java"


# virtual methods
.method public abstract deleteRide(Lbike/smarthalo/app/models/SHPastRide;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getRide(ILbike/smarthalo/app/api/requests/CloudRideMarkersOption;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbike/smarthalo/app/api/requests/CloudRideMarkersOption;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/CloudRide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract launchManualStravaUploadFlow(I)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/StravaUploadResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateCloudAndLocalRides()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateRide(JLbike/smarthalo/app/api/requests/PatchRideRequest;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbike/smarthalo/app/api/requests/PatchRideRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/CloudRide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract uploadRideToCloud(Lbike/smarthalo/app/models/SHRide;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
