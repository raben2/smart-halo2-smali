.class Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LDDecode(IIII)S
    .locals 0

    .line 96
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p0

    .line 97
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 98
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 99
    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x18008

    sub-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x1f

    int-to-short p0, p0

    return p0
.end method

.method static abs(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr p0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method static f([IIII)I
    .locals 3

    mul-int/lit16 v0, p3, 0xaaa

    shr-int/lit8 v0, v0, 0x19

    mul-int/lit16 v1, v0, 0x3001

    sub-int v1, p3, v1

    rsub-int v1, v1, 0x3000

    shr-int/lit8 v1, v1, 0x1f

    sub-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v1

    .line 27
    aput v2, p0, p1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    .line 31
    aput v0, p0, p2

    .line 33
    aget p0, p0, p1

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit16 p0, p0, 0x3001

    sub-int/2addr p3, p0

    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result p0

    return p0
.end method

.method static g(I)I
    .locals 3

    mul-int/lit16 v0, p0, 0xaaa

    shr-int/lit8 v0, v0, 0x1b

    const v1, 0xc004

    mul-int v1, v1, v0

    sub-int v1, p0, v1

    const v2, 0xc003

    sub-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1f

    sub-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    const v1, 0x18008

    mul-int v0, v0, v1

    sub-int/2addr v0, p0

    .line 53
    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result p0

    return p0
.end method

.method static helpRec([S[S[BB)V
    .locals 19

    const/16 v0, 0x8

    .line 58
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p3, v1, v2

    const/16 v3, 0x20

    .line 62
    new-array v3, v3, [B

    .line 63
    array-length v4, v3

    move-object/from16 v5, p2

    invoke-static {v5, v1, v3, v2, v4}, Lorg/spongycastle/pqc/crypto/newhope/ChaCha20;->process([B[B[BII)V

    .line 66
    new-array v1, v0, [I

    const/4 v4, 0x4

    new-array v5, v4, [I

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x100

    if-ge v6, v7, :cond_0

    ushr-int/lit8 v7, v6, 0x3

    .line 71
    aget-byte v7, v3, v7

    and-int/lit8 v8, v6, 0x7

    ushr-int/2addr v7, v8

    const/4 v8, 0x1

    and-int/2addr v7, v8

    add-int/lit8 v9, v6, 0x0

    .line 73
    aget-short v10, p1, v9

    mul-int/lit8 v10, v10, 0x8

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v10, v7

    invoke-static {v1, v2, v4, v10}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v10

    add-int/lit16 v11, v6, 0x100

    .line 74
    aget-short v12, p1, v11

    mul-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v7

    const/4 v13, 0x5

    invoke-static {v1, v8, v13, v12}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v12

    add-int/2addr v10, v12

    add-int/lit16 v12, v6, 0x200

    .line 75
    aget-short v14, p1, v12

    mul-int/lit8 v14, v14, 0x8

    add-int/2addr v14, v7

    const/4 v15, 0x6

    const/4 v13, 0x2

    invoke-static {v1, v13, v15, v14}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v14

    add-int/2addr v10, v14

    add-int/lit16 v14, v6, 0x300

    .line 76
    aget-short v16, p1, v14

    mul-int/lit8 v16, v16, 0x8

    add-int v7, v16, v7

    const/4 v0, 0x7

    const/4 v15, 0x3

    invoke-static {v1, v15, v0, v7}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v7

    add-int/2addr v10, v7

    rsub-int v7, v10, 0x6001

    shr-int/lit8 v7, v7, 0x1f

    not-int v10, v7

    .line 80
    aget v17, v1, v2

    and-int v17, v10, v17

    aget v18, v1, v4

    and-int v18, v7, v18

    xor-int v17, v17, v18

    aput v17, v5, v2

    .line 81
    aget v17, v1, v8

    and-int v17, v10, v17

    const/16 v18, 0x5

    aget v18, v1, v18

    and-int v18, v7, v18

    xor-int v17, v17, v18

    aput v17, v5, v8

    .line 82
    aget v17, v1, v13

    and-int v17, v10, v17

    const/16 v18, 0x6

    aget v18, v1, v18

    and-int v18, v7, v18

    xor-int v17, v17, v18

    aput v17, v5, v13

    .line 83
    aget v17, v1, v15

    and-int v10, v10, v17

    aget v0, v1, v0

    and-int/2addr v0, v7

    xor-int/2addr v0, v10

    aput v0, v5, v15

    .line 85
    aget v0, v5, v2

    aget v10, v5, v15

    sub-int/2addr v0, v10

    and-int/2addr v0, v15

    int-to-short v0, v0

    aput-short v0, p0, v9

    .line 86
    aget v0, v5, v8

    aget v8, v5, v15

    sub-int/2addr v0, v8

    and-int/2addr v0, v15

    int-to-short v0, v0

    aput-short v0, p0, v11

    .line 87
    aget v0, v5, v13

    aget v8, v5, v15

    sub-int/2addr v0, v8

    and-int/2addr v0, v15

    int-to-short v0, v0

    aput-short v0, p0, v12

    neg-int v0, v7

    .line 88
    aget v7, v5, v15

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    and-int/2addr v0, v15

    int-to-short v0, v0

    aput-short v0, p0, v14

    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method static rec([B[S[S)V
    .locals 10

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    const/4 v1, 0x4

    .line 110
    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x0

    .line 113
    aget-short v4, p1, v3

    mul-int/lit8 v4, v4, 0x8

    const v5, 0x30010

    add-int/2addr v4, v5

    aget-short v3, p2, v3

    const/4 v6, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit16 v7, v2, 0x300

    aget-short v8, p2, v7

    add-int/2addr v3, v8

    mul-int/lit16 v3, v3, 0x3001

    sub-int/2addr v4, v3

    aput v4, v1, v0

    add-int/lit16 v3, v2, 0x100

    .line 114
    aget-short v4, p1, v3

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v5

    aget-short v3, p2, v3

    mul-int/lit8 v3, v3, 0x2

    aget-short v8, p2, v7

    add-int/2addr v3, v8

    mul-int/lit16 v3, v3, 0x3001

    sub-int/2addr v4, v3

    const/4 v3, 0x1

    aput v4, v1, v3

    add-int/lit16 v4, v2, 0x200

    .line 115
    aget-short v8, p1, v4

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v5

    aget-short v4, p2, v4

    mul-int/lit8 v4, v4, 0x2

    aget-short v9, p2, v7

    add-int/2addr v4, v9

    mul-int/lit16 v4, v4, 0x3001

    sub-int/2addr v8, v4

    aput v8, v1, v6

    .line 116
    aget-short v4, p1, v7

    mul-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v5

    aget-short v5, p2, v7

    mul-int/lit16 v5, v5, 0x3001

    sub-int/2addr v4, v5

    const/4 v5, 0x3

    aput v4, v1, v5

    ushr-int/lit8 v4, v2, 0x3

    .line 118
    aget-byte v7, p0, v4

    aget v8, v1, v0

    aget v3, v1, v3

    aget v6, v1, v6

    aget v5, v1, v5

    invoke-static {v8, v3, v6, v5}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->LDDecode(IIII)S

    move-result v3

    and-int/lit8 v5, v2, 0x7

    shl-int/2addr v3, v5

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
