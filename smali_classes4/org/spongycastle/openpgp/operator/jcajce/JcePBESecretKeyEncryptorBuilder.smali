.class public Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;
.super Ljava/lang/Object;
.source "JcePBESecretKeyEncryptorBuilder.java"


# instance fields
.field private encAlgorithm:I

.field private helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

.field private random:Ljava/security/SecureRandom;

.field private s2kCount:I

.field private s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 30
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;-><init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 41
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;-><init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 1

    const/16 v0, 0x60

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;-><init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const/16 v0, 0x60

    .line 26
    iput v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->s2kCount:I

    .line 66
    iput p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->encAlgorithm:I

    .line 67
    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-gt p3, p1, :cond_0

    .line 74
    iput p3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->s2kCount:I

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "s2KCount value outside of range 0 to 255."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;
    .locals 0

    .line 20
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method


# virtual methods
.method public build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;
    .locals 8

    .line 106
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->random:Ljava/security/SecureRandom;

    .line 111
    :cond_0
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;

    iget v3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->encAlgorithm:I

    iget-object v4, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    iget v5, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->s2kCount:I

    iget-object v6, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->random:Ljava/security/SecureRandom;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;
    .locals 2

    .line 86
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;
    .locals 2

    .line 79
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
