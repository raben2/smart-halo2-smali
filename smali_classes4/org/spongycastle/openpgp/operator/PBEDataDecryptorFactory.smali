.class public abstract Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;
.super Ljava/lang/Object;
.source "PBEDataDecryptorFactory.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDataDecryptorFactory;


# instance fields
.field private calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

.field private passPhrase:[C


# direct methods
.method protected constructor <init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->passPhrase:[C

    .line 25
    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public makeKeyFromPassPhrase(ILorg/spongycastle/bcpg/S2K;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;->passPhrase:[C

    invoke-static {v0, p1, p2, v1}, Lorg/spongycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;ILorg/spongycastle/bcpg/S2K;[C)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract recoverSessionData(I[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation
.end method
