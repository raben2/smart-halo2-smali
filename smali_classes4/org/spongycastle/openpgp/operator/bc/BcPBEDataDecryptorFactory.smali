.class public Lorg/spongycastle/openpgp/operator/bc/BcPBEDataDecryptorFactory;
.super Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;
.source "BcPBEDataDecryptorFactory.java"


# direct methods
.method public constructor <init>([CLorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 64
    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p2

    .line 66
    invoke-static {p1, p2, p3}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createDataDecryptor(ZLorg/spongycastle/crypto/BlockCipher;[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    return-object p1
.end method

.method public recoverSessionData(I[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 32
    :try_start_0
    array-length v1, p3

    if-lez v1, :cond_0

    .line 34
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v0, p1, p2, v1}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createSymmetricKeyWrapper(ZLorg/spongycastle/crypto/BlockCipher;[B[B)Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object p1

    .line 37
    array-length p2, p3

    new-array p2, p2, [B

    const/4 v4, 0x0

    .line 39
    array-length v5, p3

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p3

    .line 41
    invoke-virtual {p1, p2, p3}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    return-object p2

    .line 47
    :cond_0
    array-length p3, p2

    const/4 v1, 0x1

    add-int/2addr p3, v1

    new-array p3, p3, [B

    int-to-byte p1, p1

    .line 49
    aput-byte p1, p3, v0

    .line 50
    array-length p1, p2

    invoke-static {p2, v0, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string p3, "Exception recovering session info"

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
