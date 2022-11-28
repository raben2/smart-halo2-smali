.class public interface abstract Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
.super Ljava/lang/Object;
.source "UserStorageContract.java"


# virtual methods
.method public abstract deleteUserBikeLocation()V
.end method

.method public abstract getLocalFavourites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUser()Lbike/smarthalo/app/models/SHUser;
.end method

.method public abstract getUserBikeKey(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/String;
.end method

.method public abstract getUserBikeLocation()Lbike/smarthalo/app/models/SHLocation;
.end method

.method public abstract isUserMetric()Z
.end method

.method public abstract saveUser(Lbike/smarthalo/app/models/SHUser;)V
    .param p1    # Lbike/smarthalo/app/models/SHUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveUserBikeLocation(Landroid/location/Location;)V
.end method

.method public abstract updateLocalFavouritesAsync(Ljava/util/List;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;",
            "Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;",
            ")V"
        }
    .end annotation
.end method
