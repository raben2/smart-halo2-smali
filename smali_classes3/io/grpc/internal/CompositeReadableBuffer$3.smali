.class Lio/grpc/internal/CompositeReadableBuffer$3;
.super Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
.source "CompositeReadableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/CompositeReadableBuffer;->readBytes([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentOffset:I

.field final synthetic this$0:Lio/grpc/internal/CompositeReadableBuffer;

.field final synthetic val$dest:[B

.field final synthetic val$destOffset:I


# direct methods
.method constructor <init>(Lio/grpc/internal/CompositeReadableBuffer;I[B)V
    .locals 0

    .line 91
    iput-object p1, p0, Lio/grpc/internal/CompositeReadableBuffer$3;->this$0:Lio/grpc/internal/CompositeReadableBuffer;

    iput p2, p0, Lio/grpc/internal/CompositeReadableBuffer$3;->val$destOffset:I

    iput-object p3, p0, Lio/grpc/internal/CompositeReadableBuffer$3;->val$dest:[B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;-><init>(Lio/grpc/internal/CompositeReadableBuffer$1;)V

    .line 92
    iget p1, p0, Lio/grpc/internal/CompositeReadableBuffer$3;->val$destOffset:I

    iput p1, p0, Lio/grpc/internal/CompositeReadableBuffer$3;->currentOffset:I

    return-void
.end method


# virtual methods
.method public readInternal(Lio/grpc/internal/ReadableBuffer;I)I
    .locals 2

    .line 95
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer$3;->val$dest:[B

    iget v1, p0, Lio/grpc/internal/CompositeReadableBuffer$3;->currentOffset:I

    invoke-interface {p1, v0, v1, p2}, Lio/grpc/internal/ReadableBuffer;->readBytes([BII)V

    .line 96
    iget p1, p0, Lio/grpc/internal/CompositeReadableBuffer$3;->currentOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/grpc/internal/CompositeReadableBuffer$3;->currentOffset:I

    const/4 p1, 0x0

    return p1
.end method
