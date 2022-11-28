.class public Lorg/spongycastle/bcpg/ArmoredOutputStream;
.super Ljava/io/OutputStream;
.source "ArmoredOutputStream.java"


# static fields
.field private static final encodingTable:[B


# instance fields
.field buf:[I

.field bufPtr:I

.field chunkCount:I

.field clearText:Z

.field crc:Lorg/spongycastle/bcpg/CRC24;

.field footerStart:Ljava/lang/String;

.field footerTail:Ljava/lang/String;

.field headerStart:Ljava/lang/String;

.field headerTail:Ljava/lang/String;

.field headers:Ljava/util/Hashtable;

.field lastb:I

.field newLine:Z

.field nl:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field start:Z

.field type:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 16
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x3

    .line 80
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->buf:[I

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->bufPtr:I

    .line 82
    new-instance v1, Lorg/spongycastle/bcpg/CRC24;

    invoke-direct {v1}, Lorg/spongycastle/bcpg/CRC24;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->crc:Lorg/spongycastle/bcpg/CRC24;

    .line 83
    iput v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->chunkCount:I

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->start:Z

    .line 87
    iput-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->clearText:Z

    .line 88
    iput-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->newLine:Z

    .line 90
    invoke-static {}, Lorg/spongycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    const-string v0, "-----BEGIN PGP "

    .line 93
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headerStart:Ljava/lang/String;

    const-string v0, "-----"

    .line 94
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headerTail:Ljava/lang/String;

    const-string v0, "-----END PGP "

    .line 95
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->footerStart:Ljava/lang/String;

    const-string v0, "-----"

    .line 96
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->footerTail:Ljava/lang/String;

    const-string v0, "BCPG v@RELEASE_NAME@"

    .line 98
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->version:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headers:Ljava/util/Hashtable;

    .line 110
    iput-object p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    .line 112
    iget-object p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "\r\n"

    .line 114
    iput-object p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->resetHeaders()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/Hashtable;)V
    .locals 3

    .line 131
    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 133
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    .line 135
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headers:Ljava/util/Hashtable;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private encode(Ljava/io/OutputStream;[II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x3d

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p3, :pswitch_data_0

    .line 75
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unknown length in encode"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :pswitch_0
    aget p3, p2, v2

    .line 66
    aget v0, p2, v0

    .line 67
    aget p2, p2, v3

    .line 69
    sget-object v1, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    ushr-int/lit8 v2, p3, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 70
    sget-object v1, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    shl-int/lit8 p3, p3, 0x4

    ushr-int/lit8 v2, v0, 0x4

    or-int/2addr p3, v2

    and-int/lit8 p3, p3, 0x3f

    aget-byte p3, v1, p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 71
    sget-object p3, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    shl-int/2addr v0, v3

    ushr-int/lit8 v1, p2, 0x6

    or-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    aget-byte p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 72
    sget-object p3, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    aget p3, p2, v2

    .line 57
    aget p2, p2, v0

    .line 59
    sget-object v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    ushr-int/lit8 v2, p3, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-byte v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 60
    sget-object v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    shl-int/lit8 p3, p3, 0x4

    ushr-int/lit8 v2, p2, 0x4

    or-int/2addr p3, v2

    and-int/lit8 p3, p3, 0x3f

    aget-byte p3, v0, p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 61
    sget-object p3, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    shl-int/2addr p2, v3

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 48
    :pswitch_2
    aget p2, p2, v2

    .line 50
    sget-object p3, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    ushr-int/lit8 v0, p2, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-byte p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 51
    sget-object p3, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encodingTable:[B

    shl-int/lit8 p2, p2, 0x4

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 52
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 53
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeHeaderEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 230
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 232
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 236
    iget-object p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x0

    .line 238
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 240
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 243
    :cond_1
    :goto_2
    iget-object p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v0, p1, :cond_2

    .line 245
    iget-object p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public beginClearText(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 199
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown hash algorithm tag in beginClearText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string p1, "SHA512"

    goto :goto_0

    :pswitch_2
    const-string p1, "SHA384"

    goto :goto_0

    :pswitch_3
    const-string p1, "SHA256"

    goto :goto_0

    :pswitch_4
    const-string p1, "MD2"

    goto :goto_0

    :pswitch_5
    const-string p1, "RIPEMD160"

    goto :goto_0

    :pswitch_6
    const-string p1, "SHA1"

    goto :goto_0

    :pswitch_7
    const-string p1, "MD5"

    .line 202
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN PGP SIGNED MESSAGE-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 205
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 207
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 212
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->clearText:Z

    .line 216
    iput-boolean p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->newLine:Z

    .line 217
    iput v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->lastb:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 378
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->buf:[I

    iget v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->bufPtr:I

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encode(Ljava/io/OutputStream;[II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 380
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 382
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 386
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->crc:Lorg/spongycastle/bcpg/CRC24;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/CRC24;->getValue()I

    move-result v1

    .line 388
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->buf:[I

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    .line 389
    aput v3, v2, v4

    const/4 v3, 0x2

    and-int/lit16 v1, v1, 0xff

    .line 390
    aput v1, v2, v3

    .line 392
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    const/4 v3, 0x3

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encode(Ljava/io/OutputStream;[II)V

    const/4 v1, 0x0

    .line 394
    :goto_1
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 396
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 399
    :goto_2
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->footerStart:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 401
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->footerStart:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 404
    :goto_3
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 406
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 409
    :goto_4
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->footerTail:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 411
    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->footerTail:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 414
    :cond_4
    :goto_5
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 416
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 419
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    .line 422
    iput-boolean v4, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->start:Z

    :cond_6
    return-void
.end method

.method public endClearText()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->clearText:Z

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public resetHeaders()V
    .locals 3

    .line 161
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 162
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headers:Ljava/util/Hashtable;

    const-string v1, "Version"

    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->clearText:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 257
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->newLine:Z

    const/16 v3, 0xa

    const/16 v4, 0xd

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_0

    .line 259
    iget v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->lastb:I

    if-eq v0, v4, :cond_1

    .line 261
    :cond_0
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->newLine:Z

    :cond_1
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    .line 265
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 266
    iget-object v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_2
    if-eq p1, v4, :cond_3

    if-ne p1, v3, :cond_4

    .line 269
    iget v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->lastb:I

    if-eq v0, v4, :cond_4

    .line 271
    :cond_3
    iput-boolean v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->newLine:Z

    .line 273
    :cond_4
    iput p1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->lastb:I

    return-void

    .line 277
    :cond_5
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->start:Z

    if-eqz v0, :cond_10

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_7

    and-int/lit8 v0, p1, 0x3f

    goto :goto_1

    :cond_7
    and-int/lit8 v0, p1, 0x3f

    shr-int/2addr v0, v3

    :goto_1
    if-eq v0, v3, :cond_8

    packed-switch v0, :pswitch_data_0

    const-string v0, "MESSAGE"

    .line 303
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    goto :goto_2

    :pswitch_0
    const-string v0, "PUBLIC KEY BLOCK"

    .line 294
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    const-string v0, "PRIVATE KEY BLOCK"

    .line 297
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v0, "SIGNATURE"

    .line 300
    iput-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    :goto_2
    const/4 v0, 0x0

    .line 306
    :goto_3
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headerStart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_9

    .line 308
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headerStart:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    .line 311
    :goto_4
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_a

    .line 313
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->type:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    .line 316
    :goto_5
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headerTail:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_b

    .line 318
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headerTail:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    .line 321
    :goto_6
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_c

    .line 323
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    const-string v0, "Version"

    .line 326
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headers:Ljava/util/Hashtable;

    const-string v4, "Version"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->writeHeaderEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 329
    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 331
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Version"

    .line 333
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 335
    iget-object v4, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->headers:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->writeHeaderEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    .line 339
    :goto_8
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_f

    .line 341
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 344
    :cond_f
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->start:Z

    .line 347
    :cond_10
    iget v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->bufPtr:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_11

    .line 349
    iget-object v3, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->buf:[I

    invoke-direct {p0, v3, v4, v0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;->encode(Ljava/io/OutputStream;[II)V

    .line 350
    iput v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->bufPtr:I

    .line 351
    iget v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->chunkCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->chunkCount:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_11

    .line 353
    :goto_9
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_11

    .line 355
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->nl:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 360
    :cond_11
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->crc:Lorg/spongycastle/bcpg/CRC24;

    invoke-virtual {v0, p1}, Lorg/spongycastle/bcpg/CRC24;->update(I)V

    .line 361
    iget-object v0, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->buf:[I

    iget v1, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->bufPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/bcpg/ArmoredOutputStream;->bufPtr:I

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
