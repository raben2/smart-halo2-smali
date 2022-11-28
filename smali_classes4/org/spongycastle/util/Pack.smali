.class public abstract Lorg/spongycastle/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigEndianToInt([BI)I
    .locals 2

    .line 17
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p1, p1, 0x1

    .line 18
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 19
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 20
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static bigEndianToInt([BI[I)V
    .locals 2

    const/4 v0, 0x0

    .line 26
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 28
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bigEndianToLong([BI)J
    .locals 4

    .line 66
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 67
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static bigEndianToLong([BI[J)V
    .locals 3

    const/4 v0, 0x0

    .line 73
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 75
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bigEndianToShort([BI)S
    .locals 1

    .line 10
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    .line 11
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static intToBigEndian(I[BI)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 42
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 43
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 44
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    .line 45
    aput-byte p0, p1, p2

    return-void
.end method

.method public static intToBigEndian([I[BI)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 59
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static intToBigEndian(I)[B
    .locals 2

    const/4 v0, 0x4

    .line 35
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    return-object v0
.end method

.method public static intToBigEndian([I)[B
    .locals 2

    .line 50
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian([I[BI)V

    return-object v0
.end method

.method public static intToLittleEndian(I[BI)V
    .locals 1

    int-to-byte v0, p0

    .line 176
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 177
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 178
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    .line 179
    aput-byte p0, p1, p2

    return-void
.end method

.method public static intToLittleEndian([I[BI)V
    .locals 2

    const/4 v0, 0x0

    .line 191
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 193
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static intToLittleEndian(I)[B
    .locals 2

    const/4 v0, 0x4

    .line 169
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 170
    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-object v0
.end method

.method public static intToLittleEndian([I)[B
    .locals 2

    .line 184
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 185
    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-object v0
.end method

.method public static littleEndianToInt([BI)I
    .locals 2

    .line 118
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 119
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 120
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 121
    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static littleEndianToInt([BI[I)V
    .locals 2

    const/4 v0, 0x0

    .line 127
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 129
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static littleEndianToInt([BI[III)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    .line 138
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static littleEndianToInt([BII)[I
    .locals 2

    .line 145
    new-array p2, p2, [I

    const/4 v0, 0x0

    .line 146
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 148
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static littleEndianToLong([BI)J
    .locals 5

    .line 200
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 201
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    const/16 v3, 0x20

    shl-long/2addr p0, v3

    int-to-long v3, v0

    and-long v0, v3, v1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static littleEndianToLong([BI[J)V
    .locals 3

    const/4 v0, 0x0

    .line 207
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 209
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static littleEndianToLong([BI[JII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    .line 218
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static littleEndianToShort([BI)S
    .locals 1

    .line 111
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 112
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static longToBigEndian(J[BI)V
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    .line 89
    invoke-static {v1, p2, p3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit8 p3, p3, 0x4

    .line 90
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public static longToBigEndian([J[BI)V
    .locals 3

    const/4 v0, 0x0

    .line 102
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 104
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static longToBigEndian(J)[B
    .locals 2

    const/16 v0, 0x8

    .line 82
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 83
    invoke-static {p0, p1, v0, v1}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    return-object v0
.end method

.method public static longToBigEndian([J)[B
    .locals 2

    .line 95
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->longToBigEndian([J[BI)V

    return-object v0
.end method

.method public static longToLittleEndian(J[BI)V
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v1, v0

    .line 232
    invoke-static {v1, p2, p3}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit8 p3, p3, 0x4

    .line 233
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method public static longToLittleEndian([JII[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    .line 256
    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 p4, p4, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static longToLittleEndian([J[BI)V
    .locals 3

    const/4 v0, 0x0

    .line 245
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 247
    aget-wide v1, p0, v0

    invoke-static {v1, v2, p1, p2}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static longToLittleEndian(J)[B
    .locals 2

    const/16 v0, 0x8

    .line 225
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 226
    invoke-static {p0, p1, v0, v1}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-object v0
.end method

.method public static longToLittleEndian([J)[B
    .locals 2

    .line 238
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 239
    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    return-object v0
.end method

.method public static shortToLittleEndian(S[BI)V
    .locals 1

    int-to-byte v0, p0

    .line 163
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 164
    aput-byte p0, p1, p2

    return-void
.end method

.method public static shortToLittleEndian(S)[B
    .locals 2

    const/4 v0, 0x2

    .line 156
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 157
    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->shortToLittleEndian(S[BI)V

    return-object v0
.end method
