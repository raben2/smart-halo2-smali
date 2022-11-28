.class public abstract Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;
.super Ljava/lang/Object;
.source "PBESecretKeyDecryptor.java"


# instance fields
.field private calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

.field private passPhrase:[C


# direct methods
.method protected constructor <init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->passPhrase:[C

    .line 14
    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public getChecksumCalculator(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    invoke-interface {v0, p1}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object p1

    return-object p1
.end method

.method public makeKeyFromPassPhrase(ILorg/spongycastle/bcpg/S2K;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;->passPhrase:[C

    invoke-static {v0, p1, p2, v1}, Lorg/spongycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;ILorg/spongycastle/bcpg/S2K;[C)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract recoverKeyData(I[B[B[BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation
.end method
