.class public interface abstract Lio/grpc/internal/ReadableBuffer;
.super Ljava/lang/Object;
.source "ReadableBuffer.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract array()[B
.end method

.method public abstract arrayOffset()I
.end method

.method public abstract close()V
.end method

.method public abstract hasArray()Z
.end method

.method public abstract readBytes(I)Lio/grpc/internal/ReadableBuffer;
.end method

.method public abstract readBytes(Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readBytes(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract readBytes([BII)V
.end method

.method public abstract readInt()I
.end method

.method public abstract readUnsignedByte()I
.end method

.method public abstract readableBytes()I
.end method

.method public abstract skipBytes(I)V
.end method
