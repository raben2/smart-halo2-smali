.class public Lorg/spongycastle/asn1/x9/X9IntegerConverter;
.super Ljava/lang/Object;
.source "X9IntegerConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteLength(Lorg/spongycastle/math/ec/ECCurve;)I
    .locals 0

    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public getByteLength(Lorg/spongycastle/math/ec/ECFieldElement;)I
    .locals 0

    .line 35
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public integerToBytes(Ljava/math/BigInteger;I)[B
    .locals 3

    .line 49
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 53
    new-array p2, p2, [B

    .line 55
    array-length v0, p1

    array-length v2, p2

    sub-int/2addr v0, v2

    array-length v2, p2

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 59
    :cond_0
    array-length v0, p1

    if-le p2, v0, :cond_1

    .line 61
    new-array p2, p2, [B

    .line 63
    array-length v0, p2

    array-length v2, p1

    sub-int/2addr v0, v2

    array-length v2, p1

    invoke-static {p1, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1
    return-object p1
.end method
