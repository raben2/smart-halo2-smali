.class final Lio/sentry/HostnameCache;
.super Ljava/lang/Object;
.source "HostnameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/HostnameCache$HostnameCacheThreadFactory;
    }
.end annotation


# static fields
.field private static final GET_HOSTNAME_TIMEOUT:J

.field private static final HOSTNAME_CACHE_DURATION:J


# instance fields
.field private final cacheDuration:J

.field private final executorService:Ljava/util/concurrent/ExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile expirationTimestamp:J

.field private final getLocalhost:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile hostname:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/HostnameCache;->HOSTNAME_CACHE_DURATION:J

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/HostnameCache;->GET_HOSTNAME_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    sget-wide v0, Lio/sentry/HostnameCache;->HOSTNAME_CACHE_DURATION:J

    invoke-direct {p0, v0, v1}, Lio/sentry/HostnameCache;-><init>(J)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .line 49
    sget-object v0, Lio/sentry/-$$Lambda$HostnameCache$0Rf2wMKlMTm1paSpRhBPXF4RBZk;->INSTANCE:Lio/sentry/-$$Lambda$HostnameCache$0Rf2wMKlMTm1paSpRhBPXF4RBZk;

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/HostnameCache;-><init>(JLjava/util/concurrent/Callable;)V

    return-void
.end method

.method constructor <init>(JLjava/util/concurrent/Callable;)V
    .locals 2
    .param p3    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/Callable<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Lio/sentry/HostnameCache$HostnameCacheThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/HostnameCache$HostnameCacheThreadFactory;-><init>(Lio/sentry/HostnameCache$1;)V

    .line 42
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/HostnameCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 60
    iput-wide p1, p0, Lio/sentry/HostnameCache;->cacheDuration:J

    const-string p1, "getLocalhost is required"

    .line 61
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lio/sentry/HostnameCache;->getLocalhost:Ljava/util/concurrent/Callable;

    .line 62
    invoke-direct {p0}, Lio/sentry/HostnameCache;->updateCache()V

    return-void
.end method

.method private handleCacheUpdateFailure()V
    .locals 5

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/HostnameCache;->expirationTimestamp:J

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateCache$1(Lio/sentry/HostnameCache;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    :try_start_0
    iget-object v1, p0, Lio/sentry/HostnameCache;->getLocalhost:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/HostnameCache;->hostname:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lio/sentry/HostnameCache;->cacheDuration:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/sentry/HostnameCache;->expirationTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v1, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method private updateCache()V
    .locals 4

    .line 84
    new-instance v0, Lio/sentry/-$$Lambda$HostnameCache$6_ZMJnpaNsMFsRhx_jb3BDmP53E;

    invoke-direct {v0, p0}, Lio/sentry/-$$Lambda$HostnameCache$6_ZMJnpaNsMFsRhx_jb3BDmP53E;-><init>(Lio/sentry/HostnameCache;)V

    .line 97
    :try_start_0
    iget-object v1, p0, Lio/sentry/HostnameCache;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 98
    sget-wide v1, Lio/sentry/HostnameCache;->GET_HOSTNAME_TIMEOUT:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    invoke-direct {p0}, Lio/sentry/HostnameCache;->handleCacheUpdateFailure()V

    goto :goto_0

    .line 100
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 101
    invoke-direct {p0}, Lio/sentry/HostnameCache;->handleCacheUpdateFailure()V

    :goto_0
    return-void
.end method


# virtual methods
.method getHostname()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 74
    iget-wide v0, p0, Lio/sentry/HostnameCache;->expirationTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lio/sentry/HostnameCache;->updateCache()V

    .line 79
    :cond_0
    iget-object v0, p0, Lio/sentry/HostnameCache;->hostname:Ljava/lang/String;

    return-object v0
.end method
