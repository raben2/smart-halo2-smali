.class final Lio/grpc/internal/InternalSubchannel$CallTracingTransport;
.super Lio/grpc/internal/ForwardingConnectionClientTransport;
.source "InternalSubchannel.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/InternalSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallTracingTransport"
.end annotation


# instance fields
.field private final callTracer:Lio/grpc/internal/CallTracer;

.field private final delegate:Lio/grpc/internal/ConnectionClientTransport;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ConnectionClientTransport;Lio/grpc/internal/CallTracer;)V
    .locals 0

    .line 622
    invoke-direct {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;-><init>()V

    .line 623
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    .line 624
    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->callTracer:Lio/grpc/internal/CallTracer;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ConnectionClientTransport;Lio/grpc/internal/CallTracer;Lio/grpc/internal/InternalSubchannel$1;)V
    .locals 0

    .line 618
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;-><init>(Lio/grpc/internal/ConnectionClientTransport;Lio/grpc/internal/CallTracer;)V

    return-void
.end method

.method static synthetic access$2400(Lio/grpc/internal/InternalSubchannel$CallTracingTransport;)Lio/grpc/internal/CallTracer;
    .locals 0

    .line 618
    iget-object p0, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->callTracer:Lio/grpc/internal/CallTracer;

    return-object p0
.end method


# virtual methods
.method protected delegate()Lio/grpc/internal/ConnectionClientTransport;
    .locals 1

    .line 629
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 635
    invoke-super {p0, p1, p2, p3}, Lio/grpc/internal/ForwardingConnectionClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object p1

    .line 636
    new-instance p2, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;

    invoke-direct {p2, p0, p1}, Lio/grpc/internal/InternalSubchannel$CallTracingTransport$1;-><init>(Lio/grpc/internal/InternalSubchannel$CallTracingTransport;Lio/grpc/internal/ClientStream;)V

    return-object p2
.end method
