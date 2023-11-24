.class public Lorg/spongycastle/math/ec/MontgomeryLadderMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "MontgomeryLadderMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 14
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 18
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    rsub-int/lit8 v4, v3, 0x1

    .line 20
    aget-object v5, v0, v4

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v0, v4

    .line 21
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_0

    .line 23
    :cond_0
    aget-object p1, v0, v2

    return-object p1
.end method
