.class public Lorg/spongycastle/tsp/TimeStampTokenGenerator;
.super Ljava/lang/Object;
.source "TimeStampTokenGenerator.java"


# instance fields
.field accuracyMicros:I

.field accuracyMillis:I

.field accuracySeconds:I

.field private attrCerts:Ljava/util/List;

.field private certs:Ljava/util/List;

.field private crls:Ljava/util/List;

.field ordering:Z

.field private otherRevoc:Ljava/util/Map;

.field private signerInfoGen:Lorg/spongycastle/cms/SignerInfoGenerator;

.field tsa:Lorg/spongycastle/asn1/x509/GeneralName;

.field private tsaPolicyOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cms/SignerInfoGenerator;Lorg/spongycastle/operator/DigestCalculator;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/spongycastle/tsp/TSPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/tsp/TimeStampTokenGenerator;-><init>(Lorg/spongycastle/cms/SignerInfoGenerator;Lorg/spongycastle/operator/DigestCalculator;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/cms/SignerInfoGenerator;Lorg/spongycastle/operator/DigestCalculator;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/spongycastle/tsp/TSPException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    .line 76
    iput v0, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    .line 78
    iput v0, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    .line 133
    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/spongycastle/cms/SignerInfoGenerator;

    .line 134
    iput-object p3, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->tsaPolicyOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 136
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInfoGenerator;->hasAssociatedCertificate()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 141
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInfoGenerator;->getAssociatedCertificate()Lorg/spongycastle/cert/X509CertificateHolder;

    move-result-object p3

    .line 142
    invoke-static {p3}, Lorg/spongycastle/tsp/TSPUtil;->validateCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)V

    .line 146
    :try_start_0
    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 148
    invoke-virtual {p3}, Lorg/spongycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 150
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 152
    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    new-instance v1, Lorg/spongycastle/asn1/ess/ESSCertID;

    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p2

    if-eqz p4, :cond_0

    new-instance v0, Lorg/spongycastle/asn1/x509/IssuerSerial;

    new-instance p4, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v2, Lorg/spongycastle/asn1/x509/GeneralName;

    .line 155
    invoke-virtual {p3}, Lorg/spongycastle/cert/X509CertificateHolder;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    invoke-direct {p4, v2}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p3}, Lorg/spongycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v0, p4, p3}, Lorg/spongycastle/asn1/x509/IssuerSerial;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    :cond_0
    invoke-direct {v1, p2, v0}, Lorg/spongycastle/asn1/ess/ESSCertID;-><init>([BLorg/spongycastle/asn1/x509/IssuerSerial;)V

    .line 158
    new-instance p2, Lorg/spongycastle/cms/SignerInfoGenerator;

    new-instance p3, Lorg/spongycastle/tsp/TimeStampTokenGenerator$1;

    invoke-direct {p3, p0, p1, v1}, Lorg/spongycastle/tsp/TimeStampTokenGenerator$1;-><init>(Lorg/spongycastle/tsp/TimeStampTokenGenerator;Lorg/spongycastle/cms/SignerInfoGenerator;Lorg/spongycastle/asn1/ess/ESSCertID;)V

    .line 172
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInfoGenerator;->getUnsignedAttributeTableGenerator()Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4}, Lorg/spongycastle/cms/SignerInfoGenerator;-><init>(Lorg/spongycastle/cms/SignerInfoGenerator;Lorg/spongycastle/cms/CMSAttributeTableGenerator;Lorg/spongycastle/cms/CMSAttributeTableGenerator;)V

    iput-object p2, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/spongycastle/cms/SignerInfoGenerator;

    goto :goto_0

    .line 176
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 177
    new-instance v2, Lorg/spongycastle/asn1/ess/ESSCertIDv2;

    invoke-interface {p2}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p2

    if-eqz p4, :cond_2

    new-instance v0, Lorg/spongycastle/asn1/x509/IssuerSerial;

    new-instance p4, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v3, Lorg/spongycastle/asn1/x509/GeneralName;

    .line 178
    invoke-virtual {p3}, Lorg/spongycastle/cert/X509CertificateHolder;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    invoke-direct {p4, v3}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p3}, Lorg/spongycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v3, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, p4, v3}, Lorg/spongycastle/asn1/x509/IssuerSerial;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;Lorg/spongycastle/asn1/ASN1Integer;)V

    :cond_2
    invoke-direct {v2, v1, p2, v0}, Lorg/spongycastle/asn1/ess/ESSCertIDv2;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[BLorg/spongycastle/asn1/x509/IssuerSerial;)V

    .line 181
    new-instance p2, Lorg/spongycastle/cms/SignerInfoGenerator;

    new-instance p3, Lorg/spongycastle/tsp/TimeStampTokenGenerator$2;

    invoke-direct {p3, p0, p1, v2}, Lorg/spongycastle/tsp/TimeStampTokenGenerator$2;-><init>(Lorg/spongycastle/tsp/TimeStampTokenGenerator;Lorg/spongycastle/cms/SignerInfoGenerator;Lorg/spongycastle/asn1/ess/ESSCertIDv2;)V

    .line 195
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInfoGenerator;->getUnsignedAttributeTableGenerator()Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4}, Lorg/spongycastle/cms/SignerInfoGenerator;-><init>(Lorg/spongycastle/cms/SignerInfoGenerator;Lorg/spongycastle/cms/CMSAttributeTableGenerator;Lorg/spongycastle/cms/CMSAttributeTableGenerator;)V

    iput-object p2, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/spongycastle/cms/SignerInfoGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 200
    new-instance p2, Lorg/spongycastle/tsp/TSPException;

    const-string p3, "Exception processing certificate."

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 138
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SignerInfoGenerator must have an associated certificate"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAttributeCertificates(Lorg/spongycastle/util/Store;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/spongycastle/util/Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCRLs(Lorg/spongycastle/util/Store;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/spongycastle/util/Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCertificates(Lorg/spongycastle/util/Store;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/spongycastle/util/Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addOtherRevocationInfo(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/util/Store;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/spongycastle/util/Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public generate(Lorg/spongycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;)Lorg/spongycastle/tsp/TimeStampToken;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/tsp/TSPException;
        }
    .end annotation

    move-object v1, p0

    .line 288
    invoke-virtual {p1}, Lorg/spongycastle/tsp/TimeStampRequest;->getMessageImprintAlgOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 290
    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v2, v0, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 291
    new-instance v6, Lorg/spongycastle/asn1/tsp/MessageImprint;

    invoke-virtual {p1}, Lorg/spongycastle/tsp/TimeStampRequest;->getMessageImprintDigest()[B

    move-result-object v0

    invoke-direct {v6, v2, v0}, Lorg/spongycastle/asn1/tsp/MessageImprint;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 294
    iget v0, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget v0, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    if-gtz v0, :cond_1

    iget v0, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v2

    goto :goto_4

    .line 297
    :cond_1
    :goto_0
    iget v0, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    if-lez v0, :cond_2

    .line 299
    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 303
    :goto_1
    iget v0, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    if-lez v0, :cond_3

    .line 305
    new-instance v4, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v7, v0

    invoke-direct {v4, v7, v8}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_2

    :cond_3
    move-object v4, v2

    .line 309
    :goto_2
    iget v0, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    if-lez v0, :cond_4

    .line 311
    new-instance v5, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v7, v0

    invoke-direct {v5, v7, v8}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_3

    :cond_4
    move-object v5, v2

    .line 314
    :goto_3
    new-instance v0, Lorg/spongycastle/asn1/tsp/Accuracy;

    invoke-direct {v0, v3, v4, v5}, Lorg/spongycastle/asn1/tsp/Accuracy;-><init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;)V

    move-object v9, v0

    .line 318
    :goto_4
    iget-boolean v0, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    if-eqz v0, :cond_5

    .line 320
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    move-object v10, v0

    goto :goto_5

    :cond_5
    move-object v10, v2

    .line 324
    :goto_5
    invoke-virtual {p1}, Lorg/spongycastle/tsp/TimeStampRequest;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 326
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/spongycastle/tsp/TimeStampRequest;->getNonce()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    move-object v11, v0

    goto :goto_6

    :cond_6
    move-object v11, v2

    .line 329
    :goto_6
    iget-object v0, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->tsaPolicyOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 330
    invoke-virtual {p1}, Lorg/spongycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 332
    invoke-virtual {p1}, Lorg/spongycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object v5, v0

    goto :goto_7

    :cond_7
    move-object v5, v0

    .line 335
    :goto_7
    new-instance v0, Lorg/spongycastle/asn1/tsp/TSTInfo;

    new-instance v7, Lorg/spongycastle/asn1/ASN1Integer;

    move-object/from16 v2, p2

    invoke-direct {v7, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance v8, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-object/from16 v2, p3

    invoke-direct {v8, v2}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    iget-object v12, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 338
    invoke-virtual {p1}, Lorg/spongycastle/tsp/TimeStampRequest;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v13

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lorg/spongycastle/asn1/tsp/TSTInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/tsp/MessageImprint;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/tsp/Accuracy;Lorg/spongycastle/asn1/ASN1Boolean;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/Extensions;)V

    .line 342
    :try_start_0
    new-instance v2, Lorg/spongycastle/cms/CMSSignedDataGenerator;

    invoke-direct {v2}, Lorg/spongycastle/cms/CMSSignedDataGenerator;-><init>()V

    .line 344
    invoke-virtual {p1}, Lorg/spongycastle/tsp/TimeStampRequest;->getCertReq()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 347
    new-instance v3, Lorg/spongycastle/util/CollectionStore;

    iget-object v4, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/spongycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/cms/CMSSignedDataGenerator;->addCertificates(Lorg/spongycastle/util/Store;)V

    .line 348
    new-instance v3, Lorg/spongycastle/util/CollectionStore;

    iget-object v4, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/spongycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/cms/CMSSignedDataGenerator;->addAttributeCertificates(Lorg/spongycastle/util/Store;)V

    .line 351
    :cond_8
    new-instance v3, Lorg/spongycastle/util/CollectionStore;

    iget-object v4, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/spongycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/cms/CMSSignedDataGenerator;->addCRLs(Lorg/spongycastle/util/Store;)V

    .line 353
    iget-object v3, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 355
    iget-object v3, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 357
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 359
    new-instance v5, Lorg/spongycastle/util/CollectionStore;

    iget-object v6, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v5, v6}, Lorg/spongycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4, v5}, Lorg/spongycastle/cms/CMSSignedDataGenerator;->addOtherRevocationInfo(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/util/Store;)V

    goto :goto_8

    .line 363
    :cond_9
    iget-object v3, v1, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/spongycastle/cms/SignerInfoGenerator;

    invoke-virtual {v2, v3}, Lorg/spongycastle/cms/CMSSignedDataGenerator;->addSignerInfoGenerator(Lorg/spongycastle/cms/SignerInfoGenerator;)V

    const-string v3, "DER"

    .line 365
    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/tsp/TSTInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 367
    new-instance v3, Lorg/spongycastle/cms/CMSProcessableByteArray;

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/cms/CMSProcessableByteArray;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/spongycastle/cms/CMSSignedDataGenerator;->generate(Lorg/spongycastle/cms/CMSTypedData;Z)Lorg/spongycastle/cms/CMSSignedData;

    move-result-object v0

    .line 369
    new-instance v2, Lorg/spongycastle/tsp/TimeStampToken;

    invoke-direct {v2, v0}, Lorg/spongycastle/tsp/TimeStampToken;-><init>(Lorg/spongycastle/cms/CMSSignedData;)V
    :try_end_0
    .catch Lorg/spongycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 377
    new-instance v2, Lorg/spongycastle/tsp/TSPException;

    const-string v3, "Exception encoding info"

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 373
    new-instance v2, Lorg/spongycastle/tsp/TSPException;

    const-string v3, "Error generating time-stamp token"

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setAccuracyMicros(I)V
    .locals 0

    .line 260
    iput p1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    return-void
.end method

.method public setAccuracyMillis(I)V
    .locals 0

    .line 255
    iput p1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    return-void
.end method

.method public setAccuracySeconds(I)V
    .locals 0

    .line 250
    iput p1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    return-void
.end method

.method public setOrdering(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    return-void
.end method

.method public setTSA(Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    return-void
.end method
