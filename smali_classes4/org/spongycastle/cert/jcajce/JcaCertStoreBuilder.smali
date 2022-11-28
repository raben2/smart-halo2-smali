.class public Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;
.super Ljava/lang/Object;
.source "JcaCertStoreBuilder.java"


# instance fields
.field private certificateConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

.field private certs:Ljava/util/List;

.field private crlConverter:Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

.field private crls:Ljava/util/List;

.field private provider:Ljava/lang/Object;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    .line 25
    new-instance v0, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certificateConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 26
    new-instance v0, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-direct {v0}, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crlConverter:Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

    const-string v0, "Collection"

    .line 27
    iput-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    return-void
.end method

.method private convertHolders(Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;)Ljava/security/cert/CollectionCertStoreParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    iget-object v1, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {p1, v2}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/cert/X509CRLHolder;

    invoke-virtual {p2, v1}, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;->getCRL(Lorg/spongycastle/cert/X509CRLHolder;)Ljava/security/cert/X509CRL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_1
    new-instance p1, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {p1, v0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method public addCRL(Lorg/spongycastle/cert/X509CRLHolder;)Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCRLs(Lorg/spongycastle/util/Store;)Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/spongycastle/util/Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCertificates(Lorg/spongycastle/util/Store;)Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/spongycastle/util/Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Ljava/security/cert/CertStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certificateConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    iget-object v1, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crlConverter:Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->convertHolders(Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;)Ljava/security/cert/CollectionCertStoreParameters;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->provider:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v0, v1}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    instance-of v2, v1, Ljava/security/Provider;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    check-cast v1, Ljava/security/Provider;

    invoke-static {v2, v0, v1}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    move-result-object v0

    return-object v0

    .line 128
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v0

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certificateConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 79
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crlConverter:Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

    .line 80
    iput-object p1, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->provider:Ljava/lang/Object;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->certificateConverter:Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 88
    iget-object v0, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->crlConverter:Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/cert/jcajce/JcaX509CRLConverter;

    .line 89
    iput-object p1, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->provider:Ljava/lang/Object;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/spongycastle/cert/jcajce/JcaCertStoreBuilder;->type:Ljava/lang/String;

    return-object p0
.end method
