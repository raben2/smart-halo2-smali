.class public Lorg/spongycastle/bcpg/OnePassSignaturePacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "OnePassSignaturePacket.java"


# instance fields
.field private hashAlgorithm:I

.field private keyAlgorithm:I

.field private keyID:J

.field private nested:I

.field private sigType:I

.field private version:I


# direct methods
.method public constructor <init>(IIIJZ)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x3

    .line 46
    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->version:I

    .line 47
    iput p1, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->sigType:I

    .line 48
    iput p2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    .line 49
    iput p3, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    .line 50
    iput-wide p4, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    xor-int/lit8 p1, p6, 0x1

    .line 51
    iput p1, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->nested:I

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    .line 22
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->version:I

    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->sigType:I

    .line 24
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    .line 25
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    .line 27
    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    .line 28
    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    .line 29
    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    .line 30
    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    .line 31
    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    .line 32
    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    .line 33
    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    .line 34
    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    .line 36
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->nested:I

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    new-instance v1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 97
    iget v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->version:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 98
    iget v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->sigType:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 99
    iget v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 100
    iget v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 102
    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 103
    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 104
    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 105
    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 106
    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 107
    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 108
    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 109
    iget-wide v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    long-to-int v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 111
    iget v2, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->nested:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 113
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->close()V

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->hashAlgorithm:I

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyAlgorithm:I

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->keyID:J

    return-wide v0
.end method

.method public getSignatureType()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;->sigType:I

    return v0
.end method
