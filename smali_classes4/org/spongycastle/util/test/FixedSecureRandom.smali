.class public Lorg/spongycastle/util/test/FixedSecureRandom;
.super Ljava/security/SecureRandom;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/util/test/FixedSecureRandom$DummyProvider;,
        Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;,
        Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;,
        Lorg/spongycastle/util/test/FixedSecureRandom$Data;,
        Lorg/spongycastle/util/test/FixedSecureRandom$Source;
    }
.end annotation


# static fields
.field private static ANDROID:Ljava/math/BigInteger;

.field private static CLASSPATH:Ljava/math/BigInteger;

.field private static REGULAR:Ljava/math/BigInteger;

.field private static final isAndroidStyle:Z

.field private static final isClasspathStyle:Z

.field private static final isRegularStyle:Z


# instance fields
.field private _data:[B

.field private _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01020304ffffffff0506070811111111"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/util/test/FixedSecureRandom;->REGULAR:Ljava/math/BigInteger;

    .line 18
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1111111105060708ffffffff01020304"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/util/test/FixedSecureRandom;->ANDROID:Ljava/math/BigInteger;

    .line 19
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "3020104ffffffff05060708111111"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/util/test/FixedSecureRandom;->CLASSPATH:Ljava/math/BigInteger;

    .line 27
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;

    invoke-direct {v1}, Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;-><init>()V

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 28
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;

    invoke-direct {v2}, Lorg/spongycastle/util/test/FixedSecureRandom$RandomChecker;-><init>()V

    const/16 v3, 0x78

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 30
    sget-object v2, Lorg/spongycastle/util/test/FixedSecureRandom;->ANDROID:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lorg/spongycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    .line 31
    sget-object v2, Lorg/spongycastle/util/test/FixedSecureRandom;->REGULAR:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/spongycastle/util/test/FixedSecureRandom;->isRegularStyle:Z

    .line 32
    sget-object v0, Lorg/spongycastle/util/test/FixedSecureRandom;->CLASSPATH:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/spongycastle/util/test/FixedSecureRandom;->isClasspathStyle:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x1

    .line 93
    new-array v0, v0, [Lorg/spongycastle/util/test/FixedSecureRandom$Source;

    new-instance v1, Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    invoke-direct {v1, p1}, Lorg/spongycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-direct {p0, v0}, Lorg/spongycastle/util/test/FixedSecureRandom;-><init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V

    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V
    .locals 8

    .line 117
    new-instance v0, Lorg/spongycastle/util/test/FixedSecureRandom$DummyProvider;

    invoke-direct {v0}, Lorg/spongycastle/util/test/FixedSecureRandom$DummyProvider;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    sget-boolean v1, Lorg/spongycastle/util/test/FixedSecureRandom;->isRegularStyle:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 123
    sget-boolean v1, Lorg/spongycastle/util/test/FixedSecureRandom;->isClasspathStyle:Z

    if-eqz v1, :cond_3

    .line 125
    :goto_0
    array-length v1, p1

    if-eq v3, v1, :cond_9

    .line 129
    :try_start_0
    aget-object v1, p1, v3

    instance-of v1, v1, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;

    if-eqz v1, :cond_1

    .line 131
    aget-object v1, p1, v3

    iget-object v1, v1, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    .line 132
    array-length v4, v1

    array-length v5, v1

    rem-int/2addr v5, v2

    sub-int/2addr v4, v5

    .line 133
    array-length v5, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_0

    .line 135
    aget-byte v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 137
    :cond_0
    array-length v5, v1

    sub-int/2addr v5, v4

    :goto_2
    array-length v4, v1

    if-ge v5, v4, :cond_2

    .line 139
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 144
    :cond_1
    aget-object v1, p1, v3

    iget-object v1, v1, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t save value source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_3
    :goto_3
    array-length v1, p1

    if-eq v3, v1, :cond_9

    .line 159
    :try_start_1
    aget-object v1, p1, v3

    iget-object v1, v1, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 163
    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t save value source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_4
    sget-boolean v1, Lorg/spongycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 170
    :goto_4
    array-length v4, p1

    if-eq v1, v4, :cond_9

    .line 174
    :try_start_2
    aget-object v4, p1, v1

    instance-of v4, v4, Lorg/spongycastle/util/test/FixedSecureRandom$BigInteger;

    if-eqz v4, :cond_7

    .line 176
    aget-object v4, p1, v1

    iget-object v4, v4, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    .line 177
    array-length v5, v4

    array-length v6, v4

    rem-int/2addr v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_5

    .line 180
    array-length v7, v4

    add-int/lit8 v6, v6, 0x4

    sub-int/2addr v7, v6

    invoke-virtual {v0, v4, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 182
    :cond_5
    array-length v6, v4

    sub-int/2addr v6, v5

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    .line 184
    :goto_6
    array-length v7, v4

    sub-int/2addr v7, v5

    rsub-int/lit8 v7, v7, 0x4

    if-eq v6, v7, :cond_6

    .line 186
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 189
    :goto_7
    array-length v7, v4

    sub-int/2addr v7, v5

    if-eq v6, v7, :cond_8

    add-int v7, v5, v6

    .line 191
    aget-byte v7, v4, v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 196
    :cond_7
    aget-object v4, p1, v1

    iget-object v4, v4, Lorg/spongycastle/util/test/FixedSecureRandom$Source;->data:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 201
    :catch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t save value source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_data:[B

    return-void

    .line 207
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized BigInteger implementation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([[B)V
    .locals 0

    .line 99
    invoke-static {p1}, Lorg/spongycastle/util/test/FixedSecureRandom;->buildDataArray([[B)[Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/util/test/FixedSecureRandom;-><init>([Lorg/spongycastle/util/test/FixedSecureRandom$Source;)V

    return-void
.end method

.method static synthetic access$000(I[B)[B
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lorg/spongycastle/util/test/FixedSecureRandom;->expandToBitLength(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static buildDataArray([[B)[Lorg/spongycastle/util/test/FixedSecureRandom$Data;
    .locals 4

    .line 104
    array-length v0, p0

    new-array v0, v0, [Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    const/4 v1, 0x0

    .line 106
    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 108
    new-instance v2, Lorg/spongycastle/util/test/FixedSecureRandom$Data;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/spongycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static expandToBitLength(I[B)[B
    .locals 4

    add-int/lit8 v0, p0, 0x7

    .line 296
    div-int/lit8 v0, v0, 0x8

    array-length v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 298
    new-array v0, v0, [B

    .line 300
    array-length v1, v0

    array-length v3, p1

    sub-int/2addr v1, v3

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    sget-boolean p1, Lorg/spongycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    if-eqz p1, :cond_0

    .line 303
    rem-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    .line 305
    invoke-static {v0, v2}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p1

    rsub-int/lit8 p0, p0, 0x8

    shl-int p0, p1, p0

    .line 306
    invoke-static {p0, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    return-object v0

    .line 314
    :cond_1
    sget-boolean v0, Lorg/spongycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    if-ge p0, v0, :cond_2

    .line 316
    rem-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_2

    .line 318
    invoke-static {p1, v2}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    rsub-int/lit8 p0, p0, 0x8

    shl-int p0, v0, p0

    .line 319
    invoke-static {p0, p1, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_2
    return-object p1
.end method

.method private nextValue()I
    .locals 3

    .line 272
    iget-object v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 0

    .line 222
    new-array p1, p1, [B

    .line 224
    invoke-virtual {p0, p1}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public isExhausted()Z
    .locals 2

    .line 267
    iget v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    iget-object v1, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_data:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBytes([B)V
    .locals 4

    .line 215
    iget-object v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/util/test/FixedSecureRandom;->_index:I

    return-void
.end method

.method public nextInt()I
    .locals 2

    .line 237
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/lit8 v0, v0, 0x0

    .line 238
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 239
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 240
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public nextLong()J
    .locals 5

    .line 253
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    .line 254
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 255
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 256
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 257
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 258
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 259
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 260
    invoke-direct {p0}, Lorg/spongycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method
