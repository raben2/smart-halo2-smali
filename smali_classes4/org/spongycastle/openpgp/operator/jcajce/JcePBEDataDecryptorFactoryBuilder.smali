.class public Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;
.super Ljava/lang/Object;
.source "JcePBEDataDecryptorFactoryBuilder.java"


# instance fields
.field private calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

.field private helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 33
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method


# virtual methods
.method public build([C)Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;
    .locals 2

    .line 70
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->calculatorProvider:Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    invoke-direct {v0, p0, p1, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;[CLorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;
    .locals 2

    .line 57
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;
    .locals 2

    .line 44
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
