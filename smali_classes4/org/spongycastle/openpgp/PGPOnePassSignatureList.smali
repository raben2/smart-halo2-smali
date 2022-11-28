.class public Lorg/spongycastle/openpgp/PGPOnePassSignatureList;
.super Ljava/lang/Object;
.source "PGPOnePassSignatureList.java"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/spongycastle/util/Iterable<",
        "Lorg/spongycastle/openpgp/PGPOnePassSignature;",
        ">;"
    }
.end annotation


# instance fields
.field sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPOnePassSignature;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    new-array v0, v0, [Lorg/spongycastle/openpgp/PGPOnePassSignature;

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    .line 28
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/openpgp/PGPOnePassSignature;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    array-length v0, p1

    new-array v0, v0, [Lorg/spongycastle/openpgp/PGPOnePassSignature;

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    .line 21
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/spongycastle/openpgp/PGPOnePassSignature;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/spongycastle/openpgp/PGPOnePassSignature;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/spongycastle/util/Arrays$Iterator;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    invoke-direct {v0, v1}, Lorg/spongycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->sigs:[Lorg/spongycastle/openpgp/PGPOnePassSignature;

    array-length v0, v0

    return v0
.end method
