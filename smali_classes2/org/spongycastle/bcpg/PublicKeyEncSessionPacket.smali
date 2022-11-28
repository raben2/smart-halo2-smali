.class public Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "PublicKeyEncSessionPacket.java"

# interfaces
.implements Lorg/spongycastle/bcpg/PublicKeyAlgorithmTags;


# instance fields
.field private algorithm:I

.field private data:[[B

.field private keyID:J

.field private version:I


# direct methods
.method public constructor <init>(JI[[B)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x3

    .line 67
    iput v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->version:I

    .line 68
    iput-wide p1, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    .line 69
    iput p3, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->algorithm:I

    .line 70
    array-length p1, p4

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    const/4 p1, 0x0

    .line 72
    :goto_0
    array-length p2, p4

    if-eq p1, p2, :cond_0

    .line 74
    iget-object p2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    aget-object p3, p4, p1

    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    .line 24
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->version:I

    .line 26
    iget-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    .line 27
    iget-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    .line 28
    iget-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    .line 29
    iget-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    .line 30
    iget-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    .line 31
    iget-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    .line 32
    iget-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v5, 0x8

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    .line 33
    iget-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    .line 35
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->algorithm:I

    .line 37
    iget v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->algorithm:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v4, :cond_1

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    const/16 v3, 0x14

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 58
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unknown PGP public key algorithm encountered"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :pswitch_0
    new-array v0, v2, [[B

    iput-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    .line 43
    iget-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    new-instance v2, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v2, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    .line 53
    :cond_0
    new-array v0, v2, [[B

    iput-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    .line 55
    iget-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    invoke-static {p1}, Lorg/spongycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    .line 49
    iget-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    new-instance v3, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v3, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v3}, Lorg/spongycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object v3

    aput-object v3, v0, v1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    new-instance v1, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v1, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p1

    aput-object p1, v0, v2

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    new-instance v1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    iget v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->version:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 107
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 108
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 109
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 110
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 111
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 112
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 113
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 114
    iget-wide v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 116
    iget v2, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->algorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    const/4 v2, 0x0

    .line 118
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    array-length v4, v3

    if-eq v2, v4, :cond_0

    .line 120
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->close()V

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getAlgorithm()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->algorithm:I

    return v0
.end method

.method public getEncSessionKey()[[B
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->data:[[B

    return-object v0
.end method

.method public getKeyID()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->keyID:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;->version:I

    return v0
.end method
