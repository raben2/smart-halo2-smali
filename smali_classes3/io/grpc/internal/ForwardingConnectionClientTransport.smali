.class abstract Lio/grpc/internal/ForwardingConnectionClientTransport;
.super Ljava/lang/Object;
.source "ForwardingConnectionClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ConnectionClientTransport;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lio/grpc/internal/ConnectionClientTransport;
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ConnectionClientTransport;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ConnectionClientTransport;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ConnectionClientTransport;->getStats()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/ConnectionClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object p1

    return-object p1
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/ConnectionClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public shutdown(Lio/grpc/Status;)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ConnectionClientTransport;->shutdown(Lio/grpc/Status;)V

    return-void
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ConnectionClientTransport;->shutdownNow(Lio/grpc/Status;)V

    return-void
.end method

.method public start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ConnectionClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
