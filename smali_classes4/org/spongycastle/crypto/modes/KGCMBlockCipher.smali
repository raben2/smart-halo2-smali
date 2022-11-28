.class public Lorg/spongycastle/crypto/modes/KGCMBlockCipher;
.super Ljava/lang/Object;
.source "KGCMBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final BITS_IN_BYTE:I = 0x8

.field private static final MASK_1_128:Ljava/math/BigInteger;

.field private static final MASK_1_256:Ljava/math/BigInteger;

.field private static final MASK_1_512:Ljava/math/BigInteger;

.field private static final MASK_2_128:Ljava/math/BigInteger;

.field private static final MASK_2_256:Ljava/math/BigInteger;

.field private static final MASK_2_512:Ljava/math/BigInteger;

.field private static final MIN_MAC_BITS:I = 0x40

.field private static final ONE:Ljava/math/BigInteger;

.field private static final POLYRED_128:Ljava/math/BigInteger;

.field private static final POLYRED_256:Ljava/math/BigInteger;

.field private static final POLYRED_512:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private H:[B

.field private associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

.field private b:[B

.field private ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field private data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

.field private engine:Lorg/spongycastle/crypto/BlockCipher;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private iv:[B

.field private lambda_c:I

.field private lambda_o:I

.field private macBlock:[B

.field private macSize:I

.field private temp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 24
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 25
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ONE:Ljava/math/BigInteger;

    .line 28
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "340282366920938463463374607431768211456"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_128:Ljava/math/BigInteger;

    .line 29
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "340282366920938463463374607431768211455"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_128:Ljava/math/BigInteger;

    .line 30
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "135"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_128:Ljava/math/BigInteger;

    .line 32
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "115792089237316195423570985008687907853269984665640564039457584007913129639936"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_256:Ljava/math/BigInteger;

    .line 33
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "115792089237316195423570985008687907853269984665640564039457584007913129639935"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_256:Ljava/math/BigInteger;

    .line 34
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1061"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_256:Ljava/math/BigInteger;

    .line 36
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084096"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_512:Ljava/math/BigInteger;

    .line 37
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_512:Ljava/math/BigInteger;

    .line 38
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "293"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_512:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/KGCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    .line 62
    new-instance v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/KGCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    .line 67
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    .line 68
    new-instance p1, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    .line 77
    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    .line 78
    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_o:I

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    return-void
.end method

.method private calculateMac([BII)V
    .locals 5

    .line 326
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    :goto_0
    const/4 v0, 0x0

    if-lez p3, :cond_1

    const/4 v1, 0x0

    .line 332
    :goto_1
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 334
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    aget-byte v3, v2, v1

    add-int v4, v1, p2

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->multiplyOverField(I[B[B[B)V

    .line 339
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->reverse([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    .line 341
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    sub-int/2addr p3, v0

    .line 344
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 347
    :cond_1
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 349
    iget p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_o:I

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->intToBytes(I[BI)V

    .line 350
    iget p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->intToBytes(I[BI)V

    const/4 p1, 0x0

    .line 352
    :goto_2
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 354
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    aget-byte p3, p2, p1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    aget-byte v1, v1, p1

    xor-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 357
    :cond_2
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    invoke-interface {p1, p2, v0, p3, v0}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void
.end method

.method private intToBytes(I[BI)V
    .locals 2

    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    .line 363
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 364
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 365
    aput-byte v1, p2, v0

    int-to-byte p1, p1

    .line 366
    aput-byte p1, p2, p3

    return-void
.end method

.method private multiplyOverField(I[B[B[B)V
    .locals 7

    .line 381
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 382
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 384
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    invoke-static {p3, v3, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->reverse([B)[B

    move-result-object p2

    .line 388
    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->reverse([B)[B

    move-result-object p3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    .line 413
    sget-object p1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_128:Ljava/math/BigInteger;

    .line 414
    sget-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_128:Ljava/math/BigInteger;

    .line 415
    sget-object v1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_128:Ljava/math/BigInteger;

    goto :goto_0

    .line 408
    :cond_0
    sget-object p1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_512:Ljava/math/BigInteger;

    .line 409
    sget-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_512:Ljava/math/BigInteger;

    .line 410
    sget-object v1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_512:Ljava/math/BigInteger;

    goto :goto_0

    .line 403
    :cond_1
    sget-object p1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_256:Ljava/math/BigInteger;

    .line 404
    sget-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_256:Ljava/math/BigInteger;

    .line 405
    sget-object v1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_256:Ljava/math/BigInteger;

    goto :goto_0

    .line 398
    :cond_2
    sget-object p1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_128:Ljava/math/BigInteger;

    .line 399
    sget-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_128:Ljava/math/BigInteger;

    .line 400
    sget-object v1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_128:Ljava/math/BigInteger;

    .line 419
    :goto_0
    sget-object v2, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ZERO:Ljava/math/BigInteger;

    .line 420
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 421
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v5, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 423
    :goto_1
    sget-object p3, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 425
    sget-object p3, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    sget-object v6, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 427
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    move-object v2, p3

    .line 430
    :cond_3
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p3

    .line 432
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v6, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 434
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    move-object v4, p3

    goto :goto_2

    :cond_4
    move-object v4, p3

    .line 436
    :goto_2
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_1

    .line 439
    :cond_5
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    .line 441
    invoke-static {p4, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 442
    array-length p2, p1

    invoke-static {p1, v3, p4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private processAAD([BII)V
    .locals 5

    mul-int/lit8 v0, p3, 0x8

    .line 161
    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_o:I

    .line 163
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_0
    if-lez p3, :cond_1

    const/4 v0, 0x0

    .line 170
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    aget-byte v3, v1, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->multiplyOverField(I[B[B[B)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->reverse([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    sub-int/2addr p3, v0

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v6

    .line 212
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    const/4 v7, 0x0

    if-lez v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    invoke-direct {p0, v0, v7, v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAAD([BII)V

    .line 219
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    .line 221
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    add-int/2addr v1, v6

    if-lt v0, v1, :cond_1

    mul-int/lit8 v0, v6, 0x8

    .line 226
    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    .line 228
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    move v3, v6

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    .line 229
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    add-int v2, p2, v0

    invoke-virtual {v1, p1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    invoke-direct {p0, p1, p2, v6}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->calculateMac([BII)V

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    sub-int v0, v6, v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    .line 237
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    sub-int v1, v6, v1

    invoke-direct {p0, v0, v7, v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->calculateMac([BII)V

    .line 239
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    sub-int v3, v6, v3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    .line 240
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    add-int v2, p2, v0

    invoke-virtual {v1, p1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    add-int v1, p2, v0

    .line 245
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    if-eqz v2, :cond_5

    .line 250
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->forEncryption:Z

    if-eqz v3, :cond_3

    .line 252
    iget v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    invoke-static {v2, v7, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->reset()V

    .line 256
    iget v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    return v0

    .line 260
    :cond_3
    iget v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    new-array v1, v1, [B

    .line 261
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v2

    iget v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    invoke-static {v2, v0, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    new-array v3, v2, [B

    .line 264
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    invoke-static {v4, v7, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    invoke-static {v1, v3}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->reset()V

    return v0

    .line 268
    :cond_4
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac verification failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mac is not calculated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/KGCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 4

    .line 279
    iget v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    new-array v1, v0, [B

    .line 281
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 293
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    return p1

    .line 299
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 0

    return p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 86
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->forEncryption:Z

    .line 89
    instance-of p1, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 91
    check-cast p2, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 93
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object p1

    .line 94
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    .line 95
    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 96
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    .line 100
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result p1

    const/16 v1, 0x40

    if-lt p1, v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-gt p1, v1, :cond_0

    rem-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_0

    .line 106
    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    .line 107
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    if-eqz p2, :cond_2

    .line 111
    array-length v1, p2

    invoke-virtual {p0, p2, v0, v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAADBytes([BII)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for MAC size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 114
    :cond_1
    instance-of p1, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_3

    .line 116
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 118
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    .line 119
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    .line 120
    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 121
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    .line 125
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    .line 127
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 134
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    .line 135
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 136
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2, v1, p1}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameter passed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADByte(B)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 190
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p2, p1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 198
    array-length p4, p1

    add-int p5, p2, p3

    if-lt p4, p5, :cond_0

    .line 202
    iget-object p4, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    return p1

    .line 200
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    .line 305
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    .line 306
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    .line 307
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    .line 310
    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_o:I

    .line 312
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 314
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 315
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 317
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    if-eqz v1, :cond_0

    .line 319
    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAADBytes([BII)V

    :cond_0
    return-void
.end method
