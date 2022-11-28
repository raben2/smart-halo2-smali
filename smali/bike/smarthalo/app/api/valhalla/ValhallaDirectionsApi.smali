.class public interface abstract Lbike/smarthalo/app/api/valhalla/ValhallaDirectionsApi;
.super Ljava/lang/Object;
.source "ValhallaDirectionsApi.java"


# virtual methods
.method public abstract getDirections(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaDirectionsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "route"
    .end annotation
.end method
