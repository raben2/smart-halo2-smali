.class final Lio/grpc/internal/LongCounterFactory;
.super Ljava/lang/Object;
.source "LongCounterFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lio/grpc/internal/LongCounter;
    .locals 1

    .line 28
    invoke-static {}, Lio/grpc/internal/ReflectionLongAdderCounter;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lio/grpc/internal/ReflectionLongAdderCounter;

    invoke-direct {v0}, Lio/grpc/internal/ReflectionLongAdderCounter;-><init>()V

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lio/grpc/internal/AtomicLongCounter;

    invoke-direct {v0}, Lio/grpc/internal/AtomicLongCounter;-><init>()V

    return-object v0
.end method
