.class public Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;
.super Lorg/spongycastle/crypto/generators/DESKeyGenerator;
.source "DESedeKeyGenerator.java"


# static fields
.field private static final MAX_IT:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 4

    .line 46
    iget v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 51
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 53
    invoke-static {v0}, Lorg/spongycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 55
    array-length v3, v0

    invoke-static {v0, v1, v3}, Lorg/spongycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    :cond_1
    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to generate DES-EDE key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 3

    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    .line 24
    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    .line 26
    iget p1, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v0, 0x18

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget p1, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0xe

    const/16 v2, 0x10

    if-ne p1, v1, :cond_1

    .line 32
    iput v2, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    goto :goto_1

    .line 34
    :cond_1
    iget p1, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DESede key must be 192 or 128 bits long."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    :goto_0
    iput v0, p0, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    :cond_4
    :goto_1
    return-void
.end method
