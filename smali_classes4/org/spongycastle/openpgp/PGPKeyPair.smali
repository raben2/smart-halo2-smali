.class public Lorg/spongycastle/openpgp/PGPKeyPair;
.super Ljava/lang/Object;
.source "PGPKeyPair.java"


# instance fields
.field protected priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

.field protected pub:Lorg/spongycastle/openpgp/PGPPublicKey;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPPrivateKey;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 28
    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-void
.end method


# virtual methods
.method public getKeyID()J
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateKey()Lorg/spongycastle/openpgp/PGPPrivateKey;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->priv:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-object v0
.end method

.method public getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPKeyPair;->pub:Lorg/spongycastle/openpgp/PGPPublicKey;

    return-object v0
.end method
