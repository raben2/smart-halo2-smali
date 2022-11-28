.class final Lio/grpc/okhttp/internal/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    .line 46
    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .locals 6

    .line 192
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 193
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 195
    :cond_0
    :goto_0
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1

    .line 197
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 200
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x3b

    const/16 v4, 0x20

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    .line 229
    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 230
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 208
    :cond_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    .line 209
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 205
    :cond_3
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 214
    :cond_4
    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iput v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->cur:I

    add-int/lit8 v0, v0, 0x1

    .line 216
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v2, 0x1

    .line 217
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    aput-char v4, v1, v2

    .line 219
    :goto_1
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-ne v2, v4, :cond_5

    .line 220
    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    aput-char v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 219
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 222
    :cond_5
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_6

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_6

    aget-char v0, v1, v0

    if-ne v0, v3, :cond_0

    .line 225
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getByte(I)I
    .locals 8

    add-int/lit8 v0, p1, 0x1

    .line 316
    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_6

    .line 322
    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char p1, v1, p1

    const/16 v1, 0x46

    const/16 v2, 0x66

    const/16 v3, 0x41

    const/16 v4, 0x39

    const/16 v5, 0x61

    const/16 v6, 0x30

    if-lt p1, v6, :cond_0

    if-gt p1, v4, :cond_0

    sub-int/2addr p1, v6

    goto :goto_0

    :cond_0
    if-lt p1, v5, :cond_1

    if-gt p1, v2, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    if-lt p1, v3, :cond_5

    if-gt p1, v1, :cond_5

    add-int/lit8 p1, p1, -0x37

    .line 333
    :goto_0
    iget-object v7, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v0, v7, v0

    if-lt v0, v6, :cond_2

    if-gt v0, v4, :cond_2

    sub-int/2addr v0, v6

    goto :goto_1

    :cond_2
    if-lt v0, v5, :cond_3

    if-gt v0, v2, :cond_3

    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    :cond_3
    if-lt v0, v3, :cond_4

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x37

    :goto_1
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    .line 341
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEscaped()C
    .locals 3

    .line 237
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 238
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_1

    .line 242
    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 261
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    .line 257
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    return v0

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getUTF8()C
    .locals 9

    .line 268
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getByte(I)I

    move-result v0

    .line 269
    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    int-to-char v0, v0

    return v0

    :cond_0
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_7

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_7

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_1

    and-int/lit8 v0, v0, 0x1f

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2

    const/4 v3, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_6

    .line 289
    iget v6, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/2addr v6, v2

    iput v6, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 290
    iget v6, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v7, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-eq v6, v7, :cond_5

    iget-object v7, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v7, v7, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 293
    iput v6, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 295
    iget v6, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v6}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getByte(I)I

    move-result v6

    .line 296
    iget v7, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/2addr v7, v2

    iput v7, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_4

    return v4

    :cond_4
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v4

    :cond_6
    int-to-char v0, v0

    return v0

    :cond_7
    return v4
.end method

.method private hexAV()Ljava/lang/String;
    .locals 5

    .line 142
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_7

    .line 147
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    .line 148
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 153
    :goto_0
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_3

    aget-char v2, v1, v0

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 159
    :cond_0
    aget-char v2, v1, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 160
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    .line 161
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 164
    :goto_1
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 167
    :cond_1
    aget-char v2, v1, v0

    const/16 v4, 0x41

    if-lt v2, v4, :cond_2

    aget-char v2, v1, v0

    const/16 v4, 0x46

    if-gt v2, v4, :cond_2

    .line 168
    aget-char v2, v1, v0

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 171
    :cond_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 155
    :cond_3
    :goto_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 176
    :cond_4
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_6

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    .line 182
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 183
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 184
    invoke-direct {p0, v1}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 187
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 178
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextAT()Ljava/lang/String;
    .locals 5

    .line 54
    :goto_0
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 56
    :cond_0
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_1
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    .line 64
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 65
    :goto_1
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_2

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 69
    :cond_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_b

    .line 74
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 78
    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_5

    .line 79
    :goto_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_3

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_2

    .line 82
    :cond_3
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_4

    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-eq v1, v0, :cond_4

    goto :goto_3

    .line 83
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_5
    :goto_3
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 91
    :goto_4
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_4

    .line 96
    :cond_6
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_a

    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_7

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_a

    :cond_7
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_a

    :cond_8
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_9

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_a

    .line 100
    :cond_9
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 103
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 70
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private quotedAV()Ljava/lang/String;
    .locals 4

    .line 108
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 109
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 110
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 113
    :goto_0
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_3

    .line 117
    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 119
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 133
    :goto_1
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    goto :goto_1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 121
    :cond_1
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 122
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 125
    :cond_2
    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    .line 127
    :goto_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 128
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    goto :goto_0

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 356
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->beg:I

    .line 357
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->end:I

    .line 358
    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->cur:I

    .line 359
    iget-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    .line 361
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    const-string v2, ""

    .line 368
    iget v3, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_1

    return-object v1

    .line 372
    :cond_1
    iget-object v4, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v3, v4, v3

    sparse-switch v3, :sswitch_data_0

    .line 385
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 377
    :sswitch_0
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 374
    :sswitch_1
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 391
    :goto_1
    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 395
    :cond_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    iget v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->length:I

    if-lt v0, v2, :cond_3

    return-object v1

    .line 399
    :cond_3
    iget-object v2, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->chars:[C

    aget-char v3, v2, v0

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_6

    aget-char v3, v2, v0

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4

    goto :goto_2

    .line 400
    :cond_4
    aget-char v0, v2, v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_5

    goto :goto_2

    .line 401
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_6
    :goto_2
    iget v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->pos:I

    .line 405
    invoke-direct {p0}, Lio/grpc/okhttp/internal/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 407
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/okhttp/internal/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2b -> :sswitch_2
        0x2c -> :sswitch_2
        0x3b -> :sswitch_2
    .end sparse-switch
.end method
