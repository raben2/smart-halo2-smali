.class public interface abstract Lbike/smarthalo/app/api/SHRideApi;
.super Ljava/lang/Object;
.source "SHRideApi.java"


# static fields
.field public static final apiVersion:Ljava/lang/String; = "1"

.field public static final apiVersion2:Ljava/lang/String; = "2"


# virtual methods
.method public abstract deleteRide(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-consumer-token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "ride_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "api/v2/rides/{ride_id}"
    .end annotation
.end method

.method public abstract getRide(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-consumer-token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "ride_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "include"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lbike/smarthalo/app/api/responses/GenericApiResponse<",
            "Lbike/smarthalo/app/models/CloudRide;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/users/me/rides/{ride_id}"
    .end annotation
.end method

.method public abstract getUserRides(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-access-token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/users/rides"
    .end annotation
.end method

.method public abstract getUserRidesObservable(Ljava/lang/String;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-access-token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/users/rides"
    .end annotation
.end method

.method public abstract updateRide(Ljava/lang/String;Ljava/lang/String;JLbike/smarthalo/app/api/requests/GenericApiPayload;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-consumer-token"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "ride_id"
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/api/requests/GenericApiPayload;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lbike/smarthalo/app/api/requests/GenericApiPayload<",
            "Lbike/smarthalo/app/api/requests/PatchRideRequest;",
            ">;)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lbike/smarthalo/app/api/responses/GenericApiResponse<",
            "Lbike/smarthalo/app/models/CloudRide;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "/v2/users/me/rides/{ride_id}"
    .end annotation
.end method

.method public abstract uploadUserRides(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-access-token"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/RideUploadPayload;",
            ">;)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/RideMarker;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/users/rides/sync"
    .end annotation
.end method
