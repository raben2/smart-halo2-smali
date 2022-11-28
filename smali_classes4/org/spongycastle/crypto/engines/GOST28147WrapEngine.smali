.class public Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;
.super Ljava/lang/Object;
.source "GOST28147WrapEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# instance fields
.field private cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

.field private mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    .line 18
    new-instance v0, Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-direct {v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST28147Wrap"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 22
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 24
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 25
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 28
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithUKM;

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 34
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    instance-of p1, p1, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 44
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public unwrap([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result v0

    sub-int v0, p3, v0

    new-array v0, v0, [B

    .line 73
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 74
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v3, p2, 0x8

    const/16 v4, 0x8

    invoke-virtual {v1, p1, v3, v0, v4}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 75
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v3, p2, 0x10

    const/16 v4, 0x10

    invoke-virtual {v1, p1, v3, v0, v4}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 76
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v3, p2, 0x18

    const/16 v4, 0x18

    invoke-virtual {v1, p1, v3, v0, v4}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 78
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result v1

    new-array v1, v1, [B

    .line 80
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    array-length v4, v0

    invoke-virtual {v3, v0, v2, v4}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->update([BII)V

    .line 82
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v3, v1, v2}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->doFinal([BI)I

    .line 84
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result v3

    new-array v3, v3, [B

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x4

    .line 86
    iget-object p3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result p3

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-static {v1, v3}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mac mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wrap([BII)[B
    .locals 4

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->update([BII)V

    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result v0

    add-int/2addr v0, p3

    new-array v0, v0, [B

    .line 58
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 59
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v2, p2, 0x8

    const/16 v3, 0x8

    invoke-virtual {v1, p1, v2, v0, v3}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 60
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v2, p2, 0x10

    const/16 v3, 0x10

    invoke-virtual {v1, p1, v2, v0, v3}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 61
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    const/16 v2, 0x18

    add-int/2addr p2, v2

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 63
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {p1, v0, p3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->doFinal([BI)I

    return-object v0
.end method
