.class final Lio/grpc/internal/AtomicLongCounter;
.super Ljava/lang/Object;
.source "AtomicLongCounter.java"

# interfaces
.implements Lio/grpc/internal/LongCounter;


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AtomicLongCounter;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 1

    .line 35
    iget-object v0, p0, Lio/grpc/internal/AtomicLongCounter;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    return-void
.end method

.method public value()J
    .locals 2

    .line 40
    iget-object v0, p0, Lio/grpc/internal/AtomicLongCounter;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method
