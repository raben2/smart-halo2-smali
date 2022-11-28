.class public Lorg/spongycastle/crypto/params/ParametersWithUKM;
.super Ljava/lang/Object;
.source "ParametersWithUKM.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lorg/spongycastle/crypto/CipherParameters;

.field private ukm:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[B)V
    .locals 2

    .line 15
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/spongycastle/crypto/params/ParametersWithUKM;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->ukm:[B

    .line 25
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    .line 27
    iget-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->ukm:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getUKM()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ParametersWithUKM;->ukm:[B

    return-object v0
.end method
