.class public interface abstract Lbike/smarthalo/app/api/AuthenticationApi;
.super Ljava/lang/Object;
.source "AuthenticationApi.java"


# virtual methods
.method public abstract login(Ljava/lang/String;Lbike/smarthalo/app/api/requests/UserLoginRequest;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-consumer-token"
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/api/requests/UserLoginRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/api/requests/UserLoginRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lbike/smarthalo/app/api/responses/UserResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/local/login"
    .end annotation
.end method

.method public abstract refreshToken(Ljava/lang/String;Lbike/smarthalo/app/api/requests/GenericApiPayload;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-consumer-token"
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/api/requests/GenericApiPayload;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/api/requests/GenericApiPayload<",
            "Lbike/smarthalo/app/api/requests/RefreshTokenRequest;",
            ">;)",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lbike/smarthalo/app/api/responses/GenericApiResponse<",
            "Lbike/smarthalo/app/api/responses/RefreshTokenResponse;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/local/refresh_tokens"
    .end annotation
.end method

.method public abstract signup(Ljava/lang/String;Lbike/smarthalo/app/api/requests/SHUserSignupRequest;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-consumer-token"
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/api/requests/SHUserSignupRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/api/requests/SHUserSignupRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Lbike/smarthalo/app/api/responses/UserResponse;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/local/signup"
    .end annotation
.end method
