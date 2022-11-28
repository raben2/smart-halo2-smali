.class public Lorg/spongycastle/bcpg/PublicKeyPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "PublicKeyPacket.java"

# interfaces
.implements Lorg/spongycastle/bcpg/PublicKeyAlgorithmTags;


# instance fields
.field private algorithm:I

.field private key:Lorg/spongycastle/bcpg/BCPGKey;

.field private time:J

.field private validDays:I

.field private version:I


# direct methods
.method public constructor <init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x4

    .line 70
    iput v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->version:I

    .line 71
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->time:J

    .line 72
    iput p1, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->algorithm:I

    .line 73
    iput-object p3, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->key:Lorg/spongycastle/bcpg/BCPGKey;

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->version:I

    .line 24
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->time:J

    .line 26
    iget v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->version:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 28
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->validDays:I

    .line 31
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->algorithm:I

    .line 33
    iget v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->algorithm:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 54
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unknown PGP public key algorithm encountered"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :pswitch_0
    new-instance v0, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->key:Lorg/spongycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 48
    :pswitch_1
    new-instance v0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->key:Lorg/spongycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 41
    :pswitch_2
    new-instance v0, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->key:Lorg/spongycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 45
    :pswitch_3
    new-instance v0, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->key:Lorg/spongycastle/bcpg/BCPGKey;

    goto :goto_0

    .line 38
    :pswitch_4
    new-instance v0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->key:Lorg/spongycastle/bcpg/BCPGKey;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getAlgorithm()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->algorithm:I

    return v0
.end method

.method public getEncodedContents()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    new-instance v1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    iget v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->version:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 109
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->time:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 110
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->time:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 111
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->time:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 112
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->time:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 114
    iget v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->version:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 116
    iget v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->validDays:I

    shr-int/2addr v2, v4

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 117
    iget v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->validDays:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 120
    :cond_0
    iget v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->algorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 122
    iget-object v2, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->key:Lorg/spongycastle/bcpg/BCPGKey;

    check-cast v2, Lorg/spongycastle/bcpg/BCPGObject;

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    .line 124
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->close()V

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lorg/spongycastle/bcpg/BCPGKey;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->key:Lorg/spongycastle/bcpg/BCPGKey;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 5

    .line 93
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->time:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getValidDays()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->validDays:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/spongycastle/bcpg/PublicKeyPacket;->version:I

    return v0
.end method
