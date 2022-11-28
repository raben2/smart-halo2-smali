.class public Lorg/spongycastle/bcpg/ArmoredInputStream;
.super Ljava/io/InputStream;
.source "ArmoredInputStream.java"


# static fields
.field private static final decodingTable:[B


# instance fields
.field bufPtr:I

.field clearText:Z

.field crc:Lorg/spongycastle/bcpg/CRC24;

.field crcFound:Z

.field hasHeaders:Z

.field header:Ljava/lang/String;

.field headerList:Lorg/spongycastle/util/StringList;

.field in:Ljava/io/InputStream;

.field isEndOfStream:Z

.field lastC:I

.field newLineFound:Z

.field outBuf:[I

.field restart:Z

.field start:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x80

    .line 27
    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/bcpg/ArmoredInputStream;->decodingTable:[B

    const/16 v0, 0x41

    :goto_0
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    .line 31
    sget-object v1, Lorg/spongycastle/bcpg/ArmoredInputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 36
    sget-object v1, Lorg/spongycastle/bcpg/ArmoredInputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 41
    sget-object v1, Lorg/spongycastle/bcpg/ArmoredInputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 44
    :cond_2
    sget-object v0, Lorg/spongycastle/bcpg/ArmoredInputStream;->decodingTable:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    .line 45
    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 128
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->start:Z

    const/4 v1, 0x3

    .line 105
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->outBuf:[I

    .line 106
    iput v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->bufPtr:I

    .line 107
    new-instance v1, Lorg/spongycastle/bcpg/CRC24;

    invoke-direct {v1}, Lorg/spongycastle/bcpg/CRC24;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->crc:Lorg/spongycastle/bcpg/CRC24;

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->crcFound:Z

    .line 109
    iput-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->hasHeaders:Z

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->header:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->newLineFound:Z

    .line 112
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->clearText:Z

    .line 113
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->restart:Z

    .line 114
    invoke-static {}, Lorg/spongycastle/util/Strings;->newList()Lorg/spongycastle/util/StringList;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->headerList:Lorg/spongycastle/util/StringList;

    .line 115
    iput v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->lastC:I

    .line 144
    iput-object p1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    .line 145
    iput-boolean p2, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->hasHeaders:Z

    if-eqz p2, :cond_0

    .line 149
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->parseHeaders()Z

    .line 152
    :cond_0
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->start:Z

    return-void
.end method

.method private decode(IIII[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    if-ltz p4, :cond_2

    const/16 v0, 0x3d

    const/4 v1, 0x2

    if-ne p3, v0, :cond_0

    .line 70
    sget-object p3, Lorg/spongycastle/bcpg/ArmoredInputStream;->decodingTable:[B

    aget-byte p1, p3, p1

    and-int/lit16 p1, p1, 0xff

    .line 71
    aget-byte p2, p3, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/2addr p1, v1

    shr-int/lit8 p2, p2, 0x4

    or-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 73
    aput p1, p5, v1

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p4, v0, :cond_1

    .line 79
    sget-object p4, Lorg/spongycastle/bcpg/ArmoredInputStream;->decodingTable:[B

    aget-byte p1, p4, p1

    .line 80
    aget-byte p2, p4, p2

    .line 81
    aget-byte p3, p4, p3

    shl-int/2addr p1, v1

    shr-int/lit8 p4, p2, 0x4

    or-int/2addr p1, p4

    and-int/lit16 p1, p1, 0xff

    .line 83
    aput p1, p5, v2

    shl-int/lit8 p1, p2, 0x4

    shr-int/lit8 p2, p3, 0x2

    or-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 84
    aput p1, p5, v1

    return v2

    .line 90
    :cond_1
    sget-object v0, Lorg/spongycastle/bcpg/ArmoredInputStream;->decodingTable:[B

    aget-byte p1, v0, p1

    .line 91
    aget-byte p2, v0, p2

    .line 92
    aget-byte p3, v0, p3

    .line 93
    aget-byte p4, v0, p4

    shl-int/2addr p1, v1

    shr-int/lit8 v0, p2, 0x4

    or-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    .line 95
    aput p1, p5, v0

    shl-int/lit8 p1, p2, 0x4

    shr-int/lit8 p2, p3, 0x2

    or-int/2addr p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 96
    aput p1, p5, v2

    shl-int/lit8 p1, p3, 0x6

    or-int/2addr p1, p4

    and-int/lit16 p1, p1, 0xff

    .line 97
    aput p1, p5, v1

    return v0

    .line 65
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "unexpected end of file in armored stream."

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseHeaders()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->header:Ljava/lang/String;

    .line 170
    invoke-static {}, Lorg/spongycastle/util/Strings;->newList()Lorg/spongycastle/util/StringList;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->headerList:Lorg/spongycastle/util/StringList;

    .line 175
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->restart:Z

    const/16 v1, 0x2d

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/16 v5, 0xd

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_3

    if-ne v6, v1, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    if-ne v0, v5, :cond_2

    :cond_1
    move v6, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    move v6, v0

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_f

    .line 195
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 199
    iget-boolean v8, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->restart:Z

    if-eqz v8, :cond_4

    .line 201
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 204
    :goto_2
    iget-object v9, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v9

    if-ltz v9, :cond_e

    if-ne v6, v5, :cond_5

    if-ne v9, v3, :cond_5

    const/4 v8, 0x1

    :cond_5
    if-eqz v1, :cond_6

    if-eq v6, v5, :cond_6

    if-ne v9, v3, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    if-ne v9, v5, :cond_7

    goto :goto_4

    :cond_7
    if-eq v9, v5, :cond_8

    if-eq v6, v5, :cond_a

    if-ne v9, v3, :cond_a

    .line 220
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 221
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_9

    goto :goto_4

    .line 225
    :cond_9
    iget-object v11, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->headerList:Lorg/spongycastle/util/StringList;

    invoke-interface {v11, v10}, Lorg/spongycastle/util/StringList;->add(Ljava/lang/String;)Z

    .line 226
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_a
    if-eq v9, v3, :cond_b

    if-eq v9, v5, :cond_b

    int-to-char v1, v9

    .line 231
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    if-eq v9, v5, :cond_c

    if-eq v6, v5, :cond_d

    if-ne v9, v3, :cond_d

    :cond_c
    const/4 v1, 0x1

    :cond_d
    :goto_3
    move v6, v9

    goto :goto_2

    :cond_e
    :goto_4
    if-eqz v8, :cond_f

    .line 247
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 251
    :cond_f
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->headerList:Lorg/spongycastle/util/StringList;

    invoke-interface {v1}, Lorg/spongycastle/util/StringList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 253
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->headerList:Lorg/spongycastle/util/StringList;

    invoke-interface {v1, v4}, Lorg/spongycastle/util/StringList;->get(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->header:Ljava/lang/String;

    :cond_10
    const-string v1, "-----BEGIN PGP SIGNED MESSAGE-----"

    .line 256
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->header:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->clearText:Z

    .line 257
    iput-boolean v2, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->newLineFound:Z

    return v0
.end method

.method private readIgnoreSpace()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return v0

    .line 309
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getArmorHeaderLine()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getArmorHeaders()[Ljava/lang/String;
    .locals 3

    .line 294
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->headerList:Lorg/spongycastle/util/StringList;

    invoke-interface {v0}, Lorg/spongycastle/util/StringList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->headerList:Lorg/spongycastle/util/StringList;

    invoke-interface {v0}, Lorg/spongycastle/util/StringList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/util/StringList;->toStringArray(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClearText()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->clearText:Z

    return v0
.end method

.method public isEndOfStream()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->isEndOfStream:Z

    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->start:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 322
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->hasHeaders:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->parseHeaders()Z

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->crc:Lorg/spongycastle/bcpg/CRC24;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/CRC24;->reset()V

    .line 328
    iput-boolean v6, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->start:Z

    .line 331
    :cond_1
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->clearText:Z

    const/16 v1, 0x2d

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v7, 0x1

    if-eqz v0, :cond_8

    .line 333
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_2

    .line 335
    iget v4, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->lastC:I

    if-eq v4, v3, :cond_2

    goto :goto_1

    .line 339
    :cond_2
    iget-boolean v4, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->newLineFound:Z

    if-eqz v4, :cond_4

    if-ne v0, v1, :cond_4

    .line 341
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 344
    iput-boolean v6, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->clearText:Z

    .line 345
    iput-boolean v7, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->start:Z

    .line 346
    iput-boolean v7, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->restart:Z

    goto :goto_0

    .line 350
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 352
    :goto_0
    iput-boolean v6, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->newLineFound:Z

    goto :goto_2

    :cond_4
    if-eq v0, v2, :cond_6

    .line 356
    iget v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->lastC:I

    if-eq v1, v3, :cond_6

    .line 358
    iput-boolean v6, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->newLineFound:Z

    goto :goto_2

    .line 337
    :cond_5
    :goto_1
    iput-boolean v7, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->newLineFound:Z

    .line 362
    :cond_6
    :goto_2
    iput v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->lastC:I

    if-gez v0, :cond_7

    .line 366
    iput-boolean v7, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->isEndOfStream:Z

    :cond_7
    return v0

    .line 372
    :cond_8
    iget v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->bufPtr:I

    const/4 v8, 0x2

    if-gt v0, v8, :cond_9

    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->crcFound:Z

    if-eqz v0, :cond_17

    .line 374
    :cond_9
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v3, :cond_c

    if-ne v4, v2, :cond_a

    goto :goto_3

    :cond_a
    if-ltz v4, :cond_b

    .line 448
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v2

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v3

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v5

    iget-object v6, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->outBuf:[I

    move-object v0, p0

    move v1, v4

    move v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/bcpg/ArmoredInputStream;->decode(IIII[I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->bufPtr:I

    goto/16 :goto_5

    .line 452
    :cond_b
    iput-boolean v7, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->isEndOfStream:Z

    return v0

    .line 378
    :cond_c
    :goto_3
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v4

    :goto_4
    if-eq v4, v2, :cond_18

    if-ne v4, v3, :cond_d

    goto/16 :goto_6

    :cond_d
    if-gez v4, :cond_e

    .line 387
    iput-boolean v7, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->isEndOfStream:Z

    return v0

    :cond_e
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_11

    .line 393
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v1

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v2

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v3

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v4

    iget-object v5, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->outBuf:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/bcpg/ArmoredInputStream;->decode(IIII[I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->bufPtr:I

    .line 394
    iget v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->bufPtr:I

    if-nez v0, :cond_10

    .line 396
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->outBuf:[I

    aget v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    aget v2, v0, v7

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 400
    iput-boolean v7, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->crcFound:Z

    .line 402
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->crc:Lorg/spongycastle/bcpg/CRC24;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/CRC24;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 406
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->read()I

    move-result v0

    return v0

    .line 404
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "crc check failed in armored message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no crc found in armored message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-ne v4, v1, :cond_16

    .line 415
    :cond_12
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_13

    if-eq v1, v2, :cond_13

    if-ne v1, v3, :cond_12

    .line 423
    :cond_13
    iget-boolean v2, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->crcFound:Z

    if-eqz v2, :cond_15

    .line 428
    iput-boolean v6, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->crcFound:Z

    .line 429
    iput-boolean v7, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->start:Z

    const/4 v2, 0x3

    .line 430
    iput v2, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->bufPtr:I

    if-gez v1, :cond_14

    .line 434
    iput-boolean v7, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->isEndOfStream:Z

    :cond_14
    return v0

    .line 425
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "crc check not found."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_16
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v2

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v3

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v5

    iget-object v6, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->outBuf:[I

    move-object v0, p0

    move v1, v4

    move v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/bcpg/ArmoredInputStream;->decode(IIII[I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->bufPtr:I

    .line 458
    :cond_17
    :goto_5
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->outBuf:[I

    iget v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->bufPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->bufPtr:I

    aget v0, v0, v1

    .line 460
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredInputStream;->crc:Lorg/spongycastle/bcpg/CRC24;

    invoke-virtual {v1, v0}, Lorg/spongycastle/bcpg/CRC24;->update(I)V

    return v0

    .line 382
    :cond_18
    :goto_6
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ArmoredInputStream;->readIgnoreSpace()I

    move-result v4

    goto/16 :goto_4
.end method
