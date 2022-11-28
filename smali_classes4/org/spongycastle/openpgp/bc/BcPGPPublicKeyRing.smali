.class public Lorg/spongycastle/openpgp/bc/BcPGPPublicKeyRing;
.super Lorg/spongycastle/openpgp/PGPPublicKeyRing;
.source "BcPGPPublicKeyRing.java"


# static fields
.field private static fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    sput-object v0, Lorg/spongycastle/openpgp/bc/BcPGPPublicKeyRing;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    sget-object v0, Lorg/spongycastle/openpgp/bc/BcPGPPublicKeyRing;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    sget-object v0, Lorg/spongycastle/openpgp/bc/BcPGPPublicKeyRing;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>([BLorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method
