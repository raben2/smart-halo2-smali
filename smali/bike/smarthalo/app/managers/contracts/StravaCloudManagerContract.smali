.class public interface abstract Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;
.super Ljava/lang/Object;
.source "StravaCloudManagerContract.java"


# virtual methods
.method public abstract authenticateWithStrava(Ljava/lang/String;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract checkActivityAvailability(J)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract disconnectAccount()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAndUpdateStravaLinkedAccount()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse<",
            "Lbike/smarthalo/app/models/StravaLinkedAccount;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sendRideToStrava(Lbike/smarthalo/app/models/SHRide;Z)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHRide;",
            "Z)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/api/strava/StravaRideResponse;",
            ">;"
        }
    .end annotation
.end method
