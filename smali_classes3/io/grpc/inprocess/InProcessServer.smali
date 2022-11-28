.class final Lio/grpc/inprocess/InProcessServer;
.super Ljava/lang/Object;
.source "InProcessServer.java"

# interfaces
.implements Lio/grpc/internal/InternalServer;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final registry:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lio/grpc/inprocess/InProcessServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private listener:Lio/grpc/internal/ServerListener;

.field private final maxInboundMetadataSize:I

.field private final name:Ljava/lang/String;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final schedulerPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private shutdown:Z

.field private final streamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/grpc/inprocess/InProcessServer;->registry:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>(Lio/grpc/inprocess/InProcessServerBuilder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/inprocess/InProcessServerBuilder;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lio/grpc/inprocess/InProcessServerBuilder;->name:Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServer;->name:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lio/grpc/inprocess/InProcessServerBuilder;->schedulerPool:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServer;->schedulerPool:Lio/grpc/internal/ObjectPool;

    .line 65
    iget p1, p1, Lio/grpc/inprocess/InProcessServerBuilder;->maxInboundMetadataSize:I

    iput p1, p0, Lio/grpc/inprocess/InProcessServer;->maxInboundMetadataSize:I

    const-string p1, "streamTracerFactories"

    .line 67
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/inprocess/InProcessServer;->streamTracerFactories:Ljava/util/List;

    return-void
.end method

.method static findServer(Ljava/lang/String;)Lio/grpc/inprocess/InProcessServer;
    .locals 1

    .line 44
    sget-object v0, Lio/grpc/inprocess/InProcessServer;->registry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/inprocess/InProcessServer;

    return-object p0
.end method


# virtual methods
.method public getListenSocketAddress()Ljava/net/SocketAddress;
    .locals 2

    .line 82
    new-instance v0, Lio/grpc/inprocess/InProcessSocketAddress;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessServer;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/grpc/inprocess/InProcessSocketAddress;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getListenSocketStats()Lio/grpc/InternalInstrumented;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method getMaxInboundMetadataSize()I
    .locals 1

    .line 119
    iget v0, p0, Lio/grpc/inprocess/InProcessServer;->maxInboundMetadataSize:I

    return v0
.end method

.method getScheduledExecutorServicePool()Lio/grpc/internal/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/internal/ObjectPool<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lio/grpc/inprocess/InProcessServer;->schedulerPool:Lio/grpc/internal/ObjectPool;

    return-object v0
.end method

.method getStreamTracerFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/grpc/inprocess/InProcessServer;->streamTracerFactories:Ljava/util/List;

    return-object v0
.end method

.method declared-synchronized register(Lio/grpc/inprocess/InProcessTransport;)Lio/grpc/internal/ServerTransportListener;
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessServer;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 109
    monitor-exit p0

    return-object p1

    .line 111
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/inprocess/InProcessServer;->listener:Lio/grpc/internal/ServerListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ServerListener;->transportCreated(Lio/grpc/internal/ServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public shutdown()V
    .locals 2

    .line 92
    sget-object v0, Lio/grpc/inprocess/InProcessServer;->registry:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessServer;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lio/grpc/inprocess/InProcessServer;->schedulerPool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessServer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/inprocess/InProcessServer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    monitor-enter p0

    const/4 v0, 0x1

    .line 97
    :try_start_0
    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessServer;->shutdown:Z

    .line 98
    iget-object v0, p0, Lio/grpc/inprocess/InProcessServer;->listener:Lio/grpc/internal/ServerListener;

    invoke-interface {v0}, Lio/grpc/internal/ServerListener;->serverShutdown()V

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public start(Lio/grpc/internal/ServerListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lio/grpc/inprocess/InProcessServer;->listener:Lio/grpc/internal/ServerListener;

    .line 73
    iget-object p1, p0, Lio/grpc/inprocess/InProcessServer;->schedulerPool:Lio/grpc/internal/ObjectPool;

    invoke-interface {p1}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/inprocess/InProcessServer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 75
    sget-object p1, Lio/grpc/inprocess/InProcessServer;->registry:Ljava/util/concurrent/ConcurrentMap;

    iget-object v0, p0, Lio/grpc/inprocess/InProcessServer;->name:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name already registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessServer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lio/grpc/inprocess/InProcessServer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
