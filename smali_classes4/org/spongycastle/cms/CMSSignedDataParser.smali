.class public Lorg/spongycastle/cms/CMSSignedDataParser;
.super Lorg/spongycastle/cms/CMSContentInfoParser;
.source "CMSSignedDataParser.java"


# static fields
.field private static final HELPER:Lorg/spongycastle/cms/CMSSignedHelper;


# instance fields
.field private _certSet:Lorg/spongycastle/asn1/ASN1Set;

.field private _crlSet:Lorg/spongycastle/asn1/ASN1Set;

.field private _isCertCrlParsed:Z

.field private _signedContent:Lorg/spongycastle/cms/CMSTypedStream;

.field private _signedContentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private _signedData:Lorg/spongycastle/asn1/cms/SignedDataParser;

.field private _signerInfoStore:Lorg/spongycastle/cms/SignerInformationStore;

.field private digestAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private digests:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    sget-object v0, Lorg/spongycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/spongycastle/cms/CMSSignedHelper;

    sput-object v0, Lorg/spongycastle/cms/CMSSignedDataParser;->HELPER:Lorg/spongycastle/cms/CMSSignedHelper;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/operator/DigestCalculatorProvider;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/cms/CMSSignedDataParser;-><init>(Lorg/spongycastle/operator/DigestCalculatorProvider;Lorg/spongycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/operator/DigestCalculatorProvider;Lorg/spongycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 142
    invoke-direct {p0, p3}, Lorg/spongycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    .line 146
    :try_start_0
    iput-object p2, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/spongycastle/cms/CMSTypedStream;

    .line 147
    iget-object p3, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_contentInfo:Lorg/spongycastle/asn1/cms/ContentInfoParser;

    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p3

    invoke-static {p3}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/SignedDataParser;

    move-result-object p3

    iput-object p3, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedData:Lorg/spongycastle/asn1/cms/SignedDataParser;

    .line 148
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    .line 150
    iget-object p3, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedData:Lorg/spongycastle/asn1/cms/SignedDataParser;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object p3

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 155
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/spongycastle/asn1/ASN1SetParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 157
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 159
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :try_start_1
    invoke-interface {p1, v1}, Lorg/spongycastle/operator/DigestCalculatorProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    iget-object v3, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 176
    :cond_1
    :try_start_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->digestAlgorithms:Ljava/util/Set;

    .line 181
    iget-object p1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedData:Lorg/spongycastle/asn1/cms/SignedDataParser;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lorg/spongycastle/asn1/cms/ContentInfoParser;

    move-result-object p1

    const/4 p3, 0x4

    .line 182
    invoke-virtual {p1, p3}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p3

    .line 184
    instance-of v0, p3, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-eqz v0, :cond_3

    .line 186
    check-cast p3, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-eqz p3, :cond_5

    .line 190
    new-instance v0, Lorg/spongycastle/cms/CMSTypedStream;

    .line 191
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {p3}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lorg/spongycastle/cms/CMSTypedStream;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    .line 193
    iget-object p3, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/spongycastle/cms/CMSTypedStream;

    if-nez p3, :cond_2

    .line 195
    iput-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/spongycastle/cms/CMSTypedStream;

    goto :goto_1

    .line 202
    :cond_2
    invoke-virtual {v0}, Lorg/spongycastle/cms/CMSTypedStream;->drain()V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_5

    .line 208
    new-instance v0, Lorg/spongycastle/cms/PKCS7TypedStream;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/spongycastle/cms/PKCS7TypedStream;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 210
    iget-object p3, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/spongycastle/cms/CMSTypedStream;

    if-nez p3, :cond_4

    .line 212
    iput-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/spongycastle/cms/CMSTypedStream;

    goto :goto_1

    .line 219
    :cond_4
    invoke-virtual {v0}, Lorg/spongycastle/cms/PKCS7TypedStream;->drain()V

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    .line 225
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_2

    .line 229
    :cond_6
    iget-object p1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/spongycastle/cms/CMSTypedStream;

    invoke-virtual {p1}, Lorg/spongycastle/cms/CMSTypedStream;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :catch_1
    move-exception p1

    .line 234
    new-instance p2, Lorg/spongycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "io exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public constructor <init>(Lorg/spongycastle/operator/DigestCalculatorProvider;Lorg/spongycastle/cms/CMSTypedStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/cms/CMSSignedDataParser;-><init>(Lorg/spongycastle/operator/DigestCalculatorProvider;Lorg/spongycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/operator/DigestCalculatorProvider;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/cms/CMSSignedDataParser;-><init>(Lorg/spongycastle/operator/DigestCalculatorProvider;Ljava/io/InputStream;)V

    return-void
.end method

.method private static getASN1Set(Lorg/spongycastle/asn1/ASN1SetParser;)Lorg/spongycastle/asn1/ASN1Set;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 609
    :cond_0
    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static pipeEncapsulatedOctetString(Lorg/spongycastle/asn1/cms/ContentInfoParser;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 616
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-eqz p0, :cond_0

    .line 620
    invoke-static {p0, p1}, Lorg/spongycastle/cms/CMSSignedDataParser;->pipeOctetString(Lorg/spongycastle/asn1/ASN1OctetStringParser;Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method private static pipeOctetString(Lorg/spongycastle/asn1/ASN1OctetStringParser;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 649
    invoke-static {p1, v0, v1, v0}, Lorg/spongycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object p1

    .line 651
    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/spongycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 652
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private populateCertCrlSets()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 364
    iget-boolean v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_isCertCrlParsed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_isCertCrlParsed:Z

    .line 374
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedData:Lorg/spongycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getCertificates()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/spongycastle/asn1/ASN1SetParser;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_certSet:Lorg/spongycastle/asn1/ASN1Set;

    .line 375
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedData:Lorg/spongycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getCrls()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/spongycastle/asn1/ASN1SetParser;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_crlSet:Lorg/spongycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 379
    new-instance v1, Lorg/spongycastle/cms/CMSException;

    const-string v2, "problem parsing cert/crl sets"

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static replaceCertificatesAndCRLs(Ljava/io/InputStream;Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Store;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    new-instance v0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 508
    new-instance p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1StreamParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    const/16 v0, 0x10

    .line 509
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/SignedDataParser;

    move-result-object p0

    .line 511
    new-instance v0, Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-direct {v0, p4}, Lorg/spongycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 513
    sget-object v1, Lorg/spongycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 515
    new-instance v1, Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lorg/spongycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 518
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 521
    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v5

    invoke-interface {v5}, Lorg/spongycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 524
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lorg/spongycastle/asn1/cms/ContentInfoParser;

    move-result-object v2

    .line 526
    new-instance v5, Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 528
    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 530
    invoke-virtual {v5}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/spongycastle/cms/CMSSignedDataParser;->pipeEncapsulatedOctetString(Lorg/spongycastle/asn1/cms/ContentInfoParser;Ljava/io/OutputStream;)V

    .line 532
    invoke-virtual {v5}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 537
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getCertificates()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/spongycastle/asn1/ASN1SetParser;)Lorg/spongycastle/asn1/ASN1Set;

    .line 538
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getCrls()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/spongycastle/asn1/ASN1SetParser;)Lorg/spongycastle/asn1/ASN1Set;

    if-nez p1, :cond_0

    if-eqz p3, :cond_3

    .line 545
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 549
    invoke-static {p1}, Lorg/spongycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/spongycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 553
    invoke-static {p3}, Lorg/spongycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lorg/spongycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 556
    :cond_2
    invoke-static {v2}, Lorg/spongycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 560
    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v2, v4, v4, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERTaggedObject;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    if-eqz p2, :cond_4

    .line 566
    invoke-static {p2}, Lorg/spongycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/spongycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    .line 568
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 570
    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance p3, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {p3, v4, v3, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p3}, Lorg/spongycastle/asn1/DERTaggedObject;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 574
    :cond_4
    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getSignerInfos()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object p0

    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 576
    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 578
    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    return-object p4
.end method

.method public static replaceSigners(Ljava/io/InputStream;Lorg/spongycastle/cms/SignerInformationStore;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    new-instance v0, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 427
    new-instance p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1StreamParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    const/16 v0, 0x10

    .line 428
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/SignedDataParser;

    move-result-object p0

    .line 430
    new-instance v0, Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 432
    sget-object v1, Lorg/spongycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 434
    new-instance v1, Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lorg/spongycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 437
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 440
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    .line 442
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 444
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 446
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/cms/SignerInformation;

    .line 447
    sget-object v7, Lorg/spongycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/spongycastle/cms/CMSSignedHelper;

    invoke-virtual {v6}, Lorg/spongycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/spongycastle/cms/CMSSignedHelper;->fixAlgID(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    new-instance v6, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v6, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6}, Lorg/spongycastle/asn1/DERSet;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    .line 453
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lorg/spongycastle/asn1/cms/ContentInfoParser;

    move-result-object v2

    .line 455
    new-instance v5, Lorg/spongycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 457
    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/BERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 459
    invoke-virtual {v5}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/spongycastle/cms/CMSSignedDataParser;->pipeEncapsulatedOctetString(Lorg/spongycastle/asn1/cms/ContentInfoParser;Ljava/io/OutputStream;)V

    .line 461
    invoke-virtual {v5}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 464
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getCertificates()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lorg/spongycastle/cms/CMSSignedDataParser;->writeSetToGeneratorTagged(Lorg/spongycastle/asn1/ASN1Generator;Lorg/spongycastle/asn1/ASN1SetParser;I)V

    .line 465
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getCrls()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object p0

    invoke-static {v1, p0, v3}, Lorg/spongycastle/cms/CMSSignedDataParser;->writeSetToGeneratorTagged(Lorg/spongycastle/asn1/ASN1Generator;Lorg/spongycastle/asn1/ASN1SetParser;I)V

    .line 468
    new-instance p0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 469
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/cms/SignerInformation;

    .line 473
    invoke-virtual {v2}, Lorg/spongycastle/cms/SignerInformation;->toASN1Structure()Lorg/spongycastle/asn1/cms/SignerInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 476
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v2, p0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERSet;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 478
    invoke-virtual {v1}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    .line 480
    invoke-virtual {v0}, Lorg/spongycastle/asn1/BERSequenceGenerator;->close()V

    return-object p2
.end method

.method private static writeSetToGeneratorTagged(Lorg/spongycastle/asn1/ASN1Generator;Lorg/spongycastle/asn1/ASN1SetParser;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    invoke-static {p1}, Lorg/spongycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/spongycastle/asn1/ASN1SetParser;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 593
    instance-of p1, p1, Lorg/spongycastle/asn1/BERSetParser;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Generator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    new-instance p1, Lorg/spongycastle/asn1/BERTaggedObject;

    invoke-direct {p1, v1, p2, v0}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/BERTaggedObject;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Generator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    new-instance p1, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {p1, v1, p2, v0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERTaggedObject;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAttributeCertificates()Lorg/spongycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 342
    sget-object v0, Lorg/spongycastle/cms/CMSSignedDataParser;->HELPER:Lorg/spongycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_certSet:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/cms/CMSSignedHelper;->getAttributeCertificates(Lorg/spongycastle/asn1/ASN1Set;)Lorg/spongycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCRLs()Lorg/spongycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 329
    sget-object v0, Lorg/spongycastle/cms/CMSSignedDataParser;->HELPER:Lorg/spongycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_crlSet:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/cms/CMSSignedHelper;->getCRLs(Lorg/spongycastle/asn1/ASN1Set;)Lorg/spongycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/spongycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 316
    sget-object v0, Lorg/spongycastle/cms/CMSSignedDataParser;->HELPER:Lorg/spongycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_certSet:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/cms/CMSSignedHelper;->getCertificates(Lorg/spongycastle/asn1/ASN1Set;)Lorg/spongycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->digestAlgorithms:Ljava/util/Set;

    return-object v0
.end method

.method public getOtherRevocationInfo(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 358
    sget-object v0, Lorg/spongycastle/cms/CMSSignedDataParser;->HELPER:Lorg/spongycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_crlSet:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/cms/CMSSignedHelper;->getOtherRevocationInfo(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)Lorg/spongycastle/util/Store;

    move-result-object p1

    return-object p1
.end method

.method public getSignedContent()Lorg/spongycastle/cms/CMSTypedStream;
    .locals 3

    .line 396
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/spongycastle/cms/CMSTypedStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    .line 402
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/spongycastle/cms/CMSTypedStream;

    invoke-virtual {v1}, Lorg/spongycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    .line 401
    invoke-static {v0, v1}, Lorg/spongycastle/cms/CMSUtils;->attachDigestsToInputStream(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 404
    new-instance v1, Lorg/spongycastle/cms/CMSTypedStream;

    iget-object v2, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/spongycastle/cms/CMSTypedStream;

    invoke-virtual {v2}, Lorg/spongycastle/cms/CMSTypedStream;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/cms/CMSTypedStream;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getSignedContentTypeOID()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignerInfos()Lorg/spongycastle/cms/SignerInformationStore;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signerInfoStore:Lorg/spongycastle/cms/SignerInformationStore;

    if-nez v0, :cond_2

    .line 268
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 273
    iget-object v2, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 274
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 278
    iget-object v4, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v4}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedData:Lorg/spongycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getSignerInfos()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v2

    .line 286
    :goto_1
    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1SetParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 288
    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/SignerInfo;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Lorg/spongycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    .line 292
    new-instance v5, Lorg/spongycastle/cms/SignerInformation;

    iget-object v6, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v7, 0x0

    invoke-direct {v5, v3, v6, v7, v4}, Lorg/spongycastle/cms/SignerInformation;-><init>(Lorg/spongycastle/asn1/cms/SignerInfo;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/cms/CMSProcessable;[B)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    :cond_1
    new-instance v1, Lorg/spongycastle/cms/SignerInformationStore;

    invoke-direct {v1, v0}, Lorg/spongycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signerInfoStore:Lorg/spongycastle/cms/SignerInformationStore;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 297
    new-instance v1, Lorg/spongycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "io exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 303
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signerInfoStore:Lorg/spongycastle/cms/SignerInformationStore;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/spongycastle/cms/CMSSignedDataParser;->_signedData:Lorg/spongycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/SignedDataParser;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method
