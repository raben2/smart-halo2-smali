.class public abstract Lorg/spongycastle/openpgp/PGPKeyRing;
.super Ljava/lang/Object;
.source "PGPKeyRing.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/bcpg/TrustPacket;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/SignaturePacket;

    .line 54
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v2

    .line 56
    new-instance v3, Lorg/spongycastle/openpgp/PGPSignature;

    invoke-direct {v3, v1, v2}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/SignaturePacket;Lorg/spongycastle/bcpg/TrustPacket;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 63
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create signature object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static readUserIDs(Lorg/spongycastle/bcpg/BCPGInputStream;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 78
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v0

    .line 79
    instance-of v1, v0, Lorg/spongycastle/bcpg/UserIDPacket;

    if-eqz v1, :cond_2

    .line 81
    check-cast v0, Lorg/spongycastle/bcpg/UserIDPacket;

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 86
    :cond_2
    check-cast v0, Lorg/spongycastle/bcpg/UserAttributePacket;

    .line 87
    new-instance v1, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/UserAttributePacket;->getSubpackets()[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;-><init>([Lorg/spongycastle/bcpg/UserAttributeSubpacket;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_2
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;->readOptionalTrustPacket(Lorg/spongycastle/bcpg/BCPGInputStream;)Lorg/spongycastle/bcpg/TrustPacket;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPKeyRing;->readSignaturesAndTrust(Lorg/spongycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static wrap(Ljava/io/InputStream;)Lorg/spongycastle/bcpg/BCPGInputStream;
    .locals 1

    .line 26
    instance-of v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lorg/spongycastle/bcpg/BCPGInputStream;

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public abstract encode(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;
.end method

.method public abstract getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;
.end method

.method public abstract getPublicKeys()Ljava/util/Iterator;
.end method
