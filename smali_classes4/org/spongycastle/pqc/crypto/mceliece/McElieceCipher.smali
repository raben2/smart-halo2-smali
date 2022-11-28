.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;
.super Ljava/lang/Object;
.source "McElieceCipher.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field public cipherTextSize:I

.field private forEncryption:Z

.field private k:I

.field private key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

.field public maxPlainTextSize:I

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeMessage(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object p1

    .line 216
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, p1, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 222
    aget-byte v2, p1, v0

    if-ne v2, v1, :cond_1

    .line 228
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 229
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 224
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v0, "Bad Padding: invalid ciphertext"

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeMessageRepresentative([B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 4

    .line 149
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 150
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length p1, p1

    aput-byte v2, v0, p1

    .line 152
    iget p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    return-object p1
.end method

.method private initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    .line 119
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getK()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    .line 121
    iget p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    .line 122
    iget p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    return-void
.end method

.method private initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 108
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    .line 109
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    .line 110
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getT()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->t:I

    .line 111
    iget p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    .line 112
    iget p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    return-void
.end method


# virtual methods
.method public getKeySize(Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;)I
    .locals 1

    .line 91
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result p1

    return p1

    .line 96
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result p1

    return p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->forEncryption:Z

    if-eqz p1, :cond_1

    .line 57
    instance-of p1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    .line 59
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 61
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 62
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 63
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 69
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 70
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    goto :goto_0

    .line 75
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 76
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V

    :goto_0
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->forEncryption:Z

    if-nez v0, :cond_0

    .line 170
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    invoke-static {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 171
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    .line 172
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v1

    .line 173
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getGoppaPoly()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getSInv()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    .line 175
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP1()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v4

    .line 176
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP2()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v5

    .line 177
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getH()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    .line 178
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getQInv()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v0

    .line 181
    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v5

    .line 184
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->computeInverse()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v7

    .line 187
    invoke-virtual {p1, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 190
    invoke-virtual {v6, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 193
    invoke-static {v6, v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->syndromeDecode(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 197
    invoke-virtual {p1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 198
    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 201
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->extractRightVector(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 204
    invoke-virtual {v3, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 207
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->computeMessage(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object p1

    return-object p1

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public messageEncrypt([B)[B
    .locals 4

    .line 133
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->computeMessageRepresentative([B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object p1

    .line 138
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->t:I

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(IILjava/security/SecureRandom;)V

    .line 140
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getG()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v1

    .line 141
    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    .line 142
    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 144
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
