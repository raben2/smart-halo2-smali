.class final Lio/grpc/protobuf/lite/ProtoInputStream;
.super Ljava/io/InputStream;
.source "ProtoInputStream.java"

# interfaces
.implements Lio/grpc/Drainable;
.implements Lio/grpc/KnownLength;


# instance fields
.field private message:Lcom/google/protobuf/MessageLite;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final parser:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "*>;"
        }
    .end annotation
.end field

.field private partial:Ljava/io/ByteArrayInputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/Parser<",
            "*>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    iput-object p1, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    .line 44
    iput-object p2, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->parser:Lcom/google/protobuf/Parser;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 107
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public drainTo(Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    .line 52
    iget-object v2, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    invoke-interface {v2, p1}, Lcom/google/protobuf/MessageLite;->writeTo(Ljava/io/OutputStream;)V

    .line 53
    iput-object v1, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 55
    invoke-static {v0, p1}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 56
    iput-object v1, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method message()Lcom/google/protobuf/MessageLite;
    .locals 2

    .line 116
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "*>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->parser:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public read()I
    .locals 2

    .line 65
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    .line 69
    :cond_0
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 80
    iput-object v2, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    .line 81
    iput-object v2, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    return v1

    :cond_0
    if-lt p3, v0, :cond_1

    .line 86
    invoke-static {p1, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance([BII)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    invoke-interface {p2, p1}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 88
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 89
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    .line 91
    iput-object v2, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    .line 92
    iput-object v2, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    return v0

    .line 96
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    .line 97
    iput-object v2, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->message:Lcom/google/protobuf/MessageLite;

    .line 99
    :cond_2
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method
