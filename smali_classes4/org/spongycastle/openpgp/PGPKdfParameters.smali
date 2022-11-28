.class public Lorg/spongycastle/openpgp/PGPKdfParameters;
.super Ljava/lang/Object;
.source "PGPKdfParameters.java"

# interfaces
.implements Lorg/spongycastle/openpgp/PGPAlgorithmParameters;


# instance fields
.field private final hashAlgorithm:I

.field private final symmetricWrapAlgorithm:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/spongycastle/openpgp/PGPKdfParameters;->hashAlgorithm:I

    .line 12
    iput p2, p0, Lorg/spongycastle/openpgp/PGPKdfParameters;->symmetricWrapAlgorithm:I

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/spongycastle/openpgp/PGPKdfParameters;->hashAlgorithm:I

    return v0
.end method

.method public getSymmetricWrapAlgorithm()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/spongycastle/openpgp/PGPKdfParameters;->symmetricWrapAlgorithm:I

    return v0
.end method
