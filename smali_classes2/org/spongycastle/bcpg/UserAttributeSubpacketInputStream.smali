.class public Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;
.super Ljava/io/InputStream;
.source "UserAttributeSubpacketInputStream.java"

# interfaces
.implements Lorg/spongycastle/bcpg/UserAttributeSubpacketTags;


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_1

    .line 43
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-byte v0, v0

    .line 50
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 57
    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 61
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readPacket()Lorg/spongycastle/bcpg/UserAttributeSubpacket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc0

    if-ge v0, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v4, 0xdf

    if-gt v0, v4, :cond_2

    add-int/lit16 v0, v0, -0xc0

    shl-int/lit8 v0, v0, 0x8

    .line 87
    iget-object v4, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0xff

    if-ne v0, v3, :cond_5

    .line 91
    iget-object v0, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v3, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int/2addr v0, v3

    const/4 v3, 0x1

    .line 99
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_4

    sub-int/2addr v0, v2

    .line 106
    new-array v0, v0, [B

    .line 108
    array-length v5, v0

    invoke-direct {p0, v0, v1, v5}, Lorg/spongycastle/bcpg/UserAttributeSubpacketInputStream;->readFully([BII)V

    if-eq v4, v2, :cond_3

    .line 118
    new-instance v1, Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    invoke-direct {v1, v4, v3, v0}, Lorg/spongycastle/bcpg/UserAttributeSubpacket;-><init>(IZ[B)V

    return-object v1

    .line 115
    :cond_3
    new-instance v1, Lorg/spongycastle/bcpg/attr/ImageAttribute;

    invoke-direct {v1, v3, v0}, Lorg/spongycastle/bcpg/attr/ImageAttribute;-><init>(Z[B)V

    return-object v1

    .line 103
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "unexpected EOF reading user attribute sub packet"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unrecognised length reading user attribute sub packet"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
