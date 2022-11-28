.class public abstract Lio/grpc/internal/AbstractReadableBuffer;
.super Ljava/lang/Object;
.source "AbstractReadableBuffer.java"

# interfaces
.implements Lio/grpc/internal/ReadableBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final checkReadable(I)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readableBytes()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final readInt()I
    .locals 4

    const/4 v0, 0x4

    .line 25
    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractReadableBuffer;->checkReadable(I)V

    .line 26
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v0

    .line 27
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v1

    .line 28
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v2

    .line 29
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method
