.class public Lorg/spongycastle/x509/PKIXCertPathReviewer;
.super Lorg/spongycastle/x509/CertPathValidatorUtilities;
.source "PKIXCertPathReviewer.java"


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DIST_POINTS:Ljava/lang/String;

.field private static final QC_STATEMENT:Ljava/lang/String;

.field private static final RESOURCE_NAME:Ljava/lang/String; = "org.spongycastle.x509.CertPathReviewerMessages"


# instance fields
.field protected certPath:Ljava/security/cert/CertPath;

.field protected certs:Ljava/util/List;

.field protected errors:[Ljava/util/List;

.field private initialized:Z

.field protected n:I

.field protected notifications:[Ljava/util/List;

.field protected pkixParams:Ljava/security/cert/PKIXParameters;

.field protected policyTree:Ljava/security/cert/PolicyNode;

.field protected subjectPublicKey:Ljava/security/PublicKey;

.field protected trustAnchor:Ljava/security/cert/TrustAnchor;

.field protected validDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->qCStatements:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    .line 87
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    .line 88
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Lorg/spongycastle/x509/CertPathValidatorUtilities;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lorg/spongycastle/x509/CertPathValidatorUtilities;-><init>()V

    .line 181
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    return-void
.end method

.method private IPtoString([B)Ljava/lang/String;
    .locals 3

    .line 1988
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1992
    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 1994
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 1996
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    .line 1997
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2000
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private checkCriticalExtensions()V
    .locals 13

    .line 1822
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    .line 1823
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1829
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1831
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v6, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1849
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_1
    if-ltz v1, :cond_5

    .line 1851
    iget-object v6, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1853
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1854
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_4

    .line 1859
    :cond_1
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1860
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1861
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1862
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1863
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1864
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1865
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1866
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1867
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1868
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1871
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1873
    invoke-direct {p0, v6, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->processQcStatements(Ljava/security/cert/X509Certificate;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1875
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1879
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1880
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_3

    .line 1884
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v9, v6, v7}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1888
    :try_start_3
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v7, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.criticalExtensionError"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1889
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {v6, v7, v8, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1890
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v3, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v6, v0, v3, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1893
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1896
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1897
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1899
    new-instance v7, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v8, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v9, "CertPathReviewer.unknownCriticalExt"

    new-array v10, v4, [Ljava/lang/Object;

    new-instance v11, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1900
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    aput-object v11, v10, v5

    invoke-direct {v7, v8, v9, v10}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1901
    invoke-virtual {p0, v7, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 1836
    new-instance v1, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v6, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.certPathCheckerError"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1837
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {v1, v6, v7, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1838
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1908
    :goto_5
    invoke-virtual {v0}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    :cond_5
    return-void
.end method

.method private checkNameConstraints()V
    .locals 9

    .line 390
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 400
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_3

    .line 402
    iget v3, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    .line 408
    iget-object v3, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 412
    invoke-static {v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 414
    invoke-static {v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 415
    new-instance v6, Lorg/spongycastle/asn1/ASN1InputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_6

    .line 420
    :try_start_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_6

    .line 431
    :try_start_2
    invoke-virtual {v0, v6}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/spongycastle/asn1/ASN1Sequence;)V
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_6

    .line 442
    :try_start_3
    invoke-virtual {v0, v6}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/spongycastle/asn1/ASN1Sequence;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_6

    .line 454
    :try_start_4
    sget-object v4, Lorg/spongycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    .line 464
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 466
    invoke-virtual {v4, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v7
    :try_end_5
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_6

    .line 470
    :try_start_6
    invoke-virtual {v0, v7}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 471
    invoke-virtual {v0, v7}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 475
    :try_start_7
    new-instance v3, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v4, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.notPermittedEmail"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Lorg/spongycastle/i18n/filter/UntrustedInput;

    invoke-direct {v8, v7}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v4, v6, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_1
    move-exception v0

    .line 458
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.subjAltNameExtError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_2
    move-exception v0

    .line 446
    new-instance v3, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v6, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.excludedDN"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 447
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v6, v7, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_3
    move-exception v0

    .line 435
    new-instance v3, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v6, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.notPermittedDN"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 436
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v6, v7, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_4
    move-exception v0

    .line 424
    new-instance v3, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v6, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.ncSubjectNameError"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Lorg/spongycastle/i18n/filter/UntrustedInput;

    invoke-direct {v8, v4}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v6, v7, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_7
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_6

    .line 574
    :cond_0
    :try_start_8
    sget-object v4, Lorg/spongycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_8
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v3, :cond_2

    .line 584
    :try_start_9
    invoke-static {v3}, Lorg/spongycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;

    move-result-object v3

    .line 589
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 592
    invoke-virtual {v0, v4}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)V

    .line 598
    :cond_1
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 601
    :goto_2
    array-length v4, v3

    if-eq v5, v4, :cond_2

    .line 603
    aget-object v4, v3, v5

    invoke-virtual {v0, v4}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/spongycastle/asn1/x509/GeneralSubtree;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    .line 578
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.ncExtError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_9
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    move-exception v0

    .line 612
    invoke-virtual {v0}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    :cond_3
    return-void
.end method

.method private checkPathLength()V
    .locals 9

    .line 623
    iget v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    .line 629
    iget-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    :goto_0
    if-lez v1, :cond_3

    .line 631
    iget v5, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    .line 633
    iget-object v5, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 637
    invoke-static {v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_1

    if-gtz v4, :cond_0

    .line 641
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v7, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.pathLengthExtended"

    invoke-direct {v6, v7, v8}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0, v6}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    :cond_0
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v0, 0x1

    .line 653
    :cond_1
    :try_start_0
    sget-object v6, Lorg/spongycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v5
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 658
    :catch_0
    new-instance v5, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v6, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.processLengthConstError"

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0, v5, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 665
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 669
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-ge v5, v4, :cond_2

    move v4, v5

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 680
    :cond_3
    new-instance v1, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v4, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.totalPathLength"

    new-array v2, v2, [Ljava/lang/Object;

    .line 681
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {v1, v4, v5, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    invoke-virtual {p0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;)V

    return-void
.end method

.method private checkPolicy()V
    .locals 28

    move-object/from16 v1, p0

    .line 1104
    iget-object v0, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    .line 1114
    iget v2, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1115
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 1117
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1120
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string v5, "2.5.29.32.0"

    .line 1122
    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v5, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v12, "2.5.29.32.0"

    const/4 v13, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1127
    aget-object v6, v2, v4

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    iget-object v6, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 1138
    :cond_1
    iget v6, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/2addr v6, v3

    .line 1144
    :goto_1
    iget-object v7, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v7}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    .line 1150
    :cond_2
    iget v7, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/2addr v7, v3

    .line 1156
    :goto_2
    iget-object v8, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    .line 1162
    :cond_3
    iget v8, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/2addr v8, v3

    .line 1177
    :goto_3
    :try_start_0
    iget-object v9, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    move v11, v7

    move v12, v8

    const/4 v8, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    :goto_4
    if-ltz v9, :cond_2d

    .line 1180
    iget v5, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int/2addr v5, v9

    .line 1183
    iget-object v13, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_9

    .line 1190
    :try_start_1
    sget-object v13, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v15, v13}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v13

    move-object/from16 v21, v13

    check-cast v21, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v21, :cond_19

    if-eqz v7, :cond_19

    .line 1203
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v13

    .line 1204
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1206
    :goto_5
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1208
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v16

    .line 1209
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    .line 1211
    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "2.5.29.32.0"

    .line 1213
    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_9

    if-nez v3, :cond_4

    .line 1218
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v3
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_9

    .line 1226
    :try_start_4
    invoke-static {v5, v2, v10, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->processCertD1i(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1230
    invoke-static {v5, v2, v10, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->processCertD1ii(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1222
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyQualifierError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_4
    :goto_6
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_8

    const-string v3, "2.5.29.32.0"

    .line 1235
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_8

    .line 1241
    :cond_6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1242
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1244
    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1246
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1248
    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1250
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    :goto_8
    move-object v4, v14

    :cond_9
    if-gtz v11, :cond_b

    .line 1259
    iget v3, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge v5, v3, :cond_a

    invoke-static {v15}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_9

    :cond_a
    move-object/from16 v23, v4

    move-object/from16 v27, v15

    goto/16 :goto_f

    .line 1261
    :cond_b
    :goto_9
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 1263
    :cond_c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1265
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v8

    const-string v10, "2.5.29.32.0"

    .line 1267
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_9

    if-eqz v10, :cond_c

    .line 1272
    :try_start_5
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v3
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_9

    add-int/lit8 v8, v5, -0x1

    .line 1279
    :try_start_6
    aget-object v8, v2, v8

    const/4 v10, 0x0

    .line 1281
    :goto_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_13

    .line 1283
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1285
    invoke-virtual {v14}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 1286
    :goto_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1288
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v23, v4

    .line 1291
    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 1293
    check-cast v13, Ljava/lang/String;

    move-object v4, v13

    goto :goto_c

    .line 1295
    :cond_d
    instance-of v4, v13, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_11

    .line 1297
    check-cast v13, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1306
    :goto_c
    invoke-virtual {v14}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v13

    const/16 v16, 0x0

    .line 1308
    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1310
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v24, v8

    .line 1312
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v16, 0x1

    :cond_e
    move-object/from16 v8, v24

    goto :goto_d

    :cond_f
    move-object/from16 v24, v8

    if-nez v16, :cond_10

    .line 1320
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1321
    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1323
    new-instance v13, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    move-object/from16 v14, v16

    move-object/from16 v27, v15

    move v15, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v26

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v20}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v4, v25

    move-object/from16 v13, v26

    .line 1327
    invoke-virtual {v13, v4}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1328
    aget-object v8, v2, v5

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    move-object v13, v14

    move-object/from16 v27, v15

    :goto_e
    move-object v14, v13

    move-object/from16 v4, v23

    move-object/from16 v8, v24

    move-object/from16 v15, v27

    goto/16 :goto_b

    :cond_11
    move-object/from16 v4, v23

    goto/16 :goto_b

    :cond_12
    move-object/from16 v23, v4

    move-object/from16 v24, v8

    move-object/from16 v27, v15

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a

    :cond_13
    move-object/from16 v23, v4

    move-object/from16 v27, v15

    goto :goto_f

    :catch_1
    move-exception v0

    .line 1276
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyQualifierError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_14
    move-object/from16 v23, v4

    move-object/from16 v27, v15

    :goto_f
    add-int/lit8 v3, v5, -0x1

    :goto_10
    if-ltz v3, :cond_17

    .line 1342
    aget-object v4, v2, v3

    move-object v8, v7

    const/4 v7, 0x0

    .line 1344
    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_16

    .line 1346
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1347
    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v13

    if-nez v13, :cond_15

    .line 1349
    invoke-static {v8, v2, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v8

    if-nez v8, :cond_15

    move-object v7, v8

    goto :goto_12

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_16
    move-object v7, v8

    :goto_12
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1362
    :cond_17
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1366
    sget-object v4, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 1368
    aget-object v4, v2, v5

    const/4 v8, 0x0

    .line 1369
    :goto_13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_18

    .line 1371
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1372
    invoke-virtual {v10, v3}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_18
    move-object v10, v7

    move-object/from16 v8, v23

    goto :goto_14

    :cond_19
    move-object/from16 v27, v15

    move-object v10, v7

    :goto_14
    if-nez v21, :cond_1a

    const/4 v10, 0x0

    :cond_1a
    if-gtz v6, :cond_1c

    if-eqz v10, :cond_1b

    goto :goto_15

    .line 1389
    :cond_1b
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noValidPolicyTree"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    .line 1397
    :cond_1c
    :goto_15
    iget v3, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I
    :try_end_6
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_9

    if-eq v5, v3, :cond_2c

    .line 1405
    :try_start_7
    sget-object v3, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v4, v27

    invoke-static {v4, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3
    :try_end_7
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_9

    if-eqz v3, :cond_1f

    .line 1415
    :try_start_8
    move-object v7, v3

    check-cast v7, Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v13, 0x0

    .line 1416
    :goto_16
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v14

    if-ge v13, v14, :cond_1f

    .line 1418
    invoke-virtual {v7, v13}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v15, 0x0

    .line 1419
    invoke-virtual {v14, v15}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v15, 0x1

    .line 1420
    invoke-virtual {v14, v15}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "2.5.29.32.0"

    move-object/from16 v17, v7

    .line 1421
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v7, "2.5.29.32.0"

    .line 1426
    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v17

    goto :goto_16

    .line 1428
    :cond_1d
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.invalidPolicyMapping"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1423
    :cond_1e
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.invalidPolicyMapping"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_1f
    if-eqz v3, :cond_24

    .line 1438
    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 1439
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1440
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x0

    .line 1442
    :goto_17
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    if-ge v14, v15, :cond_21

    .line 1444
    invoke-virtual {v3, v14}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .line 1445
    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v8

    const/4 v8, 0x1

    .line 1446
    invoke-virtual {v15, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 1449
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    .line 1451
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1452
    invoke-interface {v15, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1453
    invoke-interface {v7, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1458
    :cond_20
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1459
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    move-object/from16 v8, v17

    goto :goto_17

    :cond_21
    move-object/from16 v17, v8

    .line 1463
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1464
    :cond_22
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1466
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_8
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_9

    if-lez v12, :cond_23

    .line 1475
    :try_start_9
    invoke-static {v5, v2, v8, v7, v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_9
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_19

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 1486
    :try_start_a
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyQualifierError"

    invoke-direct {v0, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v0, v2, v4, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 1480
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyExtError"

    invoke-direct {v0, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v0, v2, v4, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_23
    if-gtz v12, :cond_22

    .line 1496
    invoke-static {v5, v2, v8, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    goto :goto_19

    :cond_24
    move-object/from16 v17, v8

    .line 1506
    :cond_25
    invoke-static {v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3
    :try_end_a
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_9

    if-nez v3, :cond_28

    if-eqz v6, :cond_26

    add-int/lit8 v6, v6, -0x1

    :cond_26
    if-eqz v12, :cond_27

    add-int/lit8 v12, v12, -0x1

    :cond_27
    if-eqz v11, :cond_28

    add-int/lit8 v11, v11, -0x1

    .line 1535
    :cond_28
    :try_start_b
    sget-object v3, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_2a

    .line 1538
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 1540
    :cond_29
    :goto_1a
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1542
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 1545
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1a

    :pswitch_0
    const/4 v7, 0x0

    .line 1555
    invoke-static {v5, v7}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-ge v5, v12, :cond_29

    move v12, v5

    goto :goto_1a

    :pswitch_1
    const/4 v7, 0x0

    .line 1548
    invoke-static {v5, v7}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5
    :try_end_b
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_9

    if-ge v5, v6, :cond_29

    move v6, v5

    goto :goto_1a

    .line 1577
    :cond_2a
    :try_start_c
    sget-object v3, Lorg/spongycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_2b

    .line 1581
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3
    :try_end_c
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_9

    if-ge v3, v11, :cond_2b

    goto :goto_1b

    :cond_2b
    move v3, v11

    :goto_1b
    move v11, v3

    move-object v7, v10

    goto :goto_1c

    .line 1591
    :catch_4
    :try_start_d
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.policyInhibitExtError"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1567
    :catch_5
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.policyConstExtError"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_6
    move-exception v0

    .line 1409
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyMapExtError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2c
    move-object/from16 v17, v8

    move-object/from16 v4, v27

    move-object v7, v10

    :goto_1c
    add-int/lit8 v9, v9, -0x1

    move-object v5, v4

    move-object/from16 v8, v17

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_4

    :catch_7
    move-exception v0

    .line 1195
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyExtError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 1606
    :cond_2d
    invoke-static {v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3
    :try_end_d
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_9

    if-nez v3, :cond_2e

    if-lez v6, :cond_2e

    add-int/lit8 v6, v6, -0x1

    .line 1617
    :cond_2e
    :try_start_e
    sget-object v3, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v5, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_32

    .line 1620
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    move v4, v6

    .line 1622
    :cond_2f
    :goto_1d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1624
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 1625
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    if-eqz v6, :cond_30

    const/4 v15, 0x0

    goto :goto_1d

    :cond_30
    const/4 v15, 0x0

    .line 1628
    invoke-static {v5, v15}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5
    :try_end_e
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_9

    if-nez v5, :cond_2f

    const/4 v4, 0x0

    goto :goto_1d

    :cond_31
    const/4 v15, 0x0

    goto :goto_1e

    :cond_32
    const/4 v15, 0x0

    move v4, v6

    :goto_1e
    if-nez v7, :cond_34

    .line 1656
    :try_start_f
    iget-object v0, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v10, 0x0

    goto/16 :goto_2b

    .line 1658
    :cond_33
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.explicitPolicy"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1663
    :cond_34
    invoke-static {v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1665
    iget-object v0, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1667
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1674
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 1676
    :goto_1f
    array-length v5, v2

    if-ge v3, v5, :cond_37

    .line 1678
    aget-object v5, v2, v3

    const/4 v6, 0x0

    .line 1680
    :goto_20
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_36

    .line 1682
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    const-string v10, "2.5.29.32.0"

    .line 1684
    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1686
    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v9

    .line 1687
    :goto_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1689
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1695
    :cond_37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1696
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1698
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1699
    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    .line 1701
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_38
    if-eqz v7, :cond_3d

    .line 1708
    iget v0, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_23
    if-ltz v0, :cond_3b

    .line 1710
    aget-object v3, v2, v0

    const/4 v5, 0x0

    .line 1712
    :goto_24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3a

    .line 1714
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1715
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_39

    .line 1717
    invoke-static {v7, v2, v6}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v7

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_3b
    move-object v10, v7

    goto/16 :goto_2b

    .line 1669
    :cond_3c
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.explicitPolicy"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_3d
    move-object v10, v7

    goto/16 :goto_2b

    .line 1739
    :cond_3e
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    .line 1741
    :goto_25
    array-length v6, v2

    if-ge v5, v6, :cond_42

    .line 1743
    aget-object v6, v2, v5

    const/4 v8, 0x0

    .line 1745
    :goto_26
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_41

    .line 1747
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    const-string v10, "2.5.29.32.0"

    .line 1749
    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 1751
    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v9

    .line 1752
    :cond_3f
    :goto_27
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_40

    .line 1754
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    const-string v11, "2.5.29.32.0"

    .line 1755
    invoke-virtual {v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3f

    .line 1757
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 1767
    :cond_42
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1768
    :cond_43
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1770
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1771
    invoke-virtual {v5}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    .line 1773
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 1775
    invoke-static {v7, v2, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    move-object v7, v5

    goto :goto_28

    :cond_44
    if-eqz v7, :cond_48

    .line 1784
    iget v0, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_29
    if-ltz v0, :cond_47

    .line 1786
    aget-object v3, v2, v0

    const/4 v5, 0x0

    .line 1788
    :goto_2a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_46

    .line 1790
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1791
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_45

    .line 1793
    invoke-static {v7, v2, v6}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v7

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :cond_47
    move-object v10, v7

    goto :goto_2b

    :cond_48
    move-object v10, v7

    :goto_2b
    if-gtz v4, :cond_4a

    if-eqz v10, :cond_49

    goto :goto_2c

    .line 1804
    :cond_49
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.invalidPolicy"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    .line 1640
    :catch_8
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.policyConstExtError"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_f
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_f .. :try_end_f} :catch_9

    :catch_9
    move-exception v0

    .line 1812
    invoke-virtual {v0}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    :cond_4a
    :goto_2c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSignatures()V
    .locals 19

    move-object/from16 v10, p0

    .line 701
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certPathValidDate"

    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/Object;

    new-instance v4, Lorg/spongycastle/i18n/filter/TrustedInput;

    iget-object v5, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-direct {v4, v5}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x0

    aput-object v4, v3, v12

    new-instance v4, Lorg/spongycastle/i18n/filter/TrustedInput;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {v4, v5}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x1

    aput-object v4, v3, v13

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-virtual {v10, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;)V

    .line 709
    :try_start_0
    iget-object v0, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    iget-object v1, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 710
    iget-object v1, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v1

    .line 711
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, v13, :cond_0

    .line 714
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.conflictingTrustAnchors"

    new-array v5, v11, [Ljava/lang/Object;

    .line 716
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v12

    new-instance v1, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 717
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v1, v5, v13

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    invoke-virtual {v10, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    goto :goto_0

    .line 720
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 722
    new-instance v1, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noTrustAnchorFound"

    new-array v4, v11, [Ljava/lang/Object;

    new-instance v5, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 724
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v12

    iget-object v0, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 725
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v13

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    invoke-virtual {v10, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_4

    .line 731
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 732
    :try_start_1
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 734
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_1

    .line 738
    :cond_2
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 742
    :goto_1
    :try_start_2
    iget-object v3, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 743
    invoke-virtual {v3}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v3

    .line 742
    invoke-static {v0, v2, v3}, Lorg/spongycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 747
    :catch_0
    :try_start_3
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustButInvalidCert"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v10, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V
    :try_end_3
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    .line 762
    :goto_2
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.unknown"

    new-array v5, v11, [Ljava/lang/Object;

    new-instance v6, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 764
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v12

    new-instance v6, Lorg/spongycastle/i18n/filter/UntrustedInput;

    invoke-direct {v6, v0}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v13

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    invoke-virtual {v10, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    move-object v15, v1

    goto :goto_5

    :catch_4
    move-exception v0

    const/4 v1, 0x0

    .line 758
    :goto_3
    invoke-virtual {v0}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    :catch_5
    :goto_4
    move-object v15, v1

    :goto_5
    const/16 v16, 0x5

    if-eqz v15, :cond_4

    .line 771
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 776
    :try_start_4
    invoke-static {v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_6

    .line 780
    :cond_3
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_6

    .line 785
    :catch_6
    new-instance v1, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustDNInvalid"

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v5, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 786
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v12

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    invoke-virtual {v10, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    const/4 v1, 0x0

    :goto_6
    if-eqz v0, :cond_5

    .line 793
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_5

    .line 794
    aget-boolean v0, v0, v16

    if-nez v0, :cond_5

    .line 796
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustKeyUsage"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {v10, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;)V

    goto :goto_7

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_7
    if-eqz v15, :cond_7

    .line 815
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 819
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_8

    .line 823
    :cond_6
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 828
    :goto_8
    :try_start_5
    invoke-static {v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 829
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 830
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_9

    .line 834
    :catch_7
    new-instance v3, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v4, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.trustPubKeyError"

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {v10, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 846
    :goto_9
    iget-object v3, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v13

    move-object v5, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    :goto_a
    if-ltz v9, :cond_15

    .line 851
    iget v0, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v6, v0, v9

    .line 859
    iget-object v0, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x3

    if-eqz v8, :cond_8

    .line 866
    :try_start_6
    iget-object v0, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 867
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {v4, v8, v0}, Lorg/spongycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v0

    .line 871
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.signatureNotVerified"

    new-array v1, v1, [Ljava/lang/Object;

    .line 872
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v12

    aput-object v0, v1, v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    invoke-direct {v2, v3, v14, v1}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    invoke-virtual {v10, v2, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_b

    .line 876
    :cond_8
    invoke-static {v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 880
    :try_start_7
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v2, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 881
    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    .line 880
    invoke-static {v4, v0, v2}, Lorg/spongycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 882
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {v10, v0, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_9

    goto/16 :goto_b

    :catch_9
    move-exception v0

    .line 887
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.signatureNotVerified"

    new-array v1, v1, [Ljava/lang/Object;

    .line 888
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v12

    aput-object v0, v1, v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    invoke-direct {v2, v3, v14, v1}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    invoke-virtual {v10, v2, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_b

    .line 894
    :cond_9
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.NoIssuerPublicKey"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    sget-object v2, Lorg/spongycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_a

    .line 900
    invoke-static {v2}, Lorg/spongycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 899
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v2

    .line 901
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 904
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    aget-object v3, v3, v12

    .line 905
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v14, 0x7

    .line 908
    new-array v14, v14, [Ljava/lang/Object;

    new-instance v1, Lorg/spongycastle/i18n/LocaleString;

    const-string v11, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "missingIssuer"

    invoke-direct {v1, v11, v13}, Lorg/spongycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v14, v12

    const-string v1, " \""

    const/4 v11, 0x1

    aput-object v1, v14, v11

    const/4 v1, 0x2

    aput-object v3, v14, v1

    const-string v1, "\" "

    const/4 v3, 0x3

    aput-object v1, v14, v3

    const/4 v1, 0x4

    new-instance v3, Lorg/spongycastle/i18n/LocaleString;

    const-string v11, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "missingSerial"

    invoke-direct {v3, v11, v13}, Lorg/spongycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v14, v1

    const-string v1, " "

    aput-object v1, v14, v16

    const/4 v1, 0x6

    aput-object v2, v14, v1

    .line 910
    invoke-virtual {v0, v14}, Lorg/spongycastle/i18n/ErrorBundle;->setExtraArguments([Ljava/lang/Object;)V

    .line 914
    :cond_a
    invoke-virtual {v10, v0, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 920
    :goto_b
    :try_start_8
    iget-object v0, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_c

    .line 930
    :catch_a
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certificateExpired"

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/Object;

    new-instance v3, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 931
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v3, v13}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v3, v11, v12

    invoke-direct {v0, v1, v2, v11}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    invoke-virtual {v10, v0, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_c

    .line 924
    :catch_b
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certificateNotYetValid"

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/Object;

    new-instance v3, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 925
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v3, v13}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v3, v11, v12

    invoke-direct {v0, v1, v2, v11}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    invoke-virtual {v10, v0, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 936
    :goto_c
    iget-object v0, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 942
    :try_start_9
    sget-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 945
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;

    move-result-object v14
    :try_end_9
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_d

    :cond_b
    const/4 v14, 0x0

    goto :goto_d

    .line 950
    :catch_c
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.crlDistPtExtError"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {v10, v0, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    const/4 v14, 0x0

    .line 958
    :goto_d
    :try_start_a
    sget-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 961
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    move-result-object v0
    :try_end_a
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_e

    .line 966
    :catch_d
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.crlAuthInfoAccError"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {v10, v0, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    const/4 v0, 0x0

    .line 970
    :goto_e
    invoke-virtual {v10, v14}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getCRLDistUrls(Lorg/spongycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;

    move-result-object v11

    .line 971
    invoke-virtual {v10, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getOCSPUrls(Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v0

    .line 976
    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 977
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 979
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.crlDistPoint"

    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/Object;

    new-instance v14, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    move/from16 v18, v6

    .line 980
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v14, v6}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v14, v12, v6

    invoke-direct {v2, v3, v13, v12}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    invoke-virtual {v10, v2, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    move/from16 v6, v18

    const/4 v12, 0x0

    goto :goto_f

    :cond_d
    move/from16 v18, v6

    .line 985
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 986
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 988
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.ocspLocation"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    new-instance v12, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    .line 989
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-direct {v2, v3, v6, v13}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    invoke-virtual {v10, v2, v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_10

    .line 997
    :cond_e
    :try_start_b
    iget-object v2, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    iget-object v6, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;
    :try_end_b
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_f

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v12, v4

    move-object v4, v6

    move/from16 v13, v18

    move-object v6, v8

    move-object v14, v7

    move-object v7, v11

    move-object v11, v8

    move-object v8, v0

    move/from16 v18, v9

    :try_start_c
    invoke-virtual/range {v1 .. v9}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_c
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_e

    move/from16 v3, v18

    goto :goto_12

    :catch_e
    move-exception v0

    goto :goto_11

    :catch_f
    move-exception v0

    move-object v12, v4

    move-object v14, v7

    move-object v11, v8

    move/from16 v13, v18

    move/from16 v18, v9

    .line 1001
    :goto_11
    invoke-virtual {v0}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v0

    move/from16 v3, v18

    invoke-virtual {v10, v0, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_12

    :cond_f
    move-object v12, v4

    move v13, v6

    move-object v14, v7

    move-object v11, v8

    move v3, v9

    :goto_12
    if-eqz v14, :cond_10

    .line 1006
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1008
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certWrongIssuer"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 1009
    invoke-virtual {v14}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1010
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-direct {v0, v1, v2, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    invoke-virtual {v10, v0, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_13

    :cond_10
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1017
    :goto_13
    iget v0, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    if-eq v13, v0, :cond_14

    if-eqz v12, :cond_11

    .line 1020
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    if-ne v0, v8, :cond_11

    .line 1022
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.noCACert"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v10, v0, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1031
    :cond_11
    :try_start_d
    sget-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v12, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1035
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1037
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.noCACert"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v10, v0, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_14

    .line 1043
    :cond_12
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.noBasicConstraints"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v10, v0, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_d
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_14

    .line 1049
    :catch_10
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.errorProcesingBC"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v10, v0, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1055
    :cond_13
    :goto_14
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1057
    aget-boolean v0, v0, v16

    if-nez v0, :cond_14

    .line 1059
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.noCertSign"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v10, v0, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1070
    :cond_14
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1076
    :try_start_e
    iget-object v1, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_e
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_e .. :try_end_e} :catch_11

    .line 1077
    :try_start_f
    invoke-static {v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 1078
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1079
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;
    :try_end_f
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f .. :try_end_f} :catch_12

    goto :goto_15

    :catch_11
    move-object v1, v11

    .line 1083
    :catch_12
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.pubKeyError"

    invoke-direct {v2, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v10, v2, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    :goto_15
    add-int/lit8 v9, v3, -0x1

    move-object v7, v0

    move-object v8, v1

    move-object v5, v12

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_a

    :cond_15
    move-object v11, v8

    .line 1092
    iput-object v15, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1093
    iput-object v11, v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-void
.end method

.method private getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2451
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2453
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 2455
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 2456
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2458
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2459
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 2460
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    const-string v3, "X.509"

    const-string v4, "SC"

    .line 2462
    invoke-static {v3, v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 2463
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    move-object p1, v2

    :goto_1
    return-object p1

    .line 2467
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 2473
    new-instance v3, Lorg/spongycastle/i18n/ErrorBundle;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Lorg/spongycastle/i18n/filter/UntrustedInput;

    invoke-direct {v5, p1}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v1

    .line 2476
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v0, "CertPathReviewer.loadCrlDistPointError"

    invoke-direct {v3, p1, v0, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2477
    new-instance p1, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {p1, v3}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw p1
.end method

.method private processQcStatements(Ljava/security/cert/X509Certificate;I)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 1920
    :try_start_0
    sget-object v3, Lorg/spongycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1921
    :goto_0
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_5

    .line 1923
    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/QCStatement;

    move-result-object v6

    .line 1924
    sget-object v8, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcCompliance:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1927
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v7, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.QcEuCompliance"

    invoke-direct {v6, v7, v8}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    invoke-virtual {v0, v6, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_2

    .line 1930
    :cond_0
    sget-object v8, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->id_qcs_pkixQCSyntax_v1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_2

    .line 1934
    :cond_1
    sget-object v8, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcSSCD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1937
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v7, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.QcSSCD"

    invoke-direct {v6, v7, v8}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v0, v6, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_2

    .line 1940
    :cond_2
    sget-object v8, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_LimiteValue:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    .line 1943
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementInfo()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;

    move-result-object v6

    .line 1944
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    .line 1945
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getAmount()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getExponent()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v10, v10, v12

    .line 1947
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;->isAlphabetic()Z

    move-result v8

    const/4 v12, 0x3

    if-eqz v8, :cond_3

    .line 1949
    new-instance v8, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v13, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.QcLimitValueAlpha"

    new-array v12, v12, [Ljava/lang/Object;

    .line 1950
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v15

    invoke-virtual {v15}, Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getAlphabetic()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v2

    new-instance v15, Lorg/spongycastle/i18n/filter/TrustedInput;

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v10, v11}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v15, v2}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v15, v12, v7

    aput-object v6, v12, v9

    invoke-direct {v8, v13, v14, v12}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1956
    :cond_3
    new-instance v8, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.QcLimitValueNum"

    new-array v12, v12, [Ljava/lang/Object;

    .line 1957
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getNumeric()I

    move-result v14

    invoke-static {v14}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v12, v15

    new-instance v14, Lorg/spongycastle/i18n/filter/TrustedInput;

    new-instance v15, Ljava/lang/Double;

    invoke-direct {v15, v10, v11}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v14, v15}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v7

    aput-object v6, v12, v9

    invoke-direct {v8, v2, v13, v12}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1961
    :goto_1
    invoke-virtual {v0, v8, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_2

    .line 1965
    :cond_4
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.QcUnknownStatement"

    new-array v9, v9, [Ljava/lang/Object;

    .line 1966
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Lorg/spongycastle/i18n/filter/UntrustedInput;

    invoke-direct {v10, v6}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v10, v9, v7

    invoke-direct {v2, v5, v8, v9}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1967
    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    xor-int/lit8 v1, v5, 0x1

    return v1

    .line 1976
    :catch_0
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.QcStatementExtError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected addError(Lorg/spongycastle/i18n/ErrorBundle;)V
    .locals 2

    .line 333
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addError(Lorg/spongycastle/i18n/ErrorBundle;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    .line 338
    iget v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 340
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected addNotification(Lorg/spongycastle/i18n/ErrorBundle;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    .line 324
    iget v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p7

    .line 2030
    new-instance v0, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 2034
    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/spongycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d

    .line 2042
    invoke-virtual {v0, v3}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2047
    :try_start_1
    sget-object v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/spongycastle/x509/PKIXCRLUtil;

    invoke-virtual {v10, v0, v2}, Lorg/spongycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v10

    .line 2048
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2050
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2053
    sget-object v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/spongycastle/x509/PKIXCRLUtil;

    new-instance v12, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v12}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-virtual {v10, v12, v2}, Lorg/spongycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v10

    .line 2054
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2055
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2056
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2058
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509CRL;

    invoke-virtual {v13}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2060
    :cond_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    .line 2061
    new-instance v13, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v14, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v15, "CertPathReviewer.noCrlInCertstore"

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 2063
    invoke-virtual {v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v7, v8

    new-instance v0, Lorg/spongycastle/i18n/filter/UntrustedInput;

    invoke-direct {v0, v12}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v0, v7, v9

    .line 2065
    invoke-static {v10}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v7, v6

    invoke-direct {v13, v14, v15, v7}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2066
    invoke-virtual {v1, v13, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2072
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v7, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v10, "CertPathReviewer.crlExtractionError"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    .line 2073
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v8

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    aput-object v11, v12, v9

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v12, v11

    invoke-direct {v6, v7, v10, v12}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2074
    invoke-virtual {v1, v6, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 2075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 2079
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2081
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 2083
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2084
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 2095
    :cond_2
    new-instance v7, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v10, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v12, "CertPathReviewer.localInvalidCRL"

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    new-instance v13, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2097
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v14, v8

    new-instance v13, Lorg/spongycastle/i18n/filter/TrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v14, v9

    invoke-direct {v7, v10, v12, v14}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2098
    invoke-virtual {v1, v7, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_2

    .line 2087
    :cond_3
    :goto_3
    new-instance v7, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v10, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v11, "CertPathReviewer.localValidCRL"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    new-instance v12, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2089
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v13, v8

    new-instance v12, Lorg/spongycastle/i18n/filter/TrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v13, v9

    invoke-direct {v7, v10, v11, v13}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2090
    invoke-virtual {v1, v7, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    move-object v7, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move-object v7, v0

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    .line 2107
    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v0

    .line 2108
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2112
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2113
    invoke-direct {v1, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 2117
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2119
    new-instance v13, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v14, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v15, "CertPathReviewer.onlineCRLWrongCA"

    const/4 v6, 0x3

    new-array v9, v6, [Ljava/lang/Object;

    new-instance v6, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 2121
    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v9, v8

    new-instance v6, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 2122
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x1

    aput-object v6, v9, v12

    new-instance v6, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v6, v0}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x2

    aput-object v6, v9, v12

    invoke-direct {v13, v14, v15, v9}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2124
    invoke-virtual {v1, v13, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    const/4 v13, 0x3

    goto/16 :goto_8

    .line 2128
    :cond_5
    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 2129
    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_6

    .line 2143
    :cond_6
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v9, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.onlineInvalidCRL"

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Object;

    new-instance v14, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2145
    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-direct {v14, v8}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v8, 0x0

    aput-object v14, v15, v8

    new-instance v8, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2146
    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x1

    aput-object v8, v15, v12

    new-instance v8, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v8, v0}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x2

    aput-object v8, v15, v12

    invoke-direct {v6, v9, v13, v15}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    invoke-virtual {v1, v6, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v13, 0x3

    goto :goto_8

    .line 2132
    :cond_7
    :goto_6
    :try_start_3
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v8, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v9, "CertPathReviewer.onlineValidCRL"
    :try_end_3
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v13, 0x3

    :try_start_4
    new-array v11, v13, [Ljava/lang/Object;

    new-instance v14, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2134
    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x0

    aput-object v14, v11, v15

    new-instance v14, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2135
    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x1

    aput-object v14, v11, v15

    new-instance v14, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v14, v0}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x2

    aput-object v14, v11, v15

    invoke-direct {v6, v8, v9, v11}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2137
    invoke-virtual {v1, v6, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_4
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, v12

    const/4 v11, 0x1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v13, 0x3

    :goto_7
    const/4 v11, 0x1

    goto :goto_9

    :cond_8
    const/4 v13, 0x3

    :goto_8
    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_5

    :catch_3
    move-exception v0

    const/4 v13, 0x3

    .line 2154
    :goto_9
    invoke-virtual {v0}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_9
    move v11, v0

    :cond_a
    :goto_a
    if-eqz v7, :cond_1d

    const/4 v0, 0x7

    if-eqz p4, :cond_c

    .line 2165
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v6

    if-eqz v6, :cond_c

    .line 2167
    array-length v8, v6

    if-lt v8, v0, :cond_b

    const/4 v8, 0x6

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_b

    goto :goto_b

    .line 2170
    :cond_b
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noCrlSigningPermited"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    :cond_c
    :goto_b
    if-eqz v4, :cond_1c

    :try_start_5
    const-string v6, "SC"

    .line 2179
    invoke-virtual {v7, v4, v6}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    .line 2193
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 2198
    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2203
    :try_start_6
    sget-object v6, Lorg/spongycastle/asn1/x509/Extension;->reasonCode:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v6
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v6, :cond_d

    .line 2212
    sget-object v8, Lorg/spongycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    aget-object v6, v8, v6

    move-object/from16 v16, v6

    goto :goto_c

    :catch_4
    move-exception v0

    .line 2207
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlReasonExtError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_d
    const/16 v16, 0x0

    :goto_c
    if-nez v16, :cond_e

    .line 2218
    sget-object v6, Lorg/spongycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    aget-object v16, v6, v0

    move-object/from16 v0, v16

    goto :goto_d

    :cond_e
    move-object/from16 v0, v16

    .line 2222
    :goto_d
    new-instance v6, Lorg/spongycastle/i18n/LocaleString;

    const-string v8, "org.spongycastle.x509.CertPathReviewerMessages"

    invoke-direct {v6, v8, v0}, Lorg/spongycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2232
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v8, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v9, "CertPathReviewer.revokedAfterValidation"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v12, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2233
    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x0

    aput-object v12, v10, v13

    const/4 v12, 0x1

    aput-object v6, v10, v12

    invoke-direct {v0, v8, v9, v10}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2234
    invoke-virtual {v1, v0, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_e

    :cond_f
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 2226
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    new-array v2, v10, [Ljava/lang/Object;

    new-instance v3, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2227
    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v13

    aput-object v6, v2, v12

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.certRevoked"

    invoke-direct {v0, v3, v4, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2228
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    .line 2239
    :cond_10
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v4, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.notRevoked"

    invoke-direct {v0, v4, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    invoke-virtual {v1, v0, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 2246
    :goto_e
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    iget-object v4, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2248
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v4, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.crlUpdateAvailable"

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2249
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-direct {v0, v4, v6, v8}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2250
    invoke-virtual {v1, v0, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_f

    :cond_11
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 2259
    :goto_f
    :try_start_7
    sget-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v7, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_7
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_b

    .line 2269
    :try_start_8
    sget-object v4, Lorg/spongycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-static {v7, v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_8
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_a

    if-eqz v4, :cond_16

    .line 2279
    new-instance v5, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v5}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 2283
    :try_start_9
    invoke-static {v7}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 2291
    check-cast v4, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 2294
    :try_start_a
    sget-object v4, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v7, v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_a
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_7

    .line 2306
    :try_start_b
    sget-object v4, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/spongycastle/x509/PKIXCRLUtil;

    invoke-virtual {v4, v5, v2}, Lorg/spongycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_b
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_b} :catch_6

    .line 2313
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2315
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 2320
    :try_start_c
    sget-object v5, Lorg/spongycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_c
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_c} :catch_5

    if-nez v0, :cond_13

    if-nez v4, :cond_12

    goto :goto_10

    .line 2338
    :cond_13
    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_10

    :catch_5
    move-exception v0

    .line 2324
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.distrPtExtError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_14
    const/4 v12, 0x0

    :goto_10
    if-eqz v12, :cond_15

    goto :goto_11

    .line 2348
    :cond_15
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noBaseCRL"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_6
    move-exception v0

    .line 2310
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlExtractionError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :catch_7
    move-exception v0

    .line 2298
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlNbrExtError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :catch_8
    move-exception v0

    .line 2287
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlIssuerException"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_16
    :goto_11
    if-eqz v0, :cond_1d

    .line 2355
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    .line 2359
    :try_start_d
    sget-object v2, Lorg/spongycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v2
    :try_end_d
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_d} :catch_9

    .line 2367
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_12

    .line 2369
    :cond_17
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlOnlyUserCert"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    .line 2373
    :cond_18
    :goto_12
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_13

    .line 2375
    :cond_19
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlOnlyCaCert"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    .line 2379
    :cond_1a
    :goto_13
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_14

    .line 2381
    :cond_1b
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlOnlyAttrCert"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_9
    move-exception v0

    .line 2363
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlBCExtError"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    .line 2273
    :catch_a
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.deltaCrlExtError"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    .line 2263
    :catch_b
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.distrPtExtError"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_c
    move-exception v0

    .line 2183
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlVerifyFailed"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    .line 2189
    :cond_1c
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlNoIssuerPublicKey"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    :cond_1d
    :goto_14
    if-eqz v11, :cond_1e

    return-void

    .line 2389
    :cond_1e
    new-instance v0, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noValidCrlFound"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    new-instance v2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_d
    move-exception v0

    .line 2038
    new-instance v2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v3, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlIssuerException"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    new-instance v3, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    .line 2016
    invoke-virtual/range {v0 .. v7}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    return-void
.end method

.method protected doChecks()V
    .locals 3

    .line 347
    iget-boolean v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    if-nez v0, :cond_1

    .line 354
    iget v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    .line 355
    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 359
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 360
    iget-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkSignatures()V

    .line 367
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkNameConstraints()V

    .line 370
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkPathLength()V

    .line 373
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkPolicy()V

    .line 376
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkCriticalExtensions()V

    :cond_1
    return-void

    .line 349
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object not initialized. Call init() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCRLDistUrls(Lorg/spongycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;
    .locals 7

    .line 2397
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_2

    .line 2401
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/spongycastle/asn1/x509/DistributionPoint;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2402
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 2404
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 2405
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_1

    .line 2407
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    const/4 v4, 0x0

    .line 2408
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 2410
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 2412
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v5

    .line 2413
    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getCertPathSize()I
    .locals 1

    .line 207
    iget v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    return v0
.end method

.method public getErrors(I)Ljava/util/List;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 234
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getErrors()[Ljava/util/List;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    return-object v0
.end method

.method public getNotifications(I)Ljava/util/List;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 261
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNotifications()[Ljava/util/List;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 248
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    return-object v0
.end method

.method protected getOCSPUrls(Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;
    .locals 5

    .line 2424
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_1

    .line 2428
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/spongycastle/asn1/x509/AccessDescription;

    move-result-object p1

    const/4 v1, 0x0

    .line 2429
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2431
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2433
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 2434
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 2436
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v2

    .line 2437
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 272
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 283
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 294
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method protected getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 2484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2485
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2487
    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 2491
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    .line 2492
    sget-object v2, Lorg/spongycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2496
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    .line 2497
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v2

    .line 2499
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 2500
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2503
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2513
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2515
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    .line 2516
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2518
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2520
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2523
    :cond_1
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2525
    invoke-static {p1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 2526
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2529
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 2509
    :catch_0
    new-instance p1, Lorg/spongycastle/i18n/ErrorBundle;

    const-string p2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v0, "CertPathReviewer.trustAnchorIssuerError"

    invoke-direct {p1, p2, v0}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    new-instance p2, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {p2, p1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw p2
.end method

.method public init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-eqz p1, :cond_1

    .line 137
    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    .line 139
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    .line 140
    iget-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    .line 141
    iget-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/PKIXParameters;

    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 155
    iget-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    .line 166
    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    .line 167
    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 168
    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    .line 169
    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-void

    .line 143
    :cond_0
    new-instance p1, Lorg/spongycastle/x509/CertPathReviewerException;

    new-instance p2, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v0, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v1, "CertPathReviewer.emptyCertPath"

    invoke-direct {p2, v0, v1}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "certPath was null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "object is already initialized!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValidCertPath()Z
    .locals 4

    .line 304
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 306
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 308
    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
