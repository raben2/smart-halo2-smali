.class final Lio/grpc/okhttp/internal/framed/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

.field dynamicTableByteCount:I

.field dynamicTableHeaderCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextDynamicTableIndex:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(IILokio/Source;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    const/16 v0, 0x8

    .line 136
    new-array v0, v0, [Lio/grpc/okhttp/internal/framed/Header;

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    .line 138
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    .line 140
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 148
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    .line 149
    iput p2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 150
    invoke-static {p3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    return-void
.end method

.method constructor <init>(ILokio/Source;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p1, p2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;-><init>(IILokio/Source;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 171
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->clearDynamicTable()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 175
    invoke-direct {p0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 181
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    .line 184
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private dynamicTableIndex(I)I
    .locals 1

    .line 259
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 192
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 193
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 194
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 195
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    :cond_1
    return v0
.end method

.method private getName(I)Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    return-object p1

    .line 291
    :cond_0
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 292
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 295
    aget-object p1, v1, v0

    iget-object p1, p1, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    return-object p1

    .line 293
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertIntoDynamicTable(ILio/grpc/okhttp/internal/framed/Header;)V
    .locals 5

    .line 305
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget v0, p2, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 309
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 313
    :cond_0
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v0, v2, :cond_1

    .line 314
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->clearDynamicTable()V

    return-void

    .line 319
    :cond_1
    iget v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 320
    invoke-direct {p0, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v2

    if-ne p1, v1, :cond_3

    .line 323
    iget p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v2, v1

    if-le p1, v2, :cond_2

    .line 324
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lio/grpc/okhttp/internal/framed/Header;

    const/4 v2, 0x0

    .line 325
    array-length v3, v1

    array-length v4, v1

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    .line 327
    iput-object p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    .line 329
    :cond_2
    iget p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    .line 330
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aput-object p2, v1, p1

    .line 331
    iget p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    goto :goto_0

    .line 333
    :cond_3
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 334
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aput-object p2, v1, p1

    .line 336
    :goto_0
    iget p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private isStaticHeader(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 300
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v0

    aget-object p1, v0, p1

    .line 247
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 250
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    .line 253
    iget-object p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    aget-object v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object p1

    .line 277
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    .line 278
    new-instance v1, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v1, p1, v0}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILio/grpc/okhttp/internal/framed/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/internal/framed/Hpack;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 284
    new-instance v2, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v2, v0, v1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILio/grpc/okhttp/internal/framed/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object p1

    .line 264
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v2, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v2, p1, v0}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/internal/framed/Hpack;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v3, v0, v1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method headerTableSizeSetting(I)V
    .locals 0

    .line 165
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    .line 166
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 167
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->adjustDynamicTableByteCount()V

    return-void
.end method

.method maxDynamicTableByteCount()I
    .locals 1

    .line 154
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method readByteString()Lokio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    .line 369
    invoke-virtual {p0, v0, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    if-eqz v1, :cond_1

    .line 372
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Huffman;->get()Lio/grpc/okhttp/internal/framed/Huffman;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/internal/framed/Huffman;->decode([B)[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0

    .line 374
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method readHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    :goto_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 211
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_7

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    const/16 v1, 0x7f

    .line 215
    invoke-virtual {p0, v0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 216
    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readIndexedHeader(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 218
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    const/16 v1, 0x3f

    .line 220
    invoke-virtual {p0, v0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 221
    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const/16 v1, 0x1f

    .line 223
    invoke-virtual {p0, v0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 224
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v0, :cond_3

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    if-gt v0, v1, :cond_3

    .line 228
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_0

    .line 226
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0xf

    .line 232
    invoke-virtual {p0, v0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 233
    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto/16 :goto_0

    .line 230
    :cond_6
    :goto_1
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto/16 :goto_0

    .line 213
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method readInt(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 353
    :goto_0
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method
