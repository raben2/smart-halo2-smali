.class final Lio/grpc/internal/CallTracer;
.super Ljava/lang/Object;
.source "CallTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CallTracer$Factory;
    }
.end annotation


# static fields
.field static final DEFAULT_FACTORY:Lio/grpc/internal/CallTracer$Factory;


# instance fields
.field private final callsFailed:Lio/grpc/internal/LongCounter;

.field private final callsStarted:Lio/grpc/internal/LongCounter;

.field private final callsSucceeded:Lio/grpc/internal/LongCounter;

.field private volatile lastCallStartedNanos:J

.field private final timeProvider:Lio/grpc/internal/TimeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lio/grpc/internal/CallTracer$1;

    invoke-direct {v0}, Lio/grpc/internal/CallTracer$1;-><init>()V

    sput-object v0, Lio/grpc/internal/CallTracer;->DEFAULT_FACTORY:Lio/grpc/internal/CallTracer$Factory;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/TimeProvider;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lio/grpc/internal/LongCounterFactory;->create()Lio/grpc/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/CallTracer;->callsStarted:Lio/grpc/internal/LongCounter;

    .line 30
    invoke-static {}, Lio/grpc/internal/LongCounterFactory;->create()Lio/grpc/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/CallTracer;->callsSucceeded:Lio/grpc/internal/LongCounter;

    .line 31
    invoke-static {}, Lio/grpc/internal/LongCounterFactory;->create()Lio/grpc/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/CallTracer;->callsFailed:Lio/grpc/internal/LongCounter;

    .line 35
    iput-object p1, p0, Lio/grpc/internal/CallTracer;->timeProvider:Lio/grpc/internal/TimeProvider;

    return-void
.end method

.method public static getDefaultFactory()Lio/grpc/internal/CallTracer$Factory;
    .locals 1

    .line 79
    sget-object v0, Lio/grpc/internal/CallTracer;->DEFAULT_FACTORY:Lio/grpc/internal/CallTracer$Factory;

    return-object v0
.end method


# virtual methods
.method public reportCallEnded(Z)V
    .locals 2

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lio/grpc/internal/CallTracer;->callsSucceeded:Lio/grpc/internal/LongCounter;

    invoke-interface {p1, v0, v1}, Lio/grpc/internal/LongCounter;->add(J)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lio/grpc/internal/CallTracer;->callsFailed:Lio/grpc/internal/LongCounter;

    invoke-interface {p1, v0, v1}, Lio/grpc/internal/LongCounter;->add(J)V

    :goto_0
    return-void
.end method

.method public reportCallStarted()V
    .locals 3

    .line 39
    iget-object v0, p0, Lio/grpc/internal/CallTracer;->callsStarted:Lio/grpc/internal/LongCounter;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lio/grpc/internal/LongCounter;->add(J)V

    .line 40
    iget-object v0, p0, Lio/grpc/internal/CallTracer;->timeProvider:Lio/grpc/internal/TimeProvider;

    invoke-interface {v0}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/CallTracer;->lastCallStartedNanos:J

    return-void
.end method

.method updateBuilder(Lio/grpc/InternalChannelz$ChannelStats$Builder;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lio/grpc/internal/CallTracer;->callsStarted:Lio/grpc/internal/LongCounter;

    .line 53
    invoke-interface {v0}, Lio/grpc/internal/LongCounter;->value()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setCallsStarted(J)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/CallTracer;->callsSucceeded:Lio/grpc/internal/LongCounter;

    .line 54
    invoke-interface {v0}, Lio/grpc/internal/LongCounter;->value()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setCallsSucceeded(J)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/CallTracer;->callsFailed:Lio/grpc/internal/LongCounter;

    .line 55
    invoke-interface {v0}, Lio/grpc/internal/LongCounter;->value()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setCallsFailed(J)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    move-result-object p1

    iget-wide v0, p0, Lio/grpc/internal/CallTracer;->lastCallStartedNanos:J

    .line 56
    invoke-virtual {p1, v0, v1}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setLastCallStartedNanos(J)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    return-void
.end method

.method updateBuilder(Lio/grpc/InternalChannelz$ServerStats$Builder;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lio/grpc/internal/CallTracer;->callsStarted:Lio/grpc/internal/LongCounter;

    .line 61
    invoke-interface {v0}, Lio/grpc/internal/LongCounter;->value()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/grpc/InternalChannelz$ServerStats$Builder;->setCallsStarted(J)Lio/grpc/InternalChannelz$ServerStats$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/CallTracer;->callsSucceeded:Lio/grpc/internal/LongCounter;

    .line 62
    invoke-interface {v0}, Lio/grpc/internal/LongCounter;->value()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/grpc/InternalChannelz$ServerStats$Builder;->setCallsSucceeded(J)Lio/grpc/InternalChannelz$ServerStats$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/CallTracer;->callsFailed:Lio/grpc/internal/LongCounter;

    .line 63
    invoke-interface {v0}, Lio/grpc/internal/LongCounter;->value()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/grpc/InternalChannelz$ServerStats$Builder;->setCallsFailed(J)Lio/grpc/InternalChannelz$ServerStats$Builder;

    move-result-object p1

    iget-wide v0, p0, Lio/grpc/internal/CallTracer;->lastCallStartedNanos:J

    .line 64
    invoke-virtual {p1, v0, v1}, Lio/grpc/InternalChannelz$ServerStats$Builder;->setLastCallStartedNanos(J)Lio/grpc/InternalChannelz$ServerStats$Builder;

    return-void
.end method
