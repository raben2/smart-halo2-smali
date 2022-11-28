.class public Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;
.super Ljava/lang/Object;
.source "KDFCounterBytesGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/MacDerivationFunction;


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private fixedInputDataCtrPrefix:[B

.field private fixedInputData_afterCtr:[B

.field private generatedBytes:I

.field private final h:I

.field private ios:[B

.field private k:[B

.field private maxSizeExcl:I

.field private final prf:Lorg/spongycastle/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    .line 44
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 45
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    .line 70
    invoke-interface {p1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    .line 71
    iget p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    return-void
.end method

.method private generateNext()V
    .locals 5

    .line 152
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 155
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v2, v1

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported size of counter i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    ushr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    .line 158
    aput-byte v2, v1, v3

    .line 161
    :pswitch_1
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x3

    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 164
    :pswitch_2
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 167
    :pswitch_3
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 175
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputDataCtrPrefix:[B

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputData_afterCtr:[B

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 115
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    add-int v1, v0, p3

    if-ltz v1, :cond_2

    .line 116
    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    if-ge v1, v2, :cond_2

    .line 122
    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generateNext()V

    .line 129
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    rem-int v2, v0, v1

    .line 130
    rem-int/2addr v0, v1

    sub-int/2addr v1, v0

    .line 131
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    sub-int v1, p3, v0

    add-int/2addr p2, v0

    :goto_0
    if-lez v1, :cond_1

    .line 139
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generateNext()V

    .line 140
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    sub-int/2addr v1, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    return p3

    .line 118
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current KDFCTR may only be used for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMac()Lorg/spongycastle/crypto/Mac;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 3

    .line 77
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KDFCounterParameters;

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Lorg/spongycastle/crypto/params/KDFCounterParameters;

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->getKI()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 90
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->getFixedInputDataCounterPrefix()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputDataCtrPrefix:[B

    .line 91
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->getFixedInputDataCounterSuffix()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputData_afterCtr:[B

    .line 93
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->getR()I

    move-result p1

    .line 94
    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    .line 96
    sget-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 97
    sget-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    return-void

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type of arguments given"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
