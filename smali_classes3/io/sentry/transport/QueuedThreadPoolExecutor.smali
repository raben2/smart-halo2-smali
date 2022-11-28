.class final Lio/sentry/transport/QueuedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "QueuedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;
    }
.end annotation


# instance fields
.field private final logger:Lio/sentry/ILogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxQueueSize:I

.field private final unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lio/sentry/ILogger;)V
    .locals 9
    .param p3    # Ljava/util/concurrent/ThreadFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/RejectedExecutionHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 43
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 26
    new-instance p1, Lio/sentry/transport/ReusableCountLatch;

    invoke-direct {p1}, Lio/sentry/transport/ReusableCountLatch;-><init>()V

    iput-object p1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    .line 51
    iput p2, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->maxQueueSize:I

    .line 52
    iput-object p5, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method private isSchedulingAllowed()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->getCount()I

    move-result v0

    iget v1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->maxQueueSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 71
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object p1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {p1}, Lio/sentry/transport/ReusableCountLatch;->decrement()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {p2}, Lio/sentry/transport/ReusableCountLatch;->decrement()V

    throw p1
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lio/sentry/transport/QueuedThreadPoolExecutor;->isSchedulingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->increment()V

    .line 59
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    iget-object p1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Submit cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    new-instance p1, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;-><init>(Lio/sentry/transport/QueuedThreadPoolExecutor$1;)V

    return-object p1
.end method

.method waitTillIdle(J)V
    .locals 2

    .line 80
    :try_start_0
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lio/sentry/transport/ReusableCountLatch;->waitTillZero(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    iget-object p2, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to wait till idle"

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
