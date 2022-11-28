.class public Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;
.super Ljava/lang/Object;
.source "BcPGPDigestCalculatorProvider.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createDigest(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    .line 19
    new-instance v1, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;-><init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;Lorg/spongycastle/crypto/Digest;)V

    .line 21
    new-instance v2, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;-><init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;ILorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;Lorg/spongycastle/crypto/Digest;)V

    return-object v2
.end method
