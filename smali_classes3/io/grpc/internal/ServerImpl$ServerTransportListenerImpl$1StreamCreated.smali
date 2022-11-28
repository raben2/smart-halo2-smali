.class final Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;
.super Lio/grpc/internal/ContextRunnable;
.source "ServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->streamCreatedInternal(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;Lio/perfmark/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StreamCreated"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

.field final synthetic val$context:Lio/grpc/Context$CancellableContext;

.field final synthetic val$headers:Lio/grpc/Metadata;

.field final synthetic val$jumpListener:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

.field final synthetic val$link:Lio/perfmark/Link;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field final synthetic val$stream:Lio/grpc/internal/ServerStream;

.field final synthetic val$tag:Lio/perfmark/Tag;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/Context$CancellableContext;Lio/perfmark/Tag;Lio/perfmark/Link;Ljava/lang/String;Lio/grpc/internal/ServerStream;Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iput-object p2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$context:Lio/grpc/Context$CancellableContext;

    iput-object p3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$tag:Lio/perfmark/Tag;

    iput-object p4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$link:Lio/perfmark/Link;

    iput-object p5, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$methodName:Ljava/lang/String;

    iput-object p6, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$stream:Lio/grpc/internal/ServerStream;

    iput-object p7, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$headers:Lio/grpc/Metadata;

    iput-object p8, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iput-object p9, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$jumpListener:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    .line 523
    invoke-direct {p0, p2}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    return-void
.end method

.method private runInternal()V
    .locals 11

    .line 538
    invoke-static {}, Lio/grpc/internal/ServerImpl;->access$1600()Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 540
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v2, v2, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl;->access$1700(Lio/grpc/internal/ServerImpl;)Lio/grpc/HandlerRegistry;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/grpc/HandlerRegistry;->lookupMethod(Ljava/lang/String;)Lio/grpc/ServerMethodDefinition;

    move-result-object v2

    if-nez v2, :cond_0

    .line 542
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v2, v2, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl;->access$1800(Lio/grpc/internal/ServerImpl;)Lio/grpc/HandlerRegistry;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$methodName:Ljava/lang/String;

    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$stream:Lio/grpc/internal/ServerStream;

    invoke-interface {v4}, Lio/grpc/internal/ServerStream;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/grpc/HandlerRegistry;->lookupMethod(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/ServerMethodDefinition;

    move-result-object v2

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    if-nez v6, :cond_1

    .line 545
    sget-object v2, Lio/grpc/Status;->UNIMPLEMENTED:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$methodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 552
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$stream:Lio/grpc/internal/ServerStream;

    new-instance v4, Lio/grpc/Metadata;

    invoke-direct {v4}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v3, v2, v4}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 553
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {v2, v1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$jumpListener:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-virtual {v1, v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    return-void

    .line 556
    :cond_1
    :try_start_1
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v4, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$stream:Lio/grpc/internal/ServerStream;

    iget-object v5, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$methodName:Ljava/lang/String;

    iget-object v7, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$headers:Lio/grpc/Metadata;

    iget-object v8, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$context:Lio/grpc/Context$CancellableContext;

    iget-object v9, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    iget-object v10, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$tag:Lio/perfmark/Tag;

    invoke-static/range {v3 .. v10}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->access$1900(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/ServerMethodDefinition;Lio/grpc/Metadata;Lio/grpc/Context$CancellableContext;Lio/grpc/internal/StatsTraceContext;Lio/perfmark/Tag;)Lio/grpc/internal/ServerStreamListener;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$jumpListener:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-virtual {v1, v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    .line 584
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$context:Lio/grpc/Context$CancellableContext;

    new-instance v1, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated$1ServerStreamCancellationListener;

    invoke-direct {v1, p0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated$1ServerStreamCancellationListener;-><init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Context$CancellableContext;->addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 562
    :try_start_2
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$stream:Lio/grpc/internal/ServerStream;

    invoke-static {v2}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v4

    new-instance v5, Lio/grpc/Metadata;

    invoke-direct {v5}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v3, v4, v5}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 563
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {v3, v1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 564
    throw v2

    :catch_1
    move-exception v2

    .line 558
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$stream:Lio/grpc/internal/ServerStream;

    invoke-static {v2}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v4

    new-instance v5, Lio/grpc/Metadata;

    invoke-direct {v5}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v3, v4, v5}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 559
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {v3, v1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 560
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    :goto_1
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$jumpListener:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-virtual {v2, v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->setListener(Lio/grpc/internal/ServerStreamListener;)V

    throw v1
.end method


# virtual methods
.method public runInContext()V
    .locals 3

    const-string v0, "ServerTransportListener$StreamCreated.startCall"

    .line 528
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$tag:Lio/perfmark/Tag;

    invoke-static {v0, v1}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 529
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$link:Lio/perfmark/Link;

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    .line 531
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->runInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ServerTransportListener$StreamCreated.startCall"

    .line 533
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$tag:Lio/perfmark/Tag;

    invoke-static {v0, v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$1StreamCreated;->val$tag:Lio/perfmark/Tag;

    const-string v2, "ServerTransportListener$StreamCreated.startCall"

    invoke-static {v2, v1}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method
