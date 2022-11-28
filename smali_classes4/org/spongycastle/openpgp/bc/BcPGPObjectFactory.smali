.class public Lorg/spongycastle/openpgp/bc/BcPGPObjectFactory;
.super Lorg/spongycastle/openpgp/PGPObjectFactory;
.source "BcPGPObjectFactory.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 33
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 23
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/bc/BcPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    return-void
.end method
