.class public Lorg/spongycastle/openpgp/PGPPrivateKey;
.super Ljava/lang/Object;
.source "PGPPrivateKey.java"


# instance fields
.field private keyID:J

.field private privateKeyDataPacket:Lorg/spongycastle/bcpg/BCPGKey;

.field private publicKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;


# direct methods
.method public constructor <init>(JLorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/BCPGKey;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->keyID:J

    .line 32
    iput-object p3, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->publicKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

    .line 33
    iput-object p4, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->privateKeyDataPacket:Lorg/spongycastle/bcpg/BCPGKey;

    return-void
.end method


# virtual methods
.method public getKeyID()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->keyID:J

    return-wide v0
.end method

.method public getPrivateKeyDataPacket()Lorg/spongycastle/bcpg/BCPGKey;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->privateKeyDataPacket:Lorg/spongycastle/bcpg/BCPGKey;

    return-object v0
.end method

.method public getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPrivateKey;->publicKeyPacket:Lorg/spongycastle/bcpg/PublicKeyPacket;

    return-object v0
.end method
