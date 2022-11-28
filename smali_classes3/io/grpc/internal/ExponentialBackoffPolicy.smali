.class public final Lio/grpc/internal/ExponentialBackoffPolicy;
.super Ljava/lang/Object;
.source "ExponentialBackoffPolicy.java"

# interfaces
.implements Lio/grpc/internal/BackoffPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ExponentialBackoffPolicy$Provider;
    }
.end annotation


# instance fields
.field private initialBackoffNanos:J

.field private jitter:D

.field private maxBackoffNanos:J

.field private multiplier:D

.field private nextBackoffNanos:J

.field private random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->random:Ljava/util/Random;

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->initialBackoffNanos:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->maxBackoffNanos:J

    const-wide v0, 0x3ff999999999999aL    # 1.6

    .line 42
    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->multiplier:D

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 43
    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->jitter:D

    .line 45
    iget-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->initialBackoffNanos:J

    iput-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->nextBackoffNanos:J

    return-void
.end method

.method private uniformRandom(DD)J
    .locals 2

    cmpl-double v0, p3, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    sub-double/2addr p3, p1

    .line 58
    iget-object v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double v0, v0, p3

    add-double/2addr v0, p1

    double-to-long p1, v0

    return-wide p1
.end method


# virtual methods
.method public nextBackoffNanos()J
    .locals 8

    .line 49
    iget-wide v0, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->nextBackoffNanos:J

    long-to-double v2, v0

    .line 50
    iget-wide v4, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->multiplier:D

    mul-double v4, v4, v2

    double-to-long v4, v4

    iget-wide v6, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->maxBackoffNanos:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->nextBackoffNanos:J

    .line 51
    iget-wide v4, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->jitter:D

    neg-double v6, v4

    mul-double v6, v6, v2

    mul-double v4, v4, v2

    .line 52
    invoke-direct {p0, v6, v7, v4, v5}, Lio/grpc/internal/ExponentialBackoffPolicy;->uniformRandom(DD)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method setInitialBackoffNanos(J)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 74
    iput-wide p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->initialBackoffNanos:J

    return-object p0
.end method

.method setJitter(D)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 92
    iput-wide p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->jitter:D

    return-object p0
.end method

.method setMaxBackoffNanos(J)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 80
    iput-wide p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->maxBackoffNanos:J

    return-object p0
.end method

.method setMultiplier(D)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 86
    iput-wide p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->multiplier:D

    return-object p0
.end method

.method setRandom(Ljava/util/Random;)Lio/grpc/internal/ExponentialBackoffPolicy;
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 68
    iput-object p1, p0, Lio/grpc/internal/ExponentialBackoffPolicy;->random:Ljava/util/Random;

    return-object p0
.end method
