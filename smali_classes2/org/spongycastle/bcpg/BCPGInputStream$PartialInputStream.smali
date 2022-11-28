.class Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;
.super Ljava/io/InputStream;
.source "BCPGInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/bcpg/BCPGInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartialInputStream"
.end annotation


# instance fields
.field private dataLength:I

.field private in:Lorg/spongycastle/bcpg/BCPGInputStream;

.field private partial:Z


# direct methods
.method constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;ZI)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 294
    iput-object p1, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    .line 295
    iput-boolean p2, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    .line 296
    iput p3, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return-void
.end method

.method private loadDataLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 328
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_1

    .line 331
    iput v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    goto :goto_0

    :cond_1
    const/16 v2, 0xdf

    if-gt v0, v2, :cond_2

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    .line 335
    iget-object v2, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 339
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 343
    iput-boolean v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    and-int/lit8 v0, v0, 0x1f

    shl-int v0, v1, v0

    .line 344
    iput v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    .line 347
    :goto_0
    iget v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->available()I

    move-result v0

    .line 304
    iget v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-le v0, v1, :cond_2

    if-gez v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 314
    :cond_1
    iget v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    :cond_0
    iget v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 384
    iget v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return v0

    .line 382
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "premature end of stream in PartialInputStream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->loadDataLength()I

    move-result v0

    if-gez v0, :cond_0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    :cond_0
    iget v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    if-eqz v0, :cond_4

    if-gt v0, p3, :cond_2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    .line 358
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/bcpg/BCPGInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_3

    .line 363
    iget p2, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->dataLength:I

    return p1

    .line 361
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "premature end of stream in PartialInputStream"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_4
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->partial:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;->loadDataLength()I

    move-result v0

    if-gez v0, :cond_0

    :cond_5
    const/4 p1, -0x1

    return p1
.end method
