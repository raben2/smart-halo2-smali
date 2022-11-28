.class public Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.source "SecT571R1Point.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne p2, p1, :cond_2

    .line 33
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    return-void

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of the field elements is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 40
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 85
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 89
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 94
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 96
    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 99
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 106
    :cond_2
    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 109
    :cond_3
    iget-object v5, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 110
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-virtual {v1, v7}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 112
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v9

    .line 113
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v10

    .line 114
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v11

    .line 115
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v12

    .line 117
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    iget-object v13, v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v13}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v13

    :goto_0
    if-nez v13, :cond_5

    .line 121
    iget-object v15, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 122
    iget-object v14, v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    goto :goto_1

    .line 126
    :cond_5
    iget-object v14, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v14, v13, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 127
    iget-object v14, v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v14, v13, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object v15, v10

    move-object v14, v12

    .line 130
    :goto_1
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v1

    :goto_2
    if-nez v1, :cond_7

    .line 134
    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 135
    iget-object v7, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    goto :goto_3

    .line 139
    :cond_7
    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2, v1, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 140
    iget-object v2, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2, v1, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object v2, v9

    move-object v7, v11

    .line 144
    :goto_3
    invoke-static {v7, v14, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 147
    invoke-static {v2, v15, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 149
    invoke-static {v12}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 151
    invoke-static {v11}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 156
    :cond_8
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 160
    :cond_9
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 163
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 165
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 168
    invoke-virtual {v1, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 171
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 173
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    .line 176
    :cond_a
    invoke-virtual {v2, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 178
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object v6, v1

    goto :goto_4

    .line 182
    :cond_b
    invoke-static {v12, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 184
    invoke-static {v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v3

    .line 189
    invoke-static {v2, v3, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 190
    invoke-static {v15, v3, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 192
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 193
    iget-object v7, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v10, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 195
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 197
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    sget-object v3, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v5, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    invoke-direct {v1, v4, v2, v3, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    .line 200
    :cond_c
    new-instance v7, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v7, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 201
    iget-object v8, v7, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v12, v3, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    if-eqz v1, :cond_d

    .line 205
    iget-object v3, v7, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v8, v7, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v1, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 208
    :cond_d
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v1

    .line 210
    invoke-static {v10, v12, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 211
    invoke-static {v12, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 213
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v5, v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v5, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 214
    iget-object v3, v7, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v12, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 216
    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v3, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 217
    iget-object v5, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    if-eqz v13, :cond_e

    .line 221
    iget-object v1, v7, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v5, v7, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1, v13, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    :cond_e
    move-object v5, v2

    move-object v6, v3

    move-object v2, v7

    .line 225
    :goto_4
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v3, 0x1

    new-array v7, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v2, v7, v3

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 45
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 3

    .line 71
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v1

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 52
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 61
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    .line 406
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 411
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 412
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 418
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 419
    new-instance v7, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v1, v5, v2

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    move-object v1, v7

    move-object v2, v4

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v7
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 11

    .line 230
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 237
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 238
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 244
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 246
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v5

    .line 247
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v6

    .line 249
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v7

    :goto_0
    if-nez v7, :cond_3

    .line 253
    iget-object v8, v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 254
    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    goto :goto_1

    .line 258
    :cond_3
    iget-object v8, v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v8, v7, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 259
    iget-object v3, v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    move-object v8, v5

    move-object v3, v6

    .line 262
    :goto_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v9

    .line 263
    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 264
    invoke-static {v8, v3, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 266
    invoke-static {v9}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v1, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    sget-object v3, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 271
    :cond_4
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v1

    .line 272
    invoke-static {v9, v8, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 274
    new-instance v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v8, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 275
    iget-object v5, v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 277
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v5, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    if-eqz v7, :cond_5

    .line 280
    iget-object v9, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v10, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v3, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    :cond_5
    if-nez v7, :cond_6

    .line 286
    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    goto :goto_2

    .line 290
    :cond_6
    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v7, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object v0, v6

    .line 293
    :goto_2
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 294
    invoke-static {v1, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 295
    iget-object v0, v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v1, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v1, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 296
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v0, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 298
    new-instance v7, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v1, 0x1

    new-array v6, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v5, v6, v4

    iget-boolean v9, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    move-object v1, v7

    move-object v3, v8

    move-object v4, v0

    move-object v5, v6

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v7
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 11

    .line 303
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 307
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 312
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 314
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 315
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    .line 321
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 322
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    .line 327
    :cond_3
    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v5, v5, v3

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 328
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 330
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v7

    .line 331
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v8

    .line 332
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v9

    .line 333
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v10

    .line 336
    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 339
    iget-object v0, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 342
    iget-object v0, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 345
    iget-object v0, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v4, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v4, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 348
    invoke-static {v9, v8, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 350
    invoke-static {v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v0

    .line 353
    iget-object v4, v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v4, v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 354
    invoke-static {v9, v8, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 356
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v4

    .line 357
    invoke-static {v9, v10, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 358
    invoke-static {v7, v0, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecompAddToExt([J[J[J)V

    .line 359
    invoke-static {v4, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 362
    iget-object v2, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2, v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 365
    invoke-static {v7, v10, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 366
    invoke-static {v8, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 368
    invoke-static {v8}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    invoke-static {v9}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 375
    :cond_4
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 378
    :cond_5
    invoke-static {v9}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 380
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    invoke-direct {p1, v1, v0, v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object p1

    .line 383
    :cond_6
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>()V

    .line 384
    iget-object p1, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 385
    iget-object p1, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v5, v2, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {p1, v7, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 387
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {p1, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 388
    iget-object v5, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v8, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 389
    iget-object v5, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v7, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v5, v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 391
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v5, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 392
    iget-object v0, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v8, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 393
    iget-object v0, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v7, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    const/16 v0, 0x12

    .line 395
    invoke-static {v0, v4}, Lorg/spongycastle/math/raw/Nat;->zero64(I[J)V

    .line 396
    iget-object v0, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v10, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 397
    iget-object v0, v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addOne([J[J)V

    .line 398
    iget-object v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v10, v0, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 399
    iget-object v0, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v4, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 401
    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v0, 0x1

    new-array v4, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object p1, v4, v3

    iget-boolean p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    move-object v0, v6

    move-object v3, v5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v6

    .line 324
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
