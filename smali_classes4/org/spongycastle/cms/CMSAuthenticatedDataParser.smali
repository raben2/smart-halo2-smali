.class public Lorg/spongycastle/cms/CMSAuthenticatedDataParser;
.super Lorg/spongycastle/cms/CMSContentInfoParser;
.source "CMSAuthenticatedDataParser.java"


# instance fields
.field private authAttrNotRead:Z

.field private authAttrSet:Lorg/spongycastle/asn1/ASN1Set;

.field private authAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;

.field authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

.field private mac:[B

.field private macAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/spongycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/spongycastle/cms/RecipientInformationStore;

.field private unauthAttrNotRead:Z

.field private unauthAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;Lorg/spongycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/operator/DigestCalculatorProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/spongycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    .line 109
    new-instance p1, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->_contentInfo:Lorg/spongycastle/asn1/cms/ContentInfoParser;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-direct {p1, v0}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    iput-object p1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    .line 114
    iget-object p1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getOriginatorInfo()Lorg/spongycastle/asn1/cms/OriginatorInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    new-instance v0, Lorg/spongycastle/cms/OriginatorInformation;

    invoke-direct {v0, p1}, Lorg/spongycastle/cms/OriginatorInformation;-><init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;)V

    iput-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->originatorInfo:Lorg/spongycastle/cms/OriginatorInformation;

    .line 123
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getRecipientInfos()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getMacAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 130
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 142
    iget-object v2, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getEncapsulatedContentInfo()Lorg/spongycastle/asn1/cms/ContentInfoParser;

    move-result-object v2

    .line 143
    new-instance v3, Lorg/spongycastle/cms/CMSProcessableInputStream;

    .line 144
    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/spongycastle/cms/CMSProcessableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    :try_start_0
    new-instance v1, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-interface {p2, v0}, Lorg/spongycastle/operator/DigestCalculatorProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/DigestCalculator;

    move-result-object p2

    invoke-direct {v1, p2, v3}, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;-><init>(Lorg/spongycastle/operator/DigestCalculator;Lorg/spongycastle/cms/CMSReadable;)V

    .line 150
    iget-object p2, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/cms/CMSAuthenticatedDataParser$1;-><init>(Lorg/spongycastle/cms/CMSAuthenticatedDataParser;)V

    invoke-static {p1, p2, v1, v0}, Lorg/spongycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSSecureReadable;Lorg/spongycastle/cms/AuthAttributesProvider;)Lorg/spongycastle/cms/RecipientInformationStore;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->recipientInfoStore:Lorg/spongycastle/cms/RecipientInformationStore;
    :try_end_0
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    new-instance p2, Lorg/spongycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to create digest calculator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 136
    :cond_1
    new-instance p1, Lorg/spongycastle/cms/CMSException;

    const-string p2, "a digest calculator provider is required if authenticated attributes are present"

    invoke-direct {p1, p2}, Lorg/spongycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_2
    iget-object p2, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {p2}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getEncapsulatedContentInfo()Lorg/spongycastle/asn1/cms/ContentInfoParser;

    move-result-object p2

    .line 176
    new-instance v0, Lorg/spongycastle/cms/CMSProcessableInputStream;

    .line 177
    invoke-virtual {p2, v1}, Lorg/spongycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p2

    check-cast p2, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    invoke-interface {p2}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/spongycastle/cms/CMSProcessableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    new-instance p2, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;

    iget-object v1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p2, v1, v0}, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSReadable;)V

    .line 181
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p1, v0, p2}, Lorg/spongycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSSecureReadable;)Lorg/spongycastle/cms/RecipientInformationStore;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->recipientInfoStore:Lorg/spongycastle/cms/RecipientInformationStore;

    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;Lorg/spongycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/cms/CMSAuthenticatedDataParser;)Lorg/spongycastle/asn1/ASN1Set;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->getAuthAttrSet()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    return-object p0
.end method

.method private encodeObj(Lorg/spongycastle/asn1/ASN1Encodable;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 328
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAuthAttrSet()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getAuthAttrs()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    iput-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrSet:Lorg/spongycastle/asn1/ASN1Set;

    :cond_0
    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrSet:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method


# virtual methods
.method public getAuthAttrs()Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->getAuthAttrSet()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v1, Lorg/spongycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/cms/AttributeTable;-><init>(Lorg/spongycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getContentDigest()[B
    .locals 2

    .line 341
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;

    if-eqz v0, :cond_0

    .line 343
    sget-object v1, Lorg/spongycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/cms/AttributeTable;->get(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cms/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMac()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->mac:[B

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->getAuthAttrs()Lorg/spongycastle/asn1/cms/AttributeTable;

    .line 245
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getMac()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->mac:[B

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->mac:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgOID()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgParams()[B
    .locals 4

    .line 223
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->encodeObj(Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 227
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

.method public getMacAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/spongycastle/cms/OriginatorInformation;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->originatorInfo:Lorg/spongycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/spongycastle/cms/RecipientInformationStore;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->recipientInfoStore:Lorg/spongycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/spongycastle/asn1/cms/AttributeTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->unauthAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->unauthAttrNotRead:Z

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getUnauthAttrs()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 301
    iput-boolean v1, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->unauthAttrNotRead:Z

    if-eqz v0, :cond_1

    .line 305
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 308
    :goto_0
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SetParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 310
    check-cast v2, Lorg/spongycastle/asn1/ASN1SequenceParser;

    .line 312
    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1SequenceParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 315
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/cms/AttributeTable;

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/cms/AttributeTable;-><init>(Lorg/spongycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->unauthAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;

    .line 319
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/cms/CMSAuthenticatedDataParser;->unauthAttrs:Lorg/spongycastle/asn1/cms/AttributeTable;

    return-object v0
.end method
