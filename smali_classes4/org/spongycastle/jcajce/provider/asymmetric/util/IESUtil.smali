.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;
.source "IESUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessParameterSpec(Lorg/spongycastle/crypto/BufferedBlockCipher;[B)Lorg/spongycastle/jce/spec/IESParameterSpec;
    .locals 11

    if-nez p0, :cond_0

    .line 13
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/16 p1, 0x80

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    .line 19
    invoke-interface {p0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    invoke-interface {p0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    invoke-interface {p0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    invoke-interface {p0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RC5-64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {p0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKIPJACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x50

    const/16 v5, 0x50

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object p0

    .line 30
    :cond_2
    invoke-interface {p0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GOST28147"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 32
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x100

    const/16 v4, 0x100

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object p0

    .line 35
    :cond_3
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x80

    const/16 v9, 0x80

    move-object v5, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object p0

    .line 24
    :cond_4
    :goto_0
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/16 v4, 0x40

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-object p0
.end method
