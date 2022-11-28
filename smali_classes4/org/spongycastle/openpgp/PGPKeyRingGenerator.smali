.class public Lorg/spongycastle/openpgp/PGPKeyRingGenerator;
.super Ljava/lang/Object;
.source "PGPKeyRingGenerator.java"


# instance fields
.field private checksumCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

.field private hashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

.field private keyEncryptor:Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;

.field private keySignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

.field keys:Ljava/util/List;

.field private masterKey:Lorg/spongycastle/openpgp/PGPKeyPair;

.field private unhashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;


# direct methods
.method public constructor <init>(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    move-object v0, p0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    move-object v1, p2

    .line 51
    iput-object v1, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->masterKey:Lorg/spongycastle/openpgp/PGPKeyPair;

    move-object/from16 v10, p8

    .line 52
    iput-object v10, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keyEncryptor:Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;

    move-object/from16 v6, p4

    .line 53
    iput-object v6, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->checksumCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-object/from16 v9, p7

    .line 54
    iput-object v9, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keySignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

    move-object/from16 v7, p5

    .line 55
    iput-object v7, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->hashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-object/from16 v8, p6

    .line 56
    iput-object v8, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->unhashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    .line 58
    iget-object v11, v0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    new-instance v12, Lorg/spongycastle/openpgp/PGPSecretKey;

    move-object v2, v12

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v10}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addSubKey(Lorg/spongycastle/openpgp/PGPKeyPair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->hashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->unhashedPcks:Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->addSubKey(Lorg/spongycastle/openpgp/PGPKeyPair;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    return-void
.end method

.method public addSubKey(Lorg/spongycastle/openpgp/PGPKeyPair;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 95
    :try_start_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keySignerBuilder:Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)V

    const/16 v1, 0x18

    .line 97
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->masterKey:Lorg/spongycastle/openpgp/PGPKeyPair;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->init(ILorg/spongycastle/openpgp/PGPPrivateKey;)V

    .line 99
    invoke-virtual {v0, p2}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    .line 100
    invoke-virtual {v0, p3}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->setUnhashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object p3, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->masterKey:Lorg/spongycastle/openpgp/PGPKeyPair;

    invoke-virtual {p3}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p3

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p3, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;)V

    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->checksumCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    iget-object p2, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keyEncryptor:Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 114
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string p3, "exception adding subkey: "

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 110
    throw p1
.end method

.method public generatePublicKeyRing()Lorg/spongycastle/openpgp/PGPPublicKeyRing;
    .locals 7

    .line 135
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    new-instance v2, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v3}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 144
    new-instance v3, Lorg/spongycastle/bcpg/PublicSubkeyPacket;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v4

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    iget-object v6, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v6}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/spongycastle/bcpg/PublicSubkeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    iput-object v3, v2, Lorg/spongycastle/openpgp/PGPPublicKey;->publicPk:Lorg/spongycastle/bcpg/PublicKeyPacket;

    .line 146
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public generateSecretKeyRing()Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 2

    .line 125
    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;)V

    return-object v0
.end method
