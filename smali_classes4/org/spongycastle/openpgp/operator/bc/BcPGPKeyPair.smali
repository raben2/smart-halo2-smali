.class public Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;
.super Lorg/spongycastle/openpgp/PGPKeyPair;
.source "BcPGPKeyPair.java"


# direct methods
.method public constructor <init>(ILorg/spongycastle/crypto/AsymmetricCipherKeyPair;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPKeyPair;-><init>()V

    .line 31
    invoke-virtual {p2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p3}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->getPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 32
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPKeyPair;-><init>()V

    .line 38
    invoke-virtual {p3}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->getPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 39
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyPair;->priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-void
.end method

.method private static getPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/openpgp/PGPPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPGPPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private static getPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPGPPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method
