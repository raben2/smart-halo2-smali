.class public interface abstract Lio/grpc/internal/InternalServer;
.super Ljava/lang/Object;
.source "InternalServer.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract getListenSocketAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getListenSocketStats()Lio/grpc/InternalInstrumented;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract shutdown()V
.end method

.method public abstract start(Lio/grpc/internal/ServerListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
