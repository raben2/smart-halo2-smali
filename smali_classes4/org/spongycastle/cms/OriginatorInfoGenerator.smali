.class public Lorg/spongycastle/cms/OriginatorInfoGenerator;
.super Ljava/lang/Object;
.source "OriginatorInfoGenerator.java"


# instance fields
.field private final origCRLs:Ljava/util/List;

.field private final origCerts:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/X509CertificateHolder;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    .line 19
    iget-object v0, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/util/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/cms/OriginatorInfoGenerator;-><init>(Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Store;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Store;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lorg/spongycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/spongycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 35
    invoke-static {p2}, Lorg/spongycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/spongycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public generate()Lorg/spongycastle/cms/OriginatorInformation;
    .locals 4

    .line 45
    iget-object v0, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lorg/spongycastle/cms/OriginatorInformation;

    new-instance v1, Lorg/spongycastle/asn1/cms/OriginatorInfo;

    iget-object v2, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-static {v2}, Lorg/spongycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCRLs:Ljava/util/List;

    invoke-static {v3}, Lorg/spongycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/cms/OriginatorInfo;-><init>(Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/cms/OriginatorInformation;-><init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;)V

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lorg/spongycastle/cms/OriginatorInformation;

    new-instance v1, Lorg/spongycastle/asn1/cms/OriginatorInfo;

    iget-object v2, p0, Lorg/spongycastle/cms/OriginatorInfoGenerator;->origCerts:Ljava/util/List;

    invoke-static {v2}, Lorg/spongycastle/cms/CMSUtils;->createDerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/cms/OriginatorInfo;-><init>(Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/cms/OriginatorInformation;-><init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;)V

    return-object v0
.end method
