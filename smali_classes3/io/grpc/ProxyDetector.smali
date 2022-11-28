.class public interface abstract Lio/grpc/ProxyDetector;
.super Ljava/lang/Object;
.source "ProxyDetector.java"


# annotations
.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/5279"
.end annotation


# virtual methods
.method public abstract proxyFor(Ljava/net/SocketAddress;)Lio/grpc/ProxiedSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
