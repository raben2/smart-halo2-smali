.class public Lorg/spongycastle/bcpg/UserAttributeSubpacket;
.super Ljava/lang/Object;
.source "UserAttributeSubpacket.java"


# instance fields
.field protected data:[B

.field private forceLongLength:Z

.field type:I


# direct methods
.method protected constructor <init>(IZ[B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    .line 30
    iput-boolean p2, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->forceLongLength:Z

    .line 31
    iput-object p3, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    return-void
.end method

.method protected constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/bcpg/UserAttributeSubpacket;-><init>(IZ[B)V

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

    .line 51
    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_0

    .line 53
    iget-boolean v2, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->forceLongLength:Z

    if-nez v2, :cond_0

    int-to-byte v0, v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x20bf

    const/16 v3, 0xff

    if-gt v0, v2, :cond_1

    .line 57
    iget-boolean v2, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->forceLongLength:Z

    if-nez v2, :cond_1

    add-int/lit16 v0, v0, -0xc0

    shr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-byte v1, v2

    .line 61
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v0, v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    .line 67
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    .line 68
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 69
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v0, v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 73
    :goto_0
    iget v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 74
    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 90
    :cond_1
    check-cast p1, Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    .line 92
    iget v1, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    iget v3, p1, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    iget-object p1, p1, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    .line 93
    invoke-static {v1, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getData()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 98
    iget v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->type:I

    iget-object v1, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->data:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
