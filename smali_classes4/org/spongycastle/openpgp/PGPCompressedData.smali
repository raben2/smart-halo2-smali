.class public Lorg/spongycastle/openpgp/PGPCompressedData;
.super Ljava/lang/Object;
.source "PGPCompressedData.java"

# interfaces
.implements Lorg/spongycastle/bcpg/CompressionAlgorithmTags;


# instance fields
.field data:Lorg/spongycastle/bcpg/CompressedDataPacket;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/CompressedDataPacket;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPCompressedData;->data:Lorg/spongycastle/bcpg/CompressedDataPacket;

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData;->data:Lorg/spongycastle/bcpg/CompressedDataPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/CompressedDataPacket;->getAlgorithm()I

    move-result v0

    return v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 75
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedData$1;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p0, v2, v3}, Lorg/spongycastle/openpgp/PGPCompressedData$1;-><init>(Lorg/spongycastle/openpgp/PGPCompressedData;Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 108
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedData$2;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/openpgp/PGPCompressedData$2;-><init>(Lorg/spongycastle/openpgp/PGPCompressedData;Ljava/io/InputStream;)V

    return-object v0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 143
    :try_start_0
    new-instance v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O problem with stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 151
    :cond_3
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t recognise compression algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getAlgorithm()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedData;->data:Lorg/spongycastle/bcpg/CompressedDataPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/CompressedDataPacket;->getInputStream()Lorg/spongycastle/bcpg/BCPGInputStream;

    move-result-object v0

    return-object v0
.end method
