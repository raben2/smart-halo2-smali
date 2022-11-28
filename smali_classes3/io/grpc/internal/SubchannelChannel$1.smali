.class Lio/grpc/internal/SubchannelChannel$1;
.super Ljava/lang/Object;
.source "SubchannelChannel.java"

# interfaces
.implements Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/SubchannelChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/SubchannelChannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/SubchannelChannel;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lio/grpc/internal/SubchannelChannel$1;->this$0:Lio/grpc/internal/SubchannelChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;
    .locals 0

    .line 54
    iget-object p1, p0, Lio/grpc/internal/SubchannelChannel$1;->this$0:Lio/grpc/internal/SubchannelChannel;

    invoke-static {p1}, Lio/grpc/internal/SubchannelChannel;->access$000(Lio/grpc/internal/SubchannelChannel;)Lio/grpc/internal/InternalSubchannel;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/InternalSubchannel;->getTransport()Lio/grpc/internal/ClientTransport;

    move-result-object p1

    if-nez p1, :cond_0

    .line 56
    invoke-static {}, Lio/grpc/internal/SubchannelChannel;->access$100()Lio/grpc/internal/FailingClientTransport;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method public newRetriableStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;*>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "OobChannel should not create retriable streams"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
