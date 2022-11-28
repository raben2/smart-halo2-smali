.class public interface abstract Lbike/smarthalo/app/managers/contracts/AuthenticationContract;
.super Ljava/lang/Object;
.source "AuthenticationContract.java"


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract launchTokenRefreshFlow()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/TokenRefreshState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
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

.method public abstract logout()V
.end method

.method public abstract signUp(Lbike/smarthalo/app/api/requests/SHUserSignupRequest;)Lio/reactivex/Single;
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
