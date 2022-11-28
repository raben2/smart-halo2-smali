.class Lorg/spongycastle/openpgp/examples/PGPExampleUtil;
.super Ljava/lang/Object;
.source "PGPExampleUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compressFile(Ljava/lang/String;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    new-instance v1, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;

    invoke-direct {v1, p1}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;-><init>(I)V

    .line 32
    invoke-virtual {v1, v0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->open(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x62

    invoke-static {p1, p0, v2}, Lorg/spongycastle/openpgp/PGPUtil;->writeFileToLiteralData(Ljava/io/OutputStream;CLjava/io/File;)V

    .line 34
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->close()V

    .line 35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static findSecretKey(Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;J[C)Lorg/spongycastle/openpgp/PGPPrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;->getSecretKey(J)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    new-instance p1, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string p2, "SC"

    invoke-virtual {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static readPublicKey(Ljava/io/InputStream;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;

    .line 82
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 89
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object p0

    .line 90
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    .line 94
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 99
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->isEncryptionKey()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 106
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t find encryption key in key ring."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static readPublicKey(Ljava/lang/String;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    invoke-static {v0}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->readPublicKey(Ljava/io/InputStream;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0
.end method

.method static readSecretKey(Ljava/io/InputStream;)Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;

    .line 129
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 136
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object p0

    .line 137
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    .line 141
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPSecretKey;

    .line 146
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSecretKey;->isSigningKey()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 153
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t find signing key in key ring."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static readSecretKey(Ljava/lang/String;)Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 112
    invoke-static {v0}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->readSecretKey(Ljava/io/InputStream;)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object p0

    .line 113
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0
.end method
