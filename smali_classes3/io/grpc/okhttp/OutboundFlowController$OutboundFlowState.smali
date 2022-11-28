.class final Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
.super Ljava/lang/Object;
.source "OutboundFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OutboundFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OutboundFlowState"
.end annotation


# instance fields
.field allocatedBytes:I

.field pendingBufferHasEndOfStream:Z

.field final pendingWriteBuffer:Lokio/Buffer;

.field stream:Lio/grpc/okhttp/OkHttpClientStream;

.field final streamId:I

.field final synthetic this$0:Lio/grpc/okhttp/OutboundFlowController;

.field window:I


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OutboundFlowController;II)V
    .locals 0

    .line 227
    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 225
    iput-boolean p1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingBufferHasEndOfStream:Z

    .line 228
    iput p2, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->streamId:I

    .line 229
    iput p3, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window:I

    .line 230
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteBuffer:Lokio/Buffer;

    return-void
.end method

.method constructor <init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientStream;I)V
    .locals 1

    .line 234
    invoke-virtual {p2}, Lio/grpc/okhttp/OkHttpClientStream;->id()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;II)V

    .line 235
    iput-object p2, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->stream:Lio/grpc/okhttp/OkHttpClientStream;

    return-void
.end method


# virtual methods
.method allocateBytes(I)V
    .locals 1

    .line 243
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocatedBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocatedBytes:I

    return-void
.end method

.method allocatedBytes()I
    .locals 1

    .line 247
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocatedBytes:I

    return v0
.end method

.method clearAllocatedBytes()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocatedBytes:I

    return-void
.end method

.method enqueue(Lokio/Buffer;IZ)V
    .locals 3

    .line 337
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteBuffer:Lokio/Buffer;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 338
    iget-boolean p1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingBufferHasEndOfStream:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingBufferHasEndOfStream:Z

    return-void
.end method

.method hasPendingData()Z
    .locals 5

    .line 286
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method incrementStreamWindow(I)I
    .locals 2

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    .line 263
    iget v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window size overflow for stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_1
    :goto_0
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window:I

    .line 268
    iget p1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window:I

    return p1
.end method

.method streamableBytes()I
    .locals 3

    .line 279
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window:I

    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method unallocatedBytes()I
    .locals 2

    .line 251
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->streamableBytes()I

    move-result v0

    iget v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocatedBytes:I

    sub-int/2addr v0, v1

    return v0
.end method

.method window()I
    .locals 1

    .line 239
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window:I

    return v0
.end method

.method writableWindow()I
    .locals 2

    .line 275
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window:I

    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-static {v1}, Lio/grpc/okhttp/OutboundFlowController;->access$100(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method write(Lokio/Buffer;IZ)V
    .locals 6

    .line 321
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-static {v0}, Lio/grpc/okhttp/OutboundFlowController;->access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 322
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-static {v1}, Lio/grpc/okhttp/OutboundFlowController;->access$100(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    .line 323
    invoke-virtual {p0, v2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    .line 326
    :try_start_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 327
    :goto_0
    iget-object v2, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    invoke-static {v2}, Lio/grpc/okhttp/OutboundFlowController;->access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v2

    iget v3, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->streamId:I

    invoke-interface {v2, v1, v3, p1, v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->stream:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->onSentBytes(I)V

    sub-int/2addr p2, v0

    if-gtz p2, :cond_0

    return-void

    :catch_0
    move-exception p1

    .line 329
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I
    .locals 8

    .line 294
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writableWindow()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 295
    :goto_0
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->hasPendingData()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v0, :cond_1

    int-to-long v3, v0

    .line 296
    iget-object v5, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 298
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    long-to-int v0, v3

    add-int/2addr v2, v0

    .line 299
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    long-to-int v4, v3

    iget-boolean v3, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingBufferHasEndOfStream:Z

    invoke-virtual {p0, v0, v4, v3}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->write(Lokio/Buffer;IZ)V

    goto :goto_1

    :cond_0
    add-int/2addr v2, v0

    .line 302
    iget-object v3, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteBuffer:Lokio/Buffer;

    invoke-virtual {p0, v3, v0, v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->write(Lokio/Buffer;IZ)V

    .line 304
    :goto_1
    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->incrementNumWrites()V

    sub-int v0, p1, v2

    .line 306
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writableWindow()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    return v2
.end method
