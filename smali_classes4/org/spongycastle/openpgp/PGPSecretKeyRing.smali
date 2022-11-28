.class public Lorg/spongycastle/openpgp/PGPSecretKeyRing;
.super Lorg/spongycastle/openpgp/PGPKeyRing;
.source "PGPSecretKeyRing.java"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/spongycastle/openpgp/PGPKeyRing;",
        "Lorg/spongycastle/util/Iterable<",
        "Lorg/spongycastle/openpgp/PGPSecretKey;",
        ">;"
    }
.end annotation


# instance fields
.field extraPubKeys:Ljava/util/List;

.field keys:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    .line 60
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/openpgp/PGPKeyRing;-><init>()V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    .line 64
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->wrap(Ljava/io/InputStream;)Lorg/spongycastle/bcpg/BCPGInputStream;

    move-result-object v10

    .line 66
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v11, 0x7

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    if-ne v1, v11, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secret key ring doesn\'t start with secret key tag: tag 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/spongycastle/bcpg/SecretKeyPacket;

    .line 79
    :goto_1
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/16 v13, 0x3d

    if-ne v1, v13, :cond_2

    .line 81
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    goto :goto_1

    .line 84
    :cond_2
    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v3

    .line 87
    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v4

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-static {v10, v5, v6, v7}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->readUserIDs(Lorg/spongycastle/bcpg/BCPGInputStream;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 94
    iget-object v14, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    new-instance v15, Lorg/spongycastle/openpgp/PGPSecretKey;

    new-instance v8, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v12}, Lorg/spongycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    move-object v1, v8

    move-object v13, v8

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v15, v12, v13}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/bcpg/SecretKeyPacket;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_2
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    if-eq v1, v11, :cond_4

    .line 99
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    return-void

    .line 101
    :cond_4
    :goto_3
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    if-ne v1, v11, :cond_6

    .line 103
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    .line 108
    :goto_4
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_5

    .line 110
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    goto :goto_4

    .line 113
    :cond_5
    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v2

    .line 114
    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v4

    .line 116
    iget-object v5, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    new-instance v6, Lorg/spongycastle/openpgp/PGPSecretKey;

    new-instance v7, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SecretSubkeyPacket;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v8

    invoke-direct {v7, v8, v2, v4, v9}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v6, v1, v7}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(Lorg/spongycastle/bcpg/SecretKeyPacket;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/16 v3, 0x3d

    .line 120
    invoke-virtual {v10}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/PublicSubkeyPacket;

    .line 122
    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v2

    .line 123
    invoke-static {v10}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v4

    .line 125
    iget-object v5, v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    new-instance v6, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {v6, v1, v2, v4, v9}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public static copyWithNewPassword(Lorg/spongycastle/openpgp/PGPSecretKeyRing;Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSecretKey;

    .line 314
    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPSecretKey;->isPrivateKeyEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {v2, p1, p2}, Lorg/spongycastle/openpgp/PGPSecretKey;->copyWithNewPassword(Lorg/spongycastle/openpgp/PGPSecretKey;Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_1
    new-instance p1, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public static insertSecretKey(Lorg/spongycastle/openpgp/PGPSecretKeyRing;Lorg/spongycastle/openpgp/PGPSecretKey;)Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 12

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 343
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 345
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/openpgp/PGPSecretKey;

    .line 347
    invoke-virtual {v5}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v8

    const/4 v10, 0x1

    cmp-long v11, v6, v8

    if-nez v11, :cond_0

    .line 350
    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 352
    :cond_0
    invoke-virtual {v5}, Lorg/spongycastle/openpgp/PGPSecretKey;->isMasterKey()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_5

    .line 360
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->isMasterKey()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v4, :cond_3

    .line 367
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 364
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot add a master key to a ring that already has one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_5
    :goto_1
    new-instance p1, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public static removeSecretKey(Lorg/spongycastle/openpgp/PGPSecretKeyRing;Lorg/spongycastle/openpgp/PGPSecretKey;)Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 8

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 393
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 395
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/openpgp/PGPSecretKey;

    .line 397
    invoke-virtual {v3}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 400
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 409
    :cond_2
    new-instance p1, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public static replacePublicKeys(Lorg/spongycastle/openpgp/PGPSecretKeyRing;Lorg/spongycastle/openpgp/PGPPublicKeyRing;)Lorg/spongycastle/openpgp/PGPSecretKeyRing;
    .locals 4

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPSecretKey;

    .line 285
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    .line 287
    invoke-static {v1, v2}, Lorg/spongycastle/openpgp/PGPSecretKey;->replacePublicKey(Lorg/spongycastle/openpgp/PGPSecretKey;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 250
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 252
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSecretKey;

    .line 254
    invoke-virtual {v2, p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 260
    invoke-virtual {v1, p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->encode(Ljava/io/OutputStream;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtraPublicKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 5

    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 158
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 160
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPublicKeys()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPSecretKey;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSecretKey()Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPSecretKey;

    return-object v0
.end method

.method public getSecretKey(J)Lorg/spongycastle/openpgp/PGPSecretKey;
    .locals 5

    const/4 v0, 0x0

    .line 211
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPSecretKey;

    .line 215
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSecretKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPSecretKey;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPSecretKey;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
