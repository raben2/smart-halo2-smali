.class public interface abstract Lbike/smarthalo/app/api/SHDeviceConnectionsApi;
.super Ljava/lang/Object;
.source "SHDeviceConnectionsApi.java"


# virtual methods
.method public abstract sendConnectionEvent(Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;)Lretrofit2/Call;
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
    .param p3    # Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v2/device_connections"
    .end annotation
.end method
