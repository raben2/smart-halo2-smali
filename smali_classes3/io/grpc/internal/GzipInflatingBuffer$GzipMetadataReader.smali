.class Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;
.super Ljava/lang/Object;
.source "GzipInflatingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GzipInflatingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GzipMetadataReader"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/GzipInflatingBuffer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/GzipInflatingBuffer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/GzipInflatingBuffer;Lio/grpc/internal/GzipInflatingBuffer$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;-><init>(Lio/grpc/internal/GzipInflatingBuffer;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->skipBytes(I)V

    return-void
.end method

.method static synthetic access$1100(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readBytesUntilZero()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)J
    .locals 2

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readableBytes()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedShort()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;)I
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedByte()I

    move-result p0

    return p0
.end method

.method private readBytesUntilZero()Z
    .locals 1

    .line 118
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readableBytes()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private readUnsignedByte()I
    .locals 3

    .line 67
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer;->access$000(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer;->access$200(Lio/grpc/internal/GzipInflatingBuffer;)[B

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v2}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 71
    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v2, v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$112(Lio/grpc/internal/GzipInflatingBuffer;I)I

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer;->access$300(Lio/grpc/internal/GzipInflatingBuffer;)Lio/grpc/internal/CompositeReadableBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->readUnsignedByte()I

    move-result v0

    .line 75
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v2}, Lio/grpc/internal/GzipInflatingBuffer;->access$400(Lio/grpc/internal/GzipInflatingBuffer;)Ljava/util/zip/CRC32;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 76
    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v2, v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$512(Lio/grpc/internal/GzipInflatingBuffer;I)I

    return v0
.end method

.method private readUnsignedInt()J
    .locals 5

    .line 133
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedShort()I

    move-result v0

    int-to-long v0, v0

    .line 134
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedShort()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private readUnsignedShort()I
    .locals 2

    .line 128
    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedByte()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readableBytes()I
    .locals 2

    .line 113
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer;->access$000(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$300(Lio/grpc/internal/GzipInflatingBuffer;)Lio/grpc/internal/CompositeReadableBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private skipBytes(I)V
    .locals 6

    .line 89
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v0}, Lio/grpc/internal/GzipInflatingBuffer;->access$000(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v0

    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 92
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 93
    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1}, Lio/grpc/internal/GzipInflatingBuffer;->access$400(Lio/grpc/internal/GzipInflatingBuffer;)Ljava/util/zip/CRC32;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v2}, Lio/grpc/internal/GzipInflatingBuffer;->access$200(Lio/grpc/internal/GzipInflatingBuffer;)[B

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v3}, Lio/grpc/internal/GzipInflatingBuffer;->access$100(Lio/grpc/internal/GzipInflatingBuffer;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 94
    iget-object v1, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v1, v0}, Lio/grpc/internal/GzipInflatingBuffer;->access$112(Lio/grpc/internal/GzipInflatingBuffer;I)I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    const/16 v1, 0x200

    .line 99
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    sub-int v4, v0, v3

    .line 102
    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 103
    iget-object v5, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v5}, Lio/grpc/internal/GzipInflatingBuffer;->access$300(Lio/grpc/internal/GzipInflatingBuffer;)Lio/grpc/internal/CompositeReadableBuffer;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4}, Lio/grpc/internal/CompositeReadableBuffer;->readBytes([BII)V

    .line 104
    iget-object v5, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v5}, Lio/grpc/internal/GzipInflatingBuffer;->access$400(Lio/grpc/internal/GzipInflatingBuffer;)Ljava/util/zip/CRC32;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4}, Ljava/util/zip/CRC32;->update([BII)V

    add-int/2addr v3, v4

    goto :goto_1

    .line 109
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/GzipInflatingBuffer$GzipMetadataReader;->this$0:Lio/grpc/internal/GzipInflatingBuffer;

    invoke-static {v0, p1}, Lio/grpc/internal/GzipInflatingBuffer;->access$512(Lio/grpc/internal/GzipInflatingBuffer;I)I

    return-void
.end method
