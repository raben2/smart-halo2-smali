.class public Lorg/spongycastle/openpgp/PGPPublicKeyRing;
.super Lorg/spongycastle/openpgp/PGPKeyRing;
.source "PGPPublicKeyRing.java"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/spongycastle/openpgp/PGPKeyRing;",
        "Lorg/spongycastle/util/Iterable<",
        "Lorg/spongycastle/openpgp/PGPPublicKey;",
        ">;"
    }
.end annotation


# instance fields
.field keys:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    .line 57
    invoke-static {p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->wrap(Ljava/io/InputStream;)Lorg/spongycastle/bcpg/BCPGInputStream;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public key ring doesn\'t start with public key tag: tag 0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/spongycastle/bcpg/PublicKeyPacket;

    .line 68
    invoke-static {p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v4

    .line 71
    invoke-static {p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v5

    .line 73
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-static {p1, v6, v7, v8}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->readUserIDs(Lorg/spongycastle/bcpg/BCPGInputStream;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    new-instance v10, Lorg/spongycastle/openpgp/PGPPublicKey;

    move-object v2, v10

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-static {p1, p2}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->readSubkey(Lorg/spongycastle/bcpg/BCPGInputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 90
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public static insertPublicKey(Lorg/spongycastle/openpgp/PGPPublicKeyRing;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPPublicKeyRing;
    .locals 11

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 183
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 187
    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v5

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v7

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-nez v10, :cond_0

    .line 190
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 192
    :cond_0
    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    .line 200
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    .line 207
    invoke-interface {v0, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 204
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot add a master key to a ring that already has one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_5
    :goto_1
    new-instance p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method static readSubkey(Lorg/spongycastle/bcpg/BCPGInputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/PublicKeyPacket;

    .line 256
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v1

    .line 259
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object p0

    .line 261
    new-instance v2, Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-direct {v2, v0, v1, p0, p1}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object v2
.end method

.method public static removePublicKey(Lorg/spongycastle/openpgp/PGPPublicKeyRing;Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/PGPPublicKeyRing;
    .locals 7

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 233
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 235
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 237
    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 240
    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 249
    :cond_2
    new-instance p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 163
    invoke-virtual {v1, p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->encode(Ljava/io/OutputStream;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/openpgp/PGPPublicKey;

    return-object v0
.end method

.method public getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 5

    const/4 v0, 0x0

    .line 114
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 118
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

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

.method public getPublicKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

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
            "Lorg/spongycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
