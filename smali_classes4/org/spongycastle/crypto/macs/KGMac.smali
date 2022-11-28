.class public Lorg/spongycastle/crypto/macs/KGMac;
.super Ljava/lang/Object;
.source "KGMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private final cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

.field private final macSizeBits:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/modes/KGCMBlockCipher;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    .line 37
    invoke-virtual {p1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/spongycastle/crypto/macs/KGMac;->macSizeBits:I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/modes/KGCMBlockCipher;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    .line 52
    iput p2, p0, Lorg/spongycastle/crypto/macs/KGMac;->macSizeBits:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->doFinal([BI)I

    move-result p1
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 108
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/InvalidCipherTextException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-KGMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->macSizeBits:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 65
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 69
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    const/4 v2, 0x1

    new-instance v3, Lorg/spongycastle/crypto/params/AEADParameters;

    iget v4, p0, Lorg/spongycastle/crypto/macs/KGMac;->macSizeBits:I

    invoke-direct {v3, p1, v4, v0}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KGMAC requires ParametersWithIV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAADByte(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAADBytes([BII)V

    return-void
.end method
