.class public Lbike/smarthalo/sdk/commands/CommandsHelper;
.super Ljava/lang/Object;
.source "CommandsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytesFromLong(JZ)[B
    .locals 5

    const/16 v0, 0x8

    .line 36
    new-array v1, v0, [B

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 38
    aput-byte v3, v1, v2

    shr-long/2addr p0, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 42
    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([B)V

    :cond_1
    return-object v1
.end method

.method public static getFormatted4ByteMetric(IZ)[B
    .locals 4

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 12
    invoke-static {p1}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getIsMetricModifier(Z)I

    move-result p1

    add-int/2addr v0, p1

    int-to-byte p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v2, 0x4

    .line 16
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    const/4 p1, 0x1

    aput-byte v0, v2, p1

    const/4 p1, 0x2

    aput-byte v1, v2, p1

    const/4 p1, 0x3

    aput-byte p0, v2, p1

    return-object v2
.end method

.method public static getFormattedDescription(Ljava/lang/String;I)[B
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    rsub-int/lit8 p1, p1, 0x50

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    new-array p1, p1, [B

    .line 26
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 28
    aget-byte v2, p0, v1

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_2
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aput-byte v0, p1, p0

    return-object p1
.end method

.method public static getIsMetricModifier(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    :goto_0
    return p0
.end method

.method public static getStringPayload([B)Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 50
    aget-byte v2, p0, v1

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit16 v2, v2, 0x100

    .line 52
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, ","

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
