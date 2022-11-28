.class public interface abstract Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
.super Ljava/lang/Object;
.source "FitnessStorageContract.java"


# virtual methods
.method public abstract addStravaAccount(Ljava/lang/String;Ljava/lang/String;JLbike/smarthalo/app/api/strava/StravaAthlete;)V
.end method

.method public abstract createB2BSpeedometerGoal(I)V
.end method

.method public abstract deletePastRide(Lbike/smarthalo/app/models/SHPastRide;)V
.end method

.method public abstract deleteRide(J)V
.end method

.method public abstract deleteRideAssociatedWithPastRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .param p1    # Lbike/smarthalo/app/models/SHPastRide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract deleteStravaLinkedAccount()V
.end method

.method public abstract getCurrentActiveGoal()Lbike/smarthalo/app/models/SHGoal;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCurrentRide(Z)Lbike/smarthalo/app/models/SHRide;
.end method

.method public abstract getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;
.end method

.method public abstract getPastRidesAsync()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPastRidesToDelete()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPastRidesToUpdate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPastRidesToUploadToStrava()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRideByStamp(Ljava/lang/Long;)Lbike/smarthalo/app/models/SHRide;
.end method

.method public abstract getSortedPastRides()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSortedRidesToUpload()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHRide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;
.end method

.method public abstract getUserGoal(Z)Lbike/smarthalo/app/models/SHGoal;
.end method

.method public abstract removeHasStravaUploadRequest(Ljava/lang/String;)V
.end method

.method public abstract setStravaRideAutoUpload(Z)V
.end method

.method public abstract updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .param p1    # Lbike/smarthalo/app/models/SHPastRide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract updateLocalRides(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePastRideOnSuccessfulStravaUpload(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateRide(Lbike/smarthalo/app/models/SHRide;)V
.end method

.method public abstract updateRideOnSuccessfulStravaUpload(Ljava/lang/Long;Ljava/lang/String;)V
.end method

.method public abstract updateStravaAccount(Lbike/smarthalo/app/api/strava/StravaAthlete;)V
.end method

.method public abstract updateStravaAccountTokens(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V
.end method
