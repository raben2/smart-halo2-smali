.class public interface abstract Lbike/smarthalo/app/api/SHUserApi;
.super Ljava/lang/Object;
.source "SHUserApi.java"


# static fields
.field public static final apiVersion:Ljava/lang/String; = "1"


# virtual methods
.method public abstract checkEmail(Lbike/smarthalo/app/api/requests/SHUserCheckEmailRequest;)Lio/reactivex/Single;
    .param p1    # Lbike/smarthalo/app/api/requests/SHUserCheckEmailRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/api/requests/SHUserCheckEmailRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/local/checkEmail"
    .end annotation
.end method

.method public abstract forgotPassword(Lbike/smarthalo/app/api/requests/SHUserEmailRequest;)Lio/reactivex/Single;
    .param p1    # Lbike/smarthalo/app/api/requests/SHUserEmailRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/api/requests/SHUserEmailRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/forgot"
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/String;)Lio/reactivex/Single;
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
            "Lbike/smarthalo/app/models/SHUser;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/users/whoami"
    .end annotation
.end method

.method public abstract sendConfirm(Ljava/lang/String;Lbike/smarthalo/app/api/requests/SHUserEmailRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-access-token"
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/api/requests/SHUserEmailRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/api/requests/SHUserEmailRequest;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/users/sendConfirm"
    .end annotation
.end method

.method public abstract updateUser(Ljava/lang/String;Lbike/smarthalo/app/api/requests/SHUserUpdateRequest;)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-access-token"
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/api/requests/SHUserUpdateRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/api/requests/SHUserUpdateRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/v1/users/update"
    .end annotation
.end method
