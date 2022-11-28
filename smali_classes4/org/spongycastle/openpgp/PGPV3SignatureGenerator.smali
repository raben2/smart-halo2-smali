.class public Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;
.super Ljava/lang/Object;
.source "PGPV3SignatureGenerator.java"


# instance fields
.field private contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

.field private contentSignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

.field private lastb:B

.field private providedKeyAlgorithm:I

.field private sigOut:Ljava/io/OutputStream;

.field private sigType:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->providedKeyAlgorithm:I

    .line 36
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

    return-void
.end method

.method private blockUpdate([BII)V
    .locals 1

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 139
    new-instance p2, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to update signature: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private byteUpdate(B)V
    .locals 3

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 127
    new-instance v0, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to update signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public generate()Lorg/spongycastle/openpgp/PGPSignature;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 166
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 168
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    iget v6, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->sigType:I

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x18

    shr-long v6, v1, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 171
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x10

    shr-long v6, v1, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 172
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x8

    shr-long v6, v1, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 173
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    long-to-int v6, v1

    int-to-byte v6, v6

    .line 174
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 176
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 178
    array-length v6, v5

    const/4 v7, 0x0

    invoke-direct {v0, v5, v7, v6}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->blockUpdate([BII)V

    .line 181
    iget-object v5, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v5}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v5

    const/4 v6, 0x1

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    iget-object v5, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    .line 182
    invoke-interface {v5}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v5

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v5, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v5}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getSignature()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/openpgp/PGPUtil;->dsaSigToMpi([B)[Lorg/spongycastle/bcpg/MPInteger;

    move-result-object v5

    move-object/from16 v21, v5

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    new-array v5, v6, [Lorg/spongycastle/bcpg/MPInteger;

    .line 186
    new-instance v8, Lorg/spongycastle/bcpg/MPInteger;

    new-instance v9, Ljava/math/BigInteger;

    iget-object v10, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v10}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getSignature()[B

    move-result-object v10

    invoke-direct {v9, v6, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v8, v9}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v8, v5, v7

    move-object/from16 v21, v5

    .line 193
    :goto_1
    iget-object v5, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v5}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getDigest()[B

    move-result-object v5

    const/4 v8, 0x2

    .line 194
    new-array v8, v8, [B

    .line 196
    aget-byte v9, v5, v7

    aput-byte v9, v8, v7

    .line 197
    aget-byte v5, v5, v6

    aput-byte v5, v8, v6

    .line 199
    new-instance v5, Lorg/spongycastle/openpgp/PGPSignature;

    new-instance v6, Lorg/spongycastle/bcpg/SignaturePacket;

    const/4 v12, 0x3

    iget-object v7, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v7}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getType()I

    move-result v13

    iget-object v7, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v7}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyID()J

    move-result-wide v14

    iget-object v7, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v7}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v16

    iget-object v7, v0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v7}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getHashAlgorithm()I

    move-result v17

    mul-long v18, v1, v3

    move-object v11, v6

    move-object/from16 v20, v8

    invoke-direct/range {v11 .. v21}, Lorg/spongycastle/bcpg/SignaturePacket;-><init>(IIJIIJ[B[Lorg/spongycastle/bcpg/MPInteger;)V

    invoke-direct {v5, v6}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/SignaturePacket;)V

    return-object v5
.end method

.method public generateOnePassVersion(Z)Lorg/spongycastle/openpgp/PGPOnePassSignature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 154
    new-instance v0, Lorg/spongycastle/openpgp/PGPOnePassSignature;

    new-instance v8, Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    iget v2, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->sigType:I

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v1}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getHashAlgorithm()I

    move-result v3

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v1}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v4

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v1}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyID()J

    move-result-wide v5

    move-object v1, v8

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;-><init>(IIIJZ)V

    invoke-direct {v0, v8}, Lorg/spongycastle/openpgp/PGPOnePassSignature;-><init>(Lorg/spongycastle/bcpg/OnePassSignaturePacket;)V

    return-object v0
.end method

.method public init(ILorg/spongycastle/openpgp/PGPPrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;->build(ILorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    .line 52
    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->sigOut:Ljava/io/OutputStream;

    .line 53
    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getType()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->sigType:I

    const/4 p1, 0x0

    .line 54
    iput-byte p1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->lastb:B

    .line 56
    iget p1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->providedKeyAlgorithm:I

    if-ltz p1, :cond_1

    iget-object p2, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p2}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "key algorithm mismatch"

    invoke-direct {p1, p2}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public update(B)V
    .locals 3

    .line 65
    iget v0, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->sigType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 69
    invoke-direct {p0, v1}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->byteUpdate(B)V

    .line 70
    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->byteUpdate(B)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 74
    iget-byte v2, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->lastb:B

    if-eq v2, v1, :cond_2

    .line 76
    invoke-direct {p0, v1}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->byteUpdate(B)V

    .line 77
    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->byteUpdate(B)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->byteUpdate(B)V

    .line 85
    :cond_2
    :goto_0
    iput-byte p1, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->lastb:B

    goto :goto_1

    .line 89
    :cond_3
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->byteUpdate(B)V

    :goto_1
    return-void
.end method

.method public update([B)V
    .locals 2

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 104
    iget v0, p0, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->sigType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-eq p2, p3, :cond_1

    .line 110
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->update(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/PGPV3SignatureGenerator;->blockUpdate([BII)V

    :cond_1
    return-void
.end method
