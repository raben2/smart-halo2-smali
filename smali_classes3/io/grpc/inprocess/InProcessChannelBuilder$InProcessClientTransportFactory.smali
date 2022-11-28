.class final Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;
.super Ljava/lang/Object;
.source "InProcessChannelBuilder.java"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/inprocess/InProcessChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InProcessClientTransportFactory"
.end annotation


# instance fields
.field private closed:Z

.field private final maxInboundMetadataSize:I

.field private final name:Ljava/lang/String;

.field private final timerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final useSharedTimer:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 0
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->name:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 182
    :goto_0
    iput-boolean p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->useSharedTimer:Z

    .line 183
    iget-boolean p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->useSharedTimer:Z

    if-eqz p1, :cond_1

    .line 184
    sget-object p1, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {p1}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    iput-object p2, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 185
    iput p3, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->maxInboundMetadataSize:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;ILio/grpc/inprocess/InProcessChannelBuilder$1;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;-><init>(Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 207
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    .line 211
    iget-boolean v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->useSharedTimer:Z

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 202
    iget-object v0, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 6

    .line 191
    iget-boolean p1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->closed:Z

    if-nez p1, :cond_0

    .line 195
    new-instance p1, Lio/grpc/inprocess/InProcessTransport;

    iget-object v1, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->name:Ljava/lang/String;

    iget v2, p0, Lio/grpc/inprocess/InProcessChannelBuilder$InProcessClientTransportFactory;->maxInboundMetadataSize:I

    .line 196
    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {p2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->getEagAttributes()Lio/grpc/Attributes;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lio/grpc/inprocess/InProcessTransport;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;)V

    return-object p1

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The transport factory is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
