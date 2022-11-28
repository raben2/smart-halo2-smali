.class public Lio/grpc/internal/CompositeReadableBuffer;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "CompositeReadableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
    }
.end annotation


# instance fields
.field private final buffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/internal/ReadableBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private readableBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    return-void
.end method

.method private advanceBufferIfNecessary()V
    .locals 1

    .line 197
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 198
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    :cond_0
    return-void
.end method

.method private execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;I)V
    .locals 2

    .line 167
    invoke-virtual {p0, p2}, Lio/grpc/internal/CompositeReadableBuffer;->checkReadable(I)V

    .line 169
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBufferIfNecessary()V

    :cond_0
    :goto_0
    if-lez p2, :cond_2

    .line 173
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 175
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 178
    invoke-virtual {p1, v0, v1}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->read(Lio/grpc/internal/ReadableBuffer;I)V

    .line 179
    invoke-virtual {p1}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sub-int/2addr p2, v1

    .line 184
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 173
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBufferIfNecessary()V

    goto :goto_0

    :cond_2
    if-gtz p2, :cond_3

    return-void

    .line 189
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Failed executing read operation"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public addBuffer(Lio/grpc/internal/ReadableBuffer;)V
    .locals 2

    .line 45
    instance-of v0, p1, Lio/grpc/internal/CompositeReadableBuffer;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 47
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    return-void

    .line 51
    :cond_0
    check-cast p1, Lio/grpc/internal/CompositeReadableBuffer;

    .line 52
    :goto_0
    iget-object v0, p1, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p1, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 54
    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    iget v1, p1, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    const/4 v0, 0x0

    .line 57
    iput v0, p1, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 58
    invoke-virtual {p1}, Lio/grpc/internal/CompositeReadableBuffer;->close()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 157
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readBytes(I)Lio/grpc/internal/CompositeReadableBuffer;
    .locals 3

    .line 138
    invoke-virtual {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->checkReadable(I)V

    .line 139
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 141
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer;-><init>()V

    :goto_0
    if-lez p1, :cond_1

    .line 143
    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    .line 144
    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 145
    invoke-interface {v1, p1}, Lio/grpc/internal/ReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {v0, v2}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 149
    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->readBytes(I)Lio/grpc/internal/CompositeReadableBuffer;

    move-result-object p1

    return-object p1
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$5;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/CompositeReadableBuffer$5;-><init>(Lio/grpc/internal/CompositeReadableBuffer;Ljava/io/OutputStream;)V

    .line 128
    invoke-direct {p0, v0, p2}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;I)V

    .line 131
    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->isError()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object p1, v0, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->ex:Ljava/io/IOException;

    throw p1
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 104
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$4;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/CompositeReadableBuffer$4;-><init>(Lio/grpc/internal/CompositeReadableBuffer;Ljava/nio/ByteBuffer;)V

    .line 116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    .line 104
    invoke-direct {p0, v0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;I)V

    return-void
.end method

.method public readBytes([BII)V
    .locals 1

    .line 91
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$3;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/internal/CompositeReadableBuffer$3;-><init>(Lio/grpc/internal/CompositeReadableBuffer;I[B)V

    invoke-direct {p0, v0, p3}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;I)V

    return-void
.end method

.method public readUnsignedByte()I
    .locals 2

    .line 68
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/CompositeReadableBuffer$1;-><init>(Lio/grpc/internal/CompositeReadableBuffer;)V

    const/4 v1, 0x1

    .line 74
    invoke-direct {p0, v0, v1}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;I)V

    .line 75
    iget v0, v0, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->value:I

    return v0
.end method

.method public readableBytes()I
    .locals 1

    .line 63
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    return v0
.end method

.method public skipBytes(I)V
    .locals 1

    .line 80
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$2;

    invoke-direct {v0, p0}, Lio/grpc/internal/CompositeReadableBuffer$2;-><init>(Lio/grpc/internal/CompositeReadableBuffer;)V

    invoke-direct {p0, v0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;I)V

    return-void
.end method
