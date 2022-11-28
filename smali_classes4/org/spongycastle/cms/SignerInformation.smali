.class public Lorg/spongycastle/cms/SignerInformation;
.super Ljava/lang/Object;
.source "SignerInformation.java"


# instance fields
.field private final content:Lorg/spongycastle/cms/CMSProcessable;

.field private final contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field protected final digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field protected final encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field protected final info:Lorg/spongycastle/asn1/cms/SignerInfo;

.field private final isCounterSignature:Z

.field private resultDigest:[B

.field private final sid:Lorg/spongycastle/cms/SignerId;

.field private final signature:[B

.field protected final signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

.field private signedAttributeValues:Lorg/spongycastle/asn1/cms/AttributeTable;

.field protected final unsignedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

.field private unsignedAttributeValues:Lorg/spongycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/cms/SignerInfo;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/cms/CMSProcessable;[B)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    .line 66
    iput-object p2, p0, Lorg/spongycastle/cms/SignerInformation;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 67
    :goto_0
    iput-boolean p2, p0, Lorg/spongycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignerInfo;->getSID()Lorg/spongycastle/asn1/cms/SignerIdentifier;

    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lorg/spongycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p2}, Lorg/spongycastle/asn1/cms/SignerIdentifier;->getId()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p2

    .line 75
    new-instance v0, Lorg/spongycastle/cms/SignerId;

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/spongycastle/cms/SignerId;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->sid:Lorg/spongycastle/cms/SignerId;

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/asn1/cms/SignerIdentifier;->getId()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object p2

    .line 81
    new-instance v0, Lorg/spongycastle/cms/SignerId;

    invoke-virtual {p2}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {p2}, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/cms/SignerId;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->sid:Lorg/spongycastle/cms/SignerId;

    .line 84
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/cms/SignerInformation;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 85
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    .line 86
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    .line 87
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 88
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->signature:[B

    .line 90
    iput-object p3, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    .line 91
    iput-object p4, p0, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/cms/SignerInformation;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget-object v0, p1, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    .line 104
    iget-object v0, p1, Lorg/spongycastle/cms/SignerInformation;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformation;->isCounterSignature()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/cms/SignerInformation;->isCounterSignature:Z

    .line 106
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformation;->getSID()Lorg/spongycastle/cms/SignerId;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->sid:Lorg/spongycastle/cms/SignerId;

    .line 107
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 108
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    .line 109
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    .line 110
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 111
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->signature:[B

    .line 112
    iget-object v0, p1, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    iput-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    .line 113
    iget-object p1, p1, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    return-void
.end method

.method public static addCounterSigners(Lorg/spongycastle/cms/SignerInformation;Lorg/spongycastle/cms/SignerInformationStore;)Lorg/spongycastle/cms/SignerInformation;
    .locals 10

    .line 716
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    .line 717
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 722
    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    goto :goto_0

    .line 726
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 729
    :goto_0
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 731
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 733
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/cms/SignerInformation;

    invoke-virtual {v3}, Lorg/spongycastle/cms/SignerInformation;->toASN1Structure()Lorg/spongycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 736
    :cond_1
    new-instance p1, Lorg/spongycastle/asn1/cms/Attribute;

    sget-object v3, Lorg/spongycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v4, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, v3, v4}, Lorg/spongycastle/asn1/cms/Attribute;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    invoke-virtual {v1, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 738
    new-instance p1, Lorg/spongycastle/cms/SignerInformation;

    new-instance v9, Lorg/spongycastle/asn1/cms/SignerInfo;

    .line 739
    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getSID()Lorg/spongycastle/asn1/cms/SignerIdentifier;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 740
    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v7

    new-instance v8, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v8, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/spongycastle/asn1/cms/SignerInfo;-><init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V

    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    const/4 v1, 0x0

    invoke-direct {p1, v9, v0, p0, v1}, Lorg/spongycastle/cms/SignerInformation;-><init>(Lorg/spongycastle/asn1/cms/SignerInfo;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/cms/CMSProcessable;[B)V

    return-object p1
.end method

.method private doVerify(Lorg/spongycastle/cms/SignerInformationVerifier;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 339
    sget-object v0, Lorg/spongycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/spongycastle/cms/CMSSignedHelper;

    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/spongycastle/cms/SignerInformationVerifier;->getContentVerifier(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/ContentVerifier;

    move-result-object v1
    :try_end_0
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 353
    :try_start_1
    invoke-interface {v1}, Lorg/spongycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 355
    iget-object v3, p0, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    if-nez v3, :cond_4

    .line 357
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/spongycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object p1

    .line 358
    iget-object v3, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    if-eqz v3, :cond_2

    .line 360
    invoke-interface {p1}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 362
    iget-object v4, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    if-nez v4, :cond_1

    .line 364
    instance-of v4, v1, Lorg/spongycastle/operator/RawContentVerifier;

    if-eqz v4, :cond_0

    .line 366
    iget-object v4, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    invoke-interface {v4, v3}, Lorg/spongycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 370
    :cond_0
    new-instance v4, Lorg/spongycastle/util/io/TeeOutputStream;

    invoke-direct {v4, v3, v2}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 372
    iget-object v5, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    invoke-interface {v5, v4}, Lorg/spongycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 374
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    invoke-interface {v4, v3}, Lorg/spongycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 380
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 383
    :goto_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 385
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v3, :cond_3

    .line 387
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 395
    :goto_1
    invoke-interface {p1}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    goto :goto_2

    .line 392
    :cond_3
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "data not encapsulated in signature - use detached constructor."

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :cond_4
    iget-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    if-nez p1, :cond_5

    .line 401
    iget-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    if-eqz p1, :cond_6

    .line 403
    iget-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    invoke-interface {p1, v2}, Lorg/spongycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 408
    :cond_5
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 412
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    sget-object p1, Lorg/spongycastle/asn1/cms/CMSAttributes;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "content-type"

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    if-nez p1, :cond_8

    .line 429
    iget-boolean p1, p0, Lorg/spongycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    if-nez p1, :cond_7

    goto :goto_3

    .line 431
    :cond_7
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_8
    iget-boolean v2, p0, Lorg/spongycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v2, :cond_1d

    .line 441
    instance-of v2, p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1c

    .line 446
    check-cast p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 448
    iget-object v2, p0, Lorg/spongycastle/cms/SignerInformation;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 455
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getSignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object p1

    .line 459
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 460
    sget-object v3, Lorg/spongycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/cms/AttributeTable;->getAll(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-gtz v2, :cond_a

    goto :goto_4

    .line 462
    :cond_a
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "A cmsAlgorithmProtect attribute MUST be a signed attribute"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_10

    .line 466
    sget-object v4, Lorg/spongycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/cms/AttributeTable;->getAll(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v4

    .line 467
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v5

    if-gt v5, v3, :cond_f

    .line 472
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 474
    invoke-virtual {v4, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Attribute;

    move-result-object v4

    .line 475
    invoke-virtual {v4}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-ne v5, v3, :cond_e

    .line 480
    invoke-virtual {v4}, Lorg/spongycastle/asn1/cms/Attribute;->getAttributeValues()[Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/spongycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object v4

    .line 482
    invoke-virtual {v4}, Lorg/spongycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/spongycastle/cms/CMSUtils;->isEquivalent(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 487
    invoke-virtual {v4}, Lorg/spongycastle/asn1/cms/CMSAlgorithmProtection;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/spongycastle/cms/CMSUtils;->isEquivalent(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_5

    .line 489
    :cond_c
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "CMS Algorithm Identifier Protection check failed for signatureAlgorithm"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 484
    :cond_d
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 477
    :cond_e
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_f
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 497
    :cond_10
    :goto_5
    sget-object v4, Lorg/spongycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "message-digest"

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    if-nez v4, :cond_12

    .line 501
    iget-object v4, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    if-nez v4, :cond_11

    goto :goto_6

    .line 503
    :cond_11
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 508
    :cond_12
    instance-of v5, v4, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v5, :cond_1a

    .line 513
    check-cast v4, Lorg/spongycastle/asn1/ASN1OctetString;

    .line 515
    iget-object v5, p0, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-static {v5, v4}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_19

    :goto_6
    if-eqz p1, :cond_14

    .line 524
    sget-object v4, Lorg/spongycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 525
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/cms/AttributeTable;->getAll(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result p1

    if-gtz p1, :cond_13

    goto :goto_7

    .line 527
    :cond_13
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 530
    :cond_14
    :goto_7
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 533
    sget-object v4, Lorg/spongycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/cms/AttributeTable;->getAll(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    .line 534
    :goto_8
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    if-ge v2, v4, :cond_16

    .line 536
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Attribute;

    move-result-object v4

    .line 537
    invoke-virtual {v4}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v4

    if-lt v4, v3, :cond_15

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 539
    :cond_15
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 549
    :cond_16
    :try_start_2
    iget-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    if-nez p1, :cond_18

    iget-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz p1, :cond_18

    .line 551
    instance-of p1, v1, Lorg/spongycastle/operator/RawContentVerifier;

    if-eqz p1, :cond_18

    .line 553
    check-cast v1, Lorg/spongycastle/operator/RawContentVerifier;

    const-string p1, "RSA"

    .line 555
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 557
    new-instance p1, Lorg/spongycastle/asn1/x509/DigestInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/spongycastle/cms/SignerInformation;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    invoke-direct {p1, v0, v2}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const-string v0, "DER"

    .line 559
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lorg/spongycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result p1

    return p1

    .line 562
    :cond_17
    iget-object p1, p0, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lorg/spongycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result p1

    return p1

    .line 566
    :cond_18
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getSignature()[B

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/spongycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 570
    new-instance v0, Lorg/spongycastle/cms/CMSException;

    const-string v1, "can\'t process mime object to create signature."

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 517
    :cond_19
    new-instance p1, Lorg/spongycastle/cms/CMSSignerDigestMismatchException;

    const-string v0, "message-digest attribute value does not match calculated value"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSSignerDigestMismatchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 510
    :cond_1a
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 450
    :cond_1b
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "content-type attribute value does not match eContentType"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 443
    :cond_1c
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 438
    :cond_1d
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string v0, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 420
    new-instance v0, Lorg/spongycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create digest calculator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p1

    .line 416
    new-instance v0, Lorg/spongycastle/cms/CMSException;

    const-string v1, "can\'t process mime object to create signature."

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception p1

    .line 348
    new-instance v0, Lorg/spongycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create content verifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private encodeObj(Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSigningTime()Lorg/spongycastle/asn1/cms/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 657
    sget-object v0, Lorg/spongycastle/asn1/cms/CMSAttributes;->signingTime:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "signing-time"

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 667
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/spongycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Time;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 671
    :catch_0
    new-instance v0, Lorg/spongycastle/cms/CMSException;

    const-string v1, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {v0, v1}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSingleValuedSignedAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cms/AttributeTable;->getAll(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 626
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getSignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 632
    :cond_2
    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cms/AttributeTable;->getAll(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    .line 633
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 650
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v0, 0x0

    .line 639
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/cms/Attribute;

    .line 640
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    .line 641
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 647
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 643
    :cond_3
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute MUST have a single attribute value"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static replaceUnsignedAttributes(Lorg/spongycastle/cms/SignerInformation;Lorg/spongycastle/asn1/cms/AttributeTable;)Lorg/spongycastle/cms/SignerInformation;
    .locals 10

    .line 688
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 693
    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v1

    .line 696
    :goto_0
    new-instance p1, Lorg/spongycastle/cms/SignerInformation;

    new-instance v2, Lorg/spongycastle/asn1/cms/SignerInfo;

    .line 697
    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getSID()Lorg/spongycastle/asn1/cms/SignerIdentifier;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 698
    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v6

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lorg/spongycastle/asn1/cms/SignerInfo;-><init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V

    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object p0, p0, Lorg/spongycastle/cms/SignerInformation;->content:Lorg/spongycastle/cms/CMSProcessable;

    invoke-direct {p1, v2, v0, p0, v1}, Lorg/spongycastle/cms/SignerInformation;-><init>(Lorg/spongycastle/asn1/cms/SignerInfo;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/cms/CMSProcessable;[B)V

    return-object p1
.end method


# virtual methods
.method public getContentDigest()[B
    .locals 2

    .line 184
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v0, :cond_0

    .line 189
    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method can only be called after verify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getCounterSignatures()Lorg/spongycastle/cms/SignerInformationStore;
    .locals 8

    .line 265
    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lorg/spongycastle/cms/SignerInformationStore;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v2}, Lorg/spongycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 271
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    sget-object v3, Lorg/spongycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/cms/AttributeTable;->getAll(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    .line 280
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 282
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/cms/Attribute;

    .line 289
    invoke-virtual {v3}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    .line 295
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/SignerInfo;

    move-result-object v4

    .line 313
    new-instance v5, Lorg/spongycastle/cms/SignerInformation;

    new-instance v6, Lorg/spongycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p0}, Lorg/spongycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/spongycastle/cms/CMSProcessableByteArray;-><init>([B)V

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7, v6, v7}, Lorg/spongycastle/cms/SignerInformation;-><init>(Lorg/spongycastle/asn1/cms/SignerInfo;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/cms/CMSProcessable;[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_2
    new-instance v0, Lorg/spongycastle/cms/SignerInformationStore;

    invoke-direct {v0, v2}, Lorg/spongycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDigestAlgOID()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgParams()[B
    .locals 4

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/SignerInformation;->encodeObj(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 175
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting digest parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDigestAlgorithmID()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncodedSignedAttributes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    const-string v1, "DER"

    .line 329
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgParams()[B
    .locals 4

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/SignerInformation;->encodeObj(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSID()Lorg/spongycastle/cms/SignerId;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->sid:Lorg/spongycastle/cms/SignerId;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->signature:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeValues:Lorg/spongycastle/asn1/cms/AttributeTable;

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Lorg/spongycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/cms/AttributeTable;-><init>(Lorg/spongycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeValues:Lorg/spongycastle/asn1/cms/AttributeTable;

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->signedAttributeValues:Lorg/spongycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getUnsignedAttributes()Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/spongycastle/asn1/cms/AttributeTable;

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Lorg/spongycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/cms/AttributeTable;-><init>(Lorg/spongycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lorg/spongycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/spongycastle/asn1/cms/AttributeTable;

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/spongycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignerInfo;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public isCounterSignature()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lorg/spongycastle/cms/SignerInformation;->isCounterSignature:Z

    return v0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/cms/SignerInfo;
    .locals 1

    .line 611
    iget-object v0, p0, Lorg/spongycastle/cms/SignerInformation;->info:Lorg/spongycastle/asn1/cms/SignerInfo;

    return-object v0
.end method

.method public verify(Lorg/spongycastle/cms/SignerInformationVerifier;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 586
    invoke-direct {p0}, Lorg/spongycastle/cms/SignerInformation;->getSigningTime()Lorg/spongycastle/asn1/cms/Time;

    move-result-object v0

    .line 588
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lorg/spongycastle/cert/X509CertificateHolder;

    move-result-object v1

    .line 594
    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/spongycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 596
    :cond_0
    new-instance p1, Lorg/spongycastle/cms/CMSVerifierCertificateNotValidException;

    const-string v0, "verifier not valid at signingTime"

    invoke-direct {p1, v0}, Lorg/spongycastle/cms/CMSVerifierCertificateNotValidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 601
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/spongycastle/cms/SignerInformation;->doVerify(Lorg/spongycastle/cms/SignerInformationVerifier;)Z

    move-result p1

    return p1
.end method
