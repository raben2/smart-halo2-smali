.class final Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExecutorHolder"
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private final pool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/internal/ObjectPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "executorPool"

    .line 1787
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ObjectPool;

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->pool:Lio/grpc/internal/ObjectPool;

    return-void
.end method


# virtual methods
.method declared-synchronized getExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    monitor-enter p0

    .line 1791
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 1792
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->pool:Lio/grpc/internal/ObjectPool;

    invoke-interface {v0}, Lio/grpc/internal/ObjectPool;->getObject()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.getObject()"

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->executor:Ljava/util/concurrent/Executor;

    .line 1794
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->executor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 1798
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->pool:Lio/grpc/internal/ObjectPool;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/grpc/internal/ObjectPool;->returnObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ExecutorHolder;->executor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
