.class public Lorg/spongycastle/bcpg/SignatureSubpacket;
.super Ljava/lang/Object;
.source "SignatureSubpacket.java"


# instance fields
.field critical:Z

.field protected data:[B

.field isLongLength:Z

.field type:I


# direct methods
.method protected constructor <init>(IZZ[B)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->type:I

    .line 23
    iput-boolean p2, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->critical:Z

    .line 24
    iput-boolean p3, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->isLongLength:Z

    .line 25
    iput-object p4, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 57
    iget-boolean v1, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->isLongLength:Z

    const/16 v2, 0xff

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    .line 60
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    .line 61
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v0, v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xc0

    if-ge v0, v1, :cond_1

    int-to-byte v0, v0

    .line 69
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x20bf

    if-gt v0, v3, :cond_2

    add-int/lit16 v0, v0, -0xc0

    shr-int/lit8 v3, v0, 0x8

    and-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-byte v1, v2

    .line 75
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v0, v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    .line 81
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    .line 82
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 83
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v0, v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 88
    :goto_0
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->critical:Z

    if-eqz v0, :cond_3

    .line 90
    iget v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->type:I

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 94
    :cond_3
    iget v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->type:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 97
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public getData()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->data:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->type:I

    return v0
.end method

.method public isCritical()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->critical:Z

    return v0
.end method

.method public isLongLength()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacket;->isLongLength:Z

    return v0
.end method
