.class public interface abstract Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
.super Ljava/lang/Object;
.source "IUserCloudManager.java"


# virtual methods
.method public abstract checkEmailAvailability(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;",
            ">;"
        }
    .end annotation
.end method

.method public abstract forgotPassword(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUser()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUserDeviceConfigs(Ljava/lang/Integer;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getUserFavorites(Ljava/lang/Integer;Lbike/smarthalo/app/api/RequestCallback;)V
.end method

.method public abstract loginAndInitializeUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract resendConfirmation(Ljava/lang/String;Lbike/smarthalo/app/api/RequestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/api/RequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract sendDeviceConnectionEvent(Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;)V
    .param p1    # Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$GenericCloudCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract signUpAndInitializeUser(Lbike/smarthalo/app/api/requests/SHUserSignupRequest;)Lio/reactivex/Single;
    .param p1    # Lbike/smarthalo/app/api/requests/SHUserSignupRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/api/requests/SHUserSignupRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateCloudConfigsWithLocalValues(ILbike/smarthalo/app/models/SHSettings;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbike/smarthalo/app/models/SHSettings;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateUser(Lbike/smarthalo/app/models/SHUser;)Lio/reactivex/Single;
    .param p1    # Lbike/smarthalo/app/models/SHUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/models/SHUser;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateUserFavourites(Ljava/lang/Integer;Lbike/smarthalo/app/models/FavouritesChangedEvent;Lbike/smarthalo/app/api/RequestCallback;)V
.end method

.method public abstract updaterUserDeviceConfigs(Ljava/lang/Integer;Ljava/util/HashMap;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
