.class public interface abstract Lio/grpc/stub/ClientResponseObserver;
.super Ljava/lang/Object;
.source "ClientResponseObserver.java"

# interfaces
.implements Lio/grpc/stub/StreamObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/stub/StreamObserver<",
        "TRespT;>;"
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/4693"
.end annotation


# virtual methods
.method public abstract beforeStart(Lio/grpc/stub/ClientCallStreamObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/ClientCallStreamObserver<",
            "TReqT;>;)V"
        }
    .end annotation
.end method
