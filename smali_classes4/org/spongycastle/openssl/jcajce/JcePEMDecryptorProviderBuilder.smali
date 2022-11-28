.class public Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
.super Ljava/lang/Object;
.source "JcePEMDecryptorProviderBuilder.java"


# instance fields
.field private helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;)Lorg/spongycastle/jcajce/util/JcaJceHelper;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method


# virtual methods
.method public build([C)Lorg/spongycastle/openssl/PEMDecryptorProvider;
    .locals 1

    .line 34
    new-instance v0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;-><init>(Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;[C)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
    .locals 1

    .line 27
    new-instance v0, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;
    .locals 1

    .line 20
    new-instance v0, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/spongycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method
