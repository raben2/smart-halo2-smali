.class final Lio/grpc/internal/RetriableStream$FutureCanceller;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FutureCanceller"
.end annotation


# instance fields
.field cancelled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1377
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method isCancelled()Z
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .line 1397
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->cancelled:Z

    return v0
.end method

.method markCancelled()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    const/4 v0, 0x1

    .line 1391
    iput-boolean v0, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->cancelled:Z

    .line 1392
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method setFuture(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1381
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1382
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->cancelled:Z

    if-nez v1, :cond_0

    .line 1383
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$FutureCanceller;->future:Ljava/util/concurrent/Future;

    .line 1385
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
