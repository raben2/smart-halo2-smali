.class public Lio/grpc/internal/ApplicationThreadDeframer;
.super Ljava/lang/Object;
.source "ApplicationThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/Deframer;
.implements Lio/grpc/internal/MessageDeframer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;,
        Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;
    }
.end annotation


# instance fields
.field private final deframer:Lio/grpc/internal/MessageDeframer;

.field private final messageReadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final storedListener:Lio/grpc/internal/MessageDeframer$Listener;

.field private final transportExecutor:Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;


# direct methods
.method constructor <init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;Lio/grpc/internal/MessageDeframer;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->messageReadQueue:Ljava/util/Queue;

    const-string v0, "listener"

    .line 50
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/MessageDeframer$Listener;

    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    const-string p1, "transportExecutor"

    .line 51
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;

    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;

    .line 52
    invoke-virtual {p3, p0}, Lio/grpc/internal/MessageDeframer;->setListener(Lio/grpc/internal/MessageDeframer$Listener;)V

    .line 53
    iput-object p3, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    return-object p0
.end method

.method static synthetic access$100(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer$Listener;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    return-object p0
.end method

.method static synthetic access$300(Lio/grpc/internal/ApplicationThreadDeframer;)Ljava/util/Queue;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->messageReadQueue:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public bytesRead(I)V
    .locals 2

    .line 135
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$5;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframer$5;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;I)V

    invoke-interface {v0, v1}, Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;->runOnTransportThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 4

    .line 122
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageDeframer;->stopDelivery()V

    .line 123
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;

    new-instance v2, Lio/grpc/internal/ApplicationThreadDeframer$4;

    invoke-direct {v2, p0}, Lio/grpc/internal/ApplicationThreadDeframer$4;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public closeWhenComplete()V
    .locals 4

    .line 110
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;

    new-instance v2, Lio/grpc/internal/ApplicationThreadDeframer$3;

    invoke-direct {v2, p0}, Lio/grpc/internal/ApplicationThreadDeframer$3;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public deframe(Lio/grpc/internal/ReadableBuffer;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;

    new-instance v2, Lio/grpc/internal/ApplicationThreadDeframer$2;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframer$2;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public deframeFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$7;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframer$7;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;->runOnTransportThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deframerClosed(Z)V
    .locals 2

    .line 154
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$6;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframer$6;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Z)V

    invoke-interface {v0, v1}, Lio/grpc/internal/ApplicationThreadDeframer$TransportExecutor;->runOnTransportThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 2

    .line 147
    :goto_0
    invoke-interface {p1}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lio/grpc/internal/ApplicationThreadDeframer;->messageReadQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public request(I)V
    .locals 3

    .line 73
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;

    new-instance v2, Lio/grpc/internal/ApplicationThreadDeframer$1;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframer$1;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;I)V

    const/4 p1, 0x0

    invoke-direct {v1, p0, v2, p1}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void
.end method

.method public setDecompressor(Lio/grpc/Decompressor;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setDecompressor(Lio/grpc/Decompressor;)V

    return-void
.end method

.method public setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V

    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setMaxInboundMessageSize(I)V

    return-void
.end method
