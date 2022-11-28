.class public Lorg/spongycastle/openpgp/PGPSignatureGenerator;
.super Ljava/lang/Object;
.source "PGPSignatureGenerator.java"


# instance fields
.field private contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

.field private contentSignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

.field private hashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

.field private lastb:B

.field private providedKeyAlgorithm:I

.field private sigOut:Ljava/io/OutputStream;

.field private sigType:I

.field private unhashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    new-array v1, v0, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    iput-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    .line 28
    new-array v0, v0, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->providedKeyAlgorithm:I

    .line 44
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

    return-void
.end method

.method private blockUpdate([BII)V
    .locals 1

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 147
    new-instance p2, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private byteUpdate(B)V
    .locals 2

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 135
    new-instance v0, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getEncodedPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 386
    :try_start_0
    iget-object p1, p1, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 390
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "exception preparing key."

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private insertSubpacket([Lorg/spongycastle/bcpg/SignatureSubpacket;Lorg/spongycastle/bcpg/SignatureSubpacket;)[Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 3

    .line 415
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    const/4 v2, 0x0

    .line 417
    aput-object p2, v0, v2

    .line 418
    array-length p2, p1

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private packetPresent([Lorg/spongycastle/bcpg/SignatureSubpacket;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 400
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 402
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private updateWithIdData(I[B)V
    .locals 0

    int-to-byte p1, p1

    .line 425
    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 426
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 427
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 428
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 429
    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 430
    invoke-virtual {p0, p2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update([B)V

    return-void
.end method

.method private updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->getEncodedPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)[B

    move-result-object p1

    const/16 v0, -0x67

    .line 438
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 439
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 440
    array-length v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    .line 441
    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update([B)V

    return-void
.end method


# virtual methods
.method public generate()Lorg/spongycastle/openpgp/PGPSignature;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->packetPresent([Lorg/spongycastle/bcpg/SignatureSubpacket;I)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    new-instance v4, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {v4, v3, v5}, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;-><init>(ZLjava/util/Date;)V

    invoke-direct {p0, v1, v4}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->insertSubpacket([Lorg/spongycastle/bcpg/SignatureSubpacket;Lorg/spongycastle/bcpg/SignatureSubpacket;)[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v1

    move-object v10, v1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-object v10, v1

    .line 212
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    const/16 v4, 0x10

    invoke-direct {p0, v1, v4}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->packetPresent([Lorg/spongycastle/bcpg/SignatureSubpacket;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    invoke-direct {p0, v1, v4}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->packetPresent([Lorg/spongycastle/bcpg/SignatureSubpacket;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    new-instance v5, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    iget-object v6, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v6}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyID()J

    move-result-wide v6

    invoke-direct {v5, v3, v6, v7}, Lorg/spongycastle/bcpg/sig/IssuerKeyID;-><init>(ZJ)V

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->insertSubpacket([Lorg/spongycastle/bcpg/SignatureSubpacket;Lorg/spongycastle/bcpg/SignatureSubpacket;)[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    .line 218
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-object v11, v1

    :goto_1
    const/4 v1, 0x4

    int-to-byte v1, v1

    .line 223
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 224
    iget v5, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigType:I

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 225
    iget-object v5, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v5}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 226
    iget-object v5, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v5}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getHashAlgorithm()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    .line 230
    :goto_2
    array-length v7, v10

    if-eq v6, v7, :cond_2

    .line 232
    aget-object v7, v10, v6

    invoke-virtual {v7, v5}, Lorg/spongycastle/bcpg/SignatureSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 235
    :cond_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 237
    array-length v6, v5

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    array-length v6, v5

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 239
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 248
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, -0x1

    .line 249
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 250
    array-length v1, v5

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    array-length v1, v5

    shr-int/2addr v1, v4

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 252
    array-length v1, v5

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 253
    array-length v1, v5

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 255
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 257
    array-length v1, v0

    invoke-direct {p0, v0, v3, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->blockUpdate([BII)V

    .line 259
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    const/4 v1, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    .line 260
    invoke-interface {v0}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_3

    .line 267
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getSignature()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/openpgp/PGPUtil;->dsaSigToMpi([B)[Lorg/spongycastle/bcpg/MPInteger;

    move-result-object v0

    move-object v13, v0

    goto :goto_4

    .line 262
    :cond_4
    :goto_3
    new-array v0, v4, [Lorg/spongycastle/bcpg/MPInteger;

    .line 263
    new-instance v1, Lorg/spongycastle/bcpg/MPInteger;

    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v6}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getSignature()[B

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v5}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v1, v0, v3

    move-object v13, v0

    .line 270
    :goto_4
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v0}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getDigest()[B

    move-result-object v0

    .line 271
    new-array v12, v2, [B

    .line 273
    aget-byte v1, v0, v3

    aput-byte v1, v12, v3

    .line 274
    aget-byte v0, v0, v4

    aput-byte v0, v12, v4

    .line 276
    new-instance v0, Lorg/spongycastle/openpgp/PGPSignature;

    new-instance v1, Lorg/spongycastle/bcpg/SignaturePacket;

    iget v5, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigType:I

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v2}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyID()J

    move-result-wide v6

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v2}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v8

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v2}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getHashAlgorithm()I

    move-result v9

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lorg/spongycastle/bcpg/SignaturePacket;-><init>(IJII[Lorg/spongycastle/bcpg/SignatureSubpacket;[Lorg/spongycastle/bcpg/SignatureSubpacket;[B[Lorg/spongycastle/bcpg/MPInteger;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/SignaturePacket;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Lorg/spongycastle/openpgp/PGPException;

    const-string v2, "exception encoding hashed data."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public generateCertification(Ljava/lang/String;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSignature;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 292
    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 297
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/16 p2, 0xb4

    invoke-direct {p0, p2, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->updateWithIdData(I[B)V

    .line 299
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p1

    return-object p1
.end method

.method public generateCertification(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSignature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 368
    iget v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigType:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    :cond_1
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 375
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p1

    return-object p1

    .line 370
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "certifications involving subkey requires public key of revoking key as well."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSignature;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 352
    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 354
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p1

    return-object p1
.end method

.method public generateCertification(Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSignature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 314
    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->updateWithPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 321
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 322
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    move-result-object p1

    const/4 v0, 0x0

    .line 323
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 325
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xd1

    .line 327
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->updateWithIdData(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 331
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "cannot encode subpacket array"

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public generateOnePassVersion(Z)Lorg/spongycastle/openpgp/PGPOnePassSignature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 186
    new-instance v0, Lorg/spongycastle/openpgp/PGPOnePassSignature;

    new-instance v8, Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    iget v2, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigType:I

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v1}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getHashAlgorithm()I

    move-result v3

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {v1}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result v4

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

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

    .line 59
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;->build(ILorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    .line 60
    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigOut:Ljava/io/OutputStream;

    .line 61
    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getType()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigType:I

    const/4 p1, 0x0

    .line 62
    iput-byte p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->lastb:B

    .line 64
    iget p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->providedKeyAlgorithm:I

    if-ltz p1, :cond_1

    iget-object p2, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->contentSigner:Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    invoke-interface {p2}, Lorg/spongycastle/openpgp/operator/PGPContentSigner;->getKeyAlgorithm()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "key algorithm mismatch"

    invoke-direct {p1, p2}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setHashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 156
    new-array p1, p1, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->toSubpacketArray()[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->hashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-void
.end method

.method public setUnhashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 168
    new-array p1, p1, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->toSubpacketArray()[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->unhashed:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 73
    iget v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 77
    invoke-direct {p0, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    .line 78
    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 82
    iget-byte v2, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->lastb:B

    if-eq v2, v1, :cond_2

    .line 84
    invoke-direct {p0, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    .line 85
    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    .line 93
    :cond_2
    :goto_0
    iput-byte p1, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->lastb:B

    goto :goto_1

    .line 97
    :cond_3
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->byteUpdate(B)V

    :goto_1
    return-void
.end method

.method public update([B)V
    .locals 2

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    .line 112
    iget v0, p0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->sigType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/2addr p3, p2

    :goto_0
    if-eq p2, p3, :cond_1

    .line 118
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->blockUpdate([BII)V

    :cond_1
    return-void
.end method
