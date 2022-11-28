.class public Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;
.super Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;
.source "JcePBEKeyEncryptionMethodGenerator.java"


# instance fields
.field private helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>([C)V
    .locals 1

    .line 51
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 76
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    .line 29
    new-instance p1, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance p2, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p2}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-void
.end method

.method public constructor <init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V

    .line 29
    new-instance p1, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance p2, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p2}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-void
.end method

.method public constructor <init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    .line 29
    new-instance p1, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance p2, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p2}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-void
.end method


# virtual methods
.method protected encryptSessionInfo(I[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/CFB/NoPadding"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 119
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x1

    .line 121
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {p2, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p1, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 p1, 0x0

    .line 123
    array-length p2, p3

    invoke-virtual {v0, p3, p1, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 139
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key invalid: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 135
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IV invalid: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 131
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad padding: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    .line 127
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal block size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;
    .locals 2

    .line 100
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;
    .locals 2

    .line 87
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;

    return-object p0
.end method
