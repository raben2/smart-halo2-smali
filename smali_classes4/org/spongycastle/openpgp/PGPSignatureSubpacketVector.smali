.class public Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;
.super Ljava/lang/Object;
.source "PGPSignatureSubpacketVector.java"


# instance fields
.field packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;


# direct methods
.method constructor <init>([Lorg/spongycastle/bcpg/SignatureSubpacket;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-void
.end method


# virtual methods
.method public getCriticalTags()[I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 259
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v4, v3

    if-eq v1, v4, :cond_1

    .line 261
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    new-array v1, v2, [I

    const/4 v2, 0x0

    .line 271
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v4, v3

    if-eq v0, v4, :cond_3

    .line 273
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 275
    iget-object v4, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public getEmbeddedSignatures()Lorg/spongycastle/openpgp/PGPSignatureList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 85
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpackets(I)[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 88
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 92
    :try_start_0
    new-instance v3, Lorg/spongycastle/openpgp/PGPSignature;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/bcpg/SignaturePacket;->fromByteArray([B)Lorg/spongycastle/bcpg/SignaturePacket;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/SignaturePacket;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse signature packet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 100
    :cond_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPSignatureList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/openpgp/PGPSignature;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/spongycastle/openpgp/PGPSignature;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPSignatureList;-><init>([Lorg/spongycastle/openpgp/PGPSignature;)V

    return-object v0
.end method

.method public getFeatures()Lorg/spongycastle/bcpg/sig/Features;
    .locals 4

    const/16 v0, 0x1e

    .line 284
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_0
    new-instance v1, Lorg/spongycastle/bcpg/sig/Features;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isCritical()Z

    move-result v2

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->isLongLength()Z

    move-result v3

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getData()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/spongycastle/bcpg/sig/Features;-><init>(ZZ[B)V

    return-object v1
.end method

.method public getIssuerKeyID()J
    .locals 2

    const/16 v0, 0x10

    .line 125
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 132
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/IssuerKeyID;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeyExpirationTime()J
    .locals 2

    const/16 v0, 0x9

    .line 173
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 180
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeyFlags()I
    .locals 1

    const/16 v0, 0x1b

    .line 221
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/sig/KeyFlags;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/KeyFlags;->getFlags()I

    move-result v0

    return v0
.end method

.method public getNotationDataOccurences()[Lorg/spongycastle/bcpg/sig/NotationData;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getNotationDataOccurrences()[Lorg/spongycastle/bcpg/sig/NotationData;

    move-result-object v0

    return-object v0
.end method

.method public getNotationDataOccurrences()[Lorg/spongycastle/bcpg/sig/NotationData;
    .locals 4

    const/16 v0, 0x14

    .line 105
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpackets(I)[Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    .line 106
    array-length v1, v0

    new-array v1, v1, [Lorg/spongycastle/bcpg/sig/NotationData;

    const/4 v2, 0x0

    .line 107
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 109
    aget-object v3, v0, v2

    check-cast v3, Lorg/spongycastle/bcpg/sig/NotationData;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPreferredCompressionAlgorithms()[I
    .locals 1

    const/16 v0, 0x16

    .line 209
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;->getPreferences()[I

    move-result-object v0

    return-object v0
.end method

.method public getPreferredHashAlgorithms()[I
    .locals 1

    const/16 v0, 0x15

    .line 185
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 192
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;->getPreferences()[I

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSymmetricAlgorithms()[I
    .locals 1

    const/16 v0, 0xb

    .line 197
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;->getPreferences()[I

    move-result-object v0

    return-object v0
.end method

.method public getSignatureCreationTime()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x2

    .line 137
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureExpirationTime()J
    .locals 2

    const/4 v0, 0x3

    .line 155
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 162
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignerUserID()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    .line 233
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/sig/SignerUserID;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/SignerUserID;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 3

    const/4 v0, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v2, v1

    if-eq v0, v2, :cond_1

    .line 40
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 42
    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubpackets(I)[Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 5

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 71
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v4, v3

    if-eq v2, v4, :cond_1

    .line 73
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/SignatureSubpacket;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 75
    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    new-array p1, v1, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-object p1
.end method

.method public hasSubpacket(I)Z
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPrimaryUserID()Z
    .locals 1

    const/16 v0, 0x19

    .line 245
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/SignatureSubpacket;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/sig/PrimaryUserID;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/sig/PrimaryUserID;->isPrimaryUserID()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    array-length v0, v0

    return v0
.end method

.method toSubpacketArray()[Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;->packets:[Lorg/spongycastle/bcpg/SignatureSubpacket;

    return-object v0
.end method
