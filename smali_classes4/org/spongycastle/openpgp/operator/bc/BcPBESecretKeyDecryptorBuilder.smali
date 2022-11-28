.class public Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;
.super Ljava/lang/Object;
.source "BcPBESecretKeyDecryptorBuilder.java"


# instance fields
.field private calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;
    .locals 2

    .line 20
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder$1;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    invoke-direct {v0, p0, p1, v1}, Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;[CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-object v0
.end method
