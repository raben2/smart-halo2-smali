.class final Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;
.super Lio/grpc/internal/RetriableStream;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;->newRetriableStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RetryStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/RetriableStream<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;

.field final synthetic val$callOptions:Lio/grpc/CallOptions;

.field final synthetic val$context:Lio/grpc/Context;

.field final synthetic val$headers:Lio/grpc/Metadata;

.field final synthetic val$method:Lio/grpc/MethodDescriptor;

.field final synthetic val$throttle:Lio/grpc/internal/RetriableStream$Throttle;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Lio/grpc/internal/RetriableStream$Throttle;Lio/grpc/Context;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 508
    iput-object v0, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;

    move-object/from16 v2, p2

    iput-object v2, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$method:Lio/grpc/MethodDescriptor;

    move-object/from16 v3, p3

    iput-object v3, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$headers:Lio/grpc/Metadata;

    iput-object v1, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$callOptions:Lio/grpc/CallOptions;

    move-object/from16 v12, p5

    iput-object v12, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$throttle:Lio/grpc/internal/RetriableStream$Throttle;

    move-object/from16 v4, p6

    iput-object v4, v13, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$context:Lio/grpc/Context;

    .line 509
    iget-object v4, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 512
    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$1800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    move-result-object v4

    iget-object v5, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 513
    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$1900(Lio/grpc/internal/ManagedChannelImpl;)J

    move-result-wide v5

    iget-object v7, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 514
    invoke-static {v7}, Lio/grpc/internal/ManagedChannelImpl;->access$2000(Lio/grpc/internal/ManagedChannelImpl;)J

    move-result-wide v7

    iget-object v9, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 515
    invoke-static {v9, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$2100(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/CallOptions;)Ljava/util/concurrent/Executor;

    move-result-object v9

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 516
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientTransportFactory;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    sget-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->RETRY_POLICY_KEY:Lio/grpc/CallOptions$Key;

    .line 517
    invoke-virtual {v1, v0}, Lio/grpc/CallOptions;->getOption(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/grpc/internal/RetryPolicy$Provider;

    sget-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->HEDGING_POLICY_KEY:Lio/grpc/CallOptions$Key;

    .line 518
    invoke-virtual {v1, v0}, Lio/grpc/CallOptions;->getOption(Lio/grpc/CallOptions$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lio/grpc/internal/HedgingPolicy$Provider;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v14

    .line 509
    invoke-direct/range {v0 .. v12}, Lio/grpc/internal/RetriableStream;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/internal/RetriableStream$ChannelBufferMeter;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/RetryPolicy$Provider;Lio/grpc/internal/HedgingPolicy$Provider;Lio/grpc/internal/RetriableStream$Throttle;)V

    return-void
.end method


# virtual methods
.method newSubstream(Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/Metadata;)Lio/grpc/internal/ClientStream;
    .locals 3

    .line 534
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0, p1}, Lio/grpc/CallOptions;->withStreamTracerFactory(Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/CallOptions;

    move-result-object p1

    .line 535
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;

    new-instance v1, Lio/grpc/internal/PickSubchannelArgsImpl;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$method:Lio/grpc/MethodDescriptor;

    invoke-direct {v1, v2, p2, p1}, Lio/grpc/internal/PickSubchannelArgsImpl;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    .line 536
    invoke-virtual {v0, v1}, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;->get(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/internal/ClientTransport;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$context:Lio/grpc/Context;

    invoke-virtual {v1}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v1

    .line 539
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$method:Lio/grpc/MethodDescriptor;

    invoke-interface {v0, v2, p2, p1}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    iget-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$context:Lio/grpc/Context;

    invoke-virtual {p2, v1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->val$context:Lio/grpc/Context;

    invoke-virtual {p2, v1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw p1
.end method

.method postCommit()V
    .locals 1

    .line 529
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->remove(Lio/grpc/internal/RetriableStream;)V

    return-void
.end method

.method prestart()Lio/grpc/Status;
    .locals 1

    .line 524
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider$1RetryStream;->this$1:Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$ChannelTransportProvider;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->add(Lio/grpc/internal/RetriableStream;)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method
