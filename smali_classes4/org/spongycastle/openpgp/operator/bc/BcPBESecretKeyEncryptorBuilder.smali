.class public Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;
.super Ljava/lang/Object;
.source "BcPBESecretKeyEncryptorBuilder.java"


# instance fields
.field private encAlgorithm:I

.field private random:Ljava/security/SecureRandom;

.field private s2kCount:I

.field private s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 21
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;-><init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 32
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;-><init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 1

    const/16 v0, 0x60

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;-><init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x60

    .line 17
    iput v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->s2kCount:I

    .line 57
    iput p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->encAlgorithm:I

    .line 58
    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-gt p3, p1, :cond_0

    .line 65
    iput p3, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->s2kCount:I

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "s2KCount value outside of range 0 to 255."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;
    .locals 8

    .line 83
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->random:Ljava/security/SecureRandom;

    .line 88
    :cond_0
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;

    iget v3, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->encAlgorithm:I

    iget-object v4, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    iget v5, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->s2kCount:I

    iget-object v6, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->random:Ljava/security/SecureRandom;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V

    return-object v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
