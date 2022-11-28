.class final Lio/grpc/okhttp/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

.field private dynamicTableByteCount:I

.field dynamicTableHeaderCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field private nextDynamicTableIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private useCompression:Z


# direct methods
.method constructor <init>(IZLokio/Buffer;)V
    .locals 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 402
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    const/16 v0, 0x8

    .line 407
    new-array v0, v0, [Lio/grpc/okhttp/internal/framed/Header;

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    .line 412
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    .line 422
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    .line 423
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 424
    iput-boolean p2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->useCompression:Z

    .line 425
    iput-object p3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x0

    .line 417
    invoke-direct {p0, v0, v1, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;-><init>(IZLokio/Buffer;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 606
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 608
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->clearDynamicTable()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 610
    invoke-direct {p0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 539
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    const/4 v0, 0x0

    .line 541
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    .line 542
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 550
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 551
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 552
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    .line 553
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 556
    :cond_0
    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iget p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    :cond_1
    return v0
.end method

.method private insertIntoDynamicTable(Lio/grpc/okhttp/internal/framed/Header;)V
    .locals 6

    .line 564
    iget v0, p1, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    .line 567
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_0

    .line 568
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->clearDynamicTable()V

    return-void

    .line 573
    :cond_0
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 574
    invoke-direct {p0, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 576
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 577
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lio/grpc/okhttp/internal/framed/Header;

    const/4 v3, 0x0

    .line 578
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    .line 580
    iput-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    .line 582
    :cond_1
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    .line 583
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aput-object p1, v2, v1

    .line 584
    iget p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    .line 585
    iget p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method


# virtual methods
.method maxDynamicTableByteCount()I
    .locals 1

    .line 535
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    return v0
.end method

.method resizeHeaderTable(I)V
    .locals 1

    .line 589
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    const/16 v0, 0x4000

    .line 590
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 592
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p1, v0, :cond_1

    .line 597
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 598
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    :cond_1
    const/4 v0, 0x1

    .line 600
    iput-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 601
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 602
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->adjustDynamicTableByteCount()V

    return-void
.end method

.method writeByteString(Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->useCompression:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_0

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Huffman;->get()Lio/grpc/okhttp/internal/framed/Huffman;

    move-result-object v0

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/okhttp/internal/framed/Huffman;->encodedLength([B)I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 523
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 524
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Huffman;->get()Lio/grpc/okhttp/internal/framed/Huffman;

    move-result-object v2

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0}, Lokio/Buffer;->outputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lio/grpc/okhttp/internal/framed/Huffman;->encode([BLjava/io/OutputStream;)V

    .line 525
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 527
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 530
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    :goto_0
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 432
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 434
    invoke-virtual {p0, v0, v4, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 436
    :cond_0
    iput-boolean v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const v0, 0x7fffffff

    .line 437
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 438
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v4, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 441
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_b

    .line 442
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/internal/framed/Header;

    .line 443
    iget-object v4, v3, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v4

    .line 444
    iget-object v5, v3, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    .line 448
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    if-eqz v6, :cond_4

    .line 450
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x2

    if-lt v6, v8, :cond_3

    const/4 v8, 0x7

    if-gt v6, v8, :cond_3

    .line 456
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v8, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_1

    .line 458
    :cond_2
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v8

    aget-object v8, v8, v6

    iget-object v8, v8, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v8, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v8, v6, 0x1

    move v12, v8

    move v8, v6

    move v6, v12

    goto :goto_1

    :cond_3
    move v8, v6

    const/4 v6, -0x1

    goto :goto_1

    :cond_4
    const/4 v6, -0x1

    const/4 v8, -0x1

    :goto_1
    if-ne v6, v7, :cond_7

    .line 465
    iget v9, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    :goto_2
    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v11, v10

    if-ge v9, v11, :cond_7

    .line 466
    aget-object v10, v10, v9

    iget-object v10, v10, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v10, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 467
    iget-object v10, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v10, v10, v9

    iget-object v10, v10, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v10, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 468
    iget v6, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    sub-int/2addr v9, v6

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v9

    goto :goto_3

    :cond_5
    if-ne v8, v7, :cond_6

    .line 471
    iget v8, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    sub-int v8, v9, v8

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v10

    array-length v10, v10

    add-int/2addr v8, v10

    :cond_6
    goto :goto_2

    :cond_7
    :goto_3
    if-eq v6, v7, :cond_8

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 479
    invoke-virtual {p0, v6, v3, v4}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    goto :goto_4

    :cond_8
    const/16 v6, 0x40

    if-ne v8, v7, :cond_9

    .line 482
    iget-object v7, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v7, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 483
    invoke-virtual {p0, v4}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 484
    invoke-virtual {p0, v5}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 485
    invoke-direct {p0, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->insertIntoDynamicTable(Lio/grpc/okhttp/internal/framed/Header;)V

    goto :goto_4

    .line 486
    :cond_9
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$300()Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lio/grpc/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-virtual {v7, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v3, 0xf

    .line 489
    invoke-virtual {p0, v8, v3, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 490
    invoke-virtual {p0, v5}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_4

    :cond_a
    const/16 v4, 0x3f

    .line 493
    invoke-virtual {p0, v8, v4, v6}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 494
    invoke-virtual {p0, v5}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 495
    invoke-direct {p0, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->insertIntoDynamicTable(Lio/grpc/okhttp/internal/framed/Header;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method writeInt(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_0

    .line 504
    iget-object p2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 515
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 518
    :cond_1
    iget-object p2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {p2, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    return-void
.end method
