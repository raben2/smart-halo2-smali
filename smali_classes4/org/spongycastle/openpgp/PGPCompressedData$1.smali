.class Lorg/spongycastle/openpgp/PGPCompressedData$1;
.super Ljava/util/zip/InflaterInputStream;
.source "PGPCompressedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private eof:Z

.field final synthetic this$0:Lorg/spongycastle/openpgp/PGPCompressedData;


# direct methods
.method constructor <init>(Lorg/spongycastle/openpgp/PGPCompressedData;Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->this$0:Lorg/spongycastle/openpgp/PGPCompressedData;

    invoke-direct {p0, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->eof:Z

    return-void
.end method


# virtual methods
.method protected fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->eof:Z

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->len:I

    .line 93
    iget v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->buf:[B

    aput-byte v3, v0, v3

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->len:I

    .line 97
    iput-boolean v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->eof:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->buf:[B

    iget v2, p0, Lorg/spongycastle/openpgp/PGPCompressedData$1;->len:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    return-void

    .line 88
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of ZIP input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
