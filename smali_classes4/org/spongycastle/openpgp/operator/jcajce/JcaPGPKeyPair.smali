.class public Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;
.super Lorg/spongycastle/openpgp/PGPKeyPair;
.source "JcaPGPKeyPair.java"


# direct methods
.method public constructor <init>(ILjava/security/KeyPair;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPKeyPair;-><init>()V

    .line 38
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->getPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 39
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Ljava/security/KeyPair;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPKeyPair;-><init>()V

    .line 45
    invoke-virtual {p3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->getPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 46
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-void
.end method

.method private static getPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/spongycastle/openpgp/PGPPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private static getPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static getPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method
