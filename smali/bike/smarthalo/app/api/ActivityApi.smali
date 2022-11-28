.class public interface abstract Lbike/smarthalo/app/api/ActivityApi;
.super Ljava/lang/Object;
.source "ActivityApi.java"


# virtual methods
.method public abstract sendConnectionActivity(Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/api/requests/GenericApiPayload;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-consumer-token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-access-token"
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/api/requests/GenericApiPayload;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/api/requests/GenericApiPayload<",
            "Lbike/smarthalo/app/api/requests/ActivityRequest;",
            ">;)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lbike/smarthalo/app/api/requests/GenericApiPayload<",
            "Lbike/smarthalo/app/api/requests/ActivityRequest;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/activities"
    .end annotation
.end method
