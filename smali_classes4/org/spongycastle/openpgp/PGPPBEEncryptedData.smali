.class public Lorg/spongycastle/openpgp/PGPPBEEncryptedData;
.super Lorg/spongycastle/openpgp/PGPEncryptedData;
.source "PGPPBEEncryptedData.java"


# instance fields
.field keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;


# direct methods
.method constructor <init>(Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;Lorg/spongycastle/bcpg/InputStreamPacket;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Lorg/spongycastle/openpgp/PGPEncryptedData;-><init>(Lorg/spongycastle/bcpg/InputStreamPacket;)V

    .line 40
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    return-void
.end method


# virtual methods
.method public getDataStream(Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->getEncAlgorithm()I

    move-result v0

    .line 77
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->getS2K()Lorg/spongycastle/bcpg/S2K;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->makeKeyFromPassPhrase(ILorg/spongycastle/bcpg/S2K;)[B

    move-result-object v0

    .line 78
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->encData:Lorg/spongycastle/bcpg/InputStreamPacket;

    instance-of v1, v1, Lorg/spongycastle/bcpg/SymmetricEncIntegrityPacket;

    .line 80
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->getEncAlgorithm()I

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->getSecKeyData()[B

    move-result-object v3

    invoke-virtual {p1, v2, v0, v3}, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->recoverSessionData(I[B[B)[B

    move-result-object v0

    .line 81
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 83
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    .line 87
    new-instance v0, Lorg/spongycastle/bcpg/BCPGInputStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->encData:Lorg/spongycastle/bcpg/InputStreamPacket;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/InputStreamPacket;->getInputStream()Lorg/spongycastle/bcpg/BCPGInputStream;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 91
    new-instance v0, Lorg/spongycastle/openpgp/PGPEncryptedData$TruncatedStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/openpgp/PGPEncryptedData$TruncatedStream;-><init>(Lorg/spongycastle/openpgp/PGPEncryptedData;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->truncStream:Lorg/spongycastle/openpgp/PGPEncryptedData$TruncatedStream;

    .line 93
    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;->getIntegrityCalculator()Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->integrityCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    .line 95
    new-instance v0, Lorg/spongycastle/util/io/TeeInputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->truncStream:Lorg/spongycastle/openpgp/PGPEncryptedData$TruncatedStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->integrityCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    .line 98
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 99
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_2

    .line 101
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    int-to-byte v1, v1

    .line 108
    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "unexpected end of stream."

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 112
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v0, :cond_7

    if-ltz v1, :cond_7

    .line 123
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p1, v2

    int-to-byte v4, v0

    if-ne v2, v4, :cond_3

    array-length v2, p1

    sub-int/2addr v2, v3

    aget-byte p1, p1, v2

    int-to-byte v2, v1

    if-ne p1, v2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez p1, :cond_6

    if-eqz v3, :cond_5

    goto :goto_3

    .line 132
    :cond_5
    new-instance p1, Lorg/spongycastle/openpgp/PGPDataValidationException;

    const-string v0, "data check failed."

    invoke-direct {p1, v0}, Lorg/spongycastle/openpgp/PGPDataValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->encStream:Ljava/io/InputStream;

    return-object p1

    .line 116
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "unexpected end of stream."

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 143
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "Exception creating cipher"

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 139
    throw p1
.end method

.method public getSymmetricAlgorithm(Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->getEncAlgorithm()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->getS2K()Lorg/spongycastle/bcpg/S2K;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->makeKeyFromPassPhrase(ILorg/spongycastle/bcpg/S2K;)[B

    move-result-object v0

    .line 56
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->getEncAlgorithm()I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->keyData:Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->getSecKeyData()[B

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->recoverSessionData(I[B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 58
    aget-byte p1, p1, v0

    return p1
.end method
