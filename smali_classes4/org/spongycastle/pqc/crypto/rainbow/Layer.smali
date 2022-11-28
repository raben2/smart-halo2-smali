.class public Lorg/spongycastle/pqc/crypto/rainbow/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field private coeff_alpha:[[[S

.field private coeff_beta:[[[S

.field private coeff_eta:[S

.field private coeff_gamma:[[S

.field private oi:I

.field private vi:I

.field private viNext:I


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p1, 0xff

    .line 55
    iput p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    and-int/lit16 p1, p2, 0xff

    .line 56
    iput p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->viNext:I

    .line 57
    iget p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->viNext:I

    iget p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    .line 60
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    .line 61
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    .line 62
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    .line 63
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    .line 75
    iput p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->viNext:I

    sub-int/2addr p2, p1

    .line 76
    iput p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    .line 79
    iget p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    iget p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    filled-new-array {p1, p1, p2}, [I

    move-result-object p1

    const-class p2, S

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[S

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    .line 80
    iget p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    iget p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    filled-new-array {p1, p2, p2}, [I

    move-result-object p1

    const-class p2, S

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[S

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    .line 81
    iget p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    iget p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->viNext:I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-class p2, S

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    .line 82
    iget p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    new-array p2, p1, [S

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    const/4 v1, 0x0

    .line 89
    :goto_1
    iget v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 91
    :goto_2
    iget v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v2, v3, :cond_0

    .line 93
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_5

    const/4 v1, 0x0

    .line 100
    :goto_4
    iget v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v1, v2, :cond_4

    const/4 v2, 0x0

    .line 102
    :goto_5
    iget v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v2, v3, :cond_3

    .line 104
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_7

    const/4 v1, 0x0

    .line 111
    :goto_7
    iget v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->viNext:I

    if-ge v1, v2, :cond_6

    .line 113
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v2, v2, v0

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_8
    if-ge p2, p1, :cond_8

    .line 119
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 295
    instance-of v1, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 301
    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->viNext:I

    .line 302
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getViNext()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    .line 303
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    .line 304
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    .line 305
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    .line 306
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    .line 307
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object p1

    invoke-static {v1, p1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getCoeffAlpha()[[[S
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    return-object v0
.end method

.method public getCoeffBeta()[[[S
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    return-object v0
.end method

.method public getCoeffEta()[S
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    return-object v0
.end method

.method public getCoeffGamma()[[S
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    return-object v0
.end method

.method public getOi()I
    .locals 1

    .line 243
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    return v0
.end method

.method public getVi()I
    .locals 1

    .line 223
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    return v0
.end method

.method public getViNext()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->viNext:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 312
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    mul-int/lit8 v0, v0, 0x25

    .line 313
    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->viNext:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 314
    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 315
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 316
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 317
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 318
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public plugInVinegars([S)[[S
    .locals 9

    .line 140
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    add-int/lit8 v1, v0, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, S

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 142
    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    new-array v1, v1, [S

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 148
    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 150
    :goto_1
    iget v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v4, v5, :cond_1

    const/4 v5, 0x0

    .line 152
    :goto_2
    iget v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v5, v6, :cond_0

    .line 155
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_beta:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v4

    invoke-static {v6, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 157
    aget-short v7, p1, v5

    invoke-static {v6, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 159
    aget-short v7, v1, v3

    invoke-static {v7, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 165
    :goto_3
    iget v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_5

    const/4 v4, 0x0

    .line 167
    :goto_4
    iget v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v4, v5, :cond_4

    const/4 v5, 0x0

    .line 169
    :goto_5
    iget v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v5, v6, :cond_3

    .line 172
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_alpha:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v5

    invoke-static {v6, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 174
    aget-object v7, v0, v3

    aget-object v8, v0, v3

    aget-short v8, v8, v4

    invoke-static {v8, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 179
    :goto_6
    iget v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v3, v4, :cond_7

    const/4 v4, 0x0

    .line 181
    :goto_7
    iget v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    if-ge v4, v5, :cond_6

    .line 184
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v5, v5, v3

    aget-short v5, v5, v4

    aget-short v6, p1, v4

    invoke-static {v5, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    .line 187
    aget-short v6, v1, v3

    invoke-static {v6, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    .line 191
    :goto_8
    iget v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge p1, v3, :cond_9

    .line 193
    iget v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    :goto_9
    iget v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->viNext:I

    if-ge v3, v4, :cond_8

    .line 197
    aget-object v4, v0, p1

    iget v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->vi:I

    sub-int v6, v3, v5

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_gamma:[[S

    aget-object v7, v7, p1

    aget-short v7, v7, v3

    aget-object v8, v0, p1

    sub-int v5, v3, v5

    aget-short v5, v8, v5

    invoke-static {v7, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_9
    const/4 p1, 0x0

    .line 202
    :goto_a
    iget v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge p1, v3, :cond_a

    .line 205
    aget-short v3, v1, p1

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->coeff_eta:[S

    aget-short v4, v4, p1

    invoke-static {v3, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 209
    :cond_a
    :goto_b
    iget p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->oi:I

    if-ge v2, p1, :cond_b

    .line 211
    aget-object v3, v0, v2

    aget-short v4, v1, v2

    aput-short v4, v3, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_b
    return-object v0
.end method
