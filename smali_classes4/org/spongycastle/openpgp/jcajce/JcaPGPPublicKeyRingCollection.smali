.class public Lorg/spongycastle/openpgp/jcajce/JcaPGPPublicKeyRingCollection;
.super Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;
.source "JcaPGPPublicKeyRingCollection.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;)V

    return-void
.end method
