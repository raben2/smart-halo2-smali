.class Lio/grpc/internal/CompositeReadableBuffer$4;
.super Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
.source "CompositeReadableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/CompositeReadableBuffer;->readBytes(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/CompositeReadableBuffer;

.field final synthetic val$dest:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lio/grpc/internal/CompositeReadableBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lio/grpc/internal/CompositeReadableBuffer$4;->this$0:Lio/grpc/internal/CompositeReadableBuffer;

    iput-object p2, p0, Lio/grpc/internal/CompositeReadableBuffer$4;->val$dest:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;-><init>(Lio/grpc/internal/CompositeReadableBuffer$1;)V

    return-void
.end method


# virtual methods
.method public readInternal(Lio/grpc/internal/ReadableBuffer;I)I
    .locals 3

    .line 108
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer$4;->val$dest:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 109
    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer$4;->val$dest:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 112
    iget-object p2, p0, Lio/grpc/internal/CompositeReadableBuffer$4;->val$dest:Ljava/nio/ByteBuffer;

    invoke-interface {p1, p2}, Lio/grpc/internal/ReadableBuffer;->readBytes(Ljava/nio/ByteBuffer;)V

    .line 113
    iget-object p1, p0, Lio/grpc/internal/CompositeReadableBuffer$4;->val$dest:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    return p1
.end method
