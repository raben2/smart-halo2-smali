.class public Lorg/spongycastle/cert/ocsp/BasicOCSPResp;
.super Ljava/lang/Object;
.source "BasicOCSPResp.java"

# interfaces
.implements Lorg/spongycastle/util/Encodable;


# instance fields
.field private data:Lorg/spongycastle/asn1/ocsp/ResponseData;

.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    .line 44
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    .line 45
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 211
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 216
    :cond_1
    check-cast p1, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;

    .line 218
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    iget-object p1, p1, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCerts()[Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 5

    .line 148
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/cert/X509CertificateHolder;

    const/4 v2, 0x0

    .line 156
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 158
    new-instance v3, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/cert/X509CertificateHolder;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 164
    :cond_1
    sget-object v0, Lorg/spongycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lorg/spongycastle/cert/X509CertificateHolder;

    return-object v0

    .line 168
    :cond_2
    sget-object v0, Lorg/spongycastle/cert/ocsp/OCSPUtils;->EMPTY_CERTS:[Lorg/spongycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/spongycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lorg/spongycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/x509/Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/spongycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lorg/spongycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/spongycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lorg/spongycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProducedAt()Ljava/util/Date;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getProducedAt()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/cert/ocsp/OCSPUtils;->extractDate(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getResponderId()Lorg/spongycastle/cert/ocsp/RespID;
    .locals 2

    .line 81
    new-instance v0, Lorg/spongycastle/cert/ocsp/RespID;

    iget-object v1, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getResponderID()Lorg/spongycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/ocsp/RespID;-><init>(Lorg/spongycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public getResponses()[Lorg/spongycastle/cert/ocsp/SingleResp;
    .locals 5

    .line 91
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/cert/ocsp/SingleResp;

    const/4 v2, 0x0

    .line 94
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 96
    new-instance v3, Lorg/spongycastle/cert/ocsp/SingleResp;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/SingleResponse;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/cert/ocsp/SingleResp;-><init>(Lorg/spongycastle/asn1/ocsp/SingleResponse;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSignature()[B
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getSignature()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithmID()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getTBSResponseData()[B
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSignatureValid(Lorg/spongycastle/operator/ContentVerifierProvider;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/operator/ContentVerifierProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/ContentVerifier;

    move-result-object p1

    .line 182
    invoke-interface {p1}, Lorg/spongycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 185
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 187
    invoke-virtual {p0}, Lorg/spongycastle/cert/ocsp/BasicOCSPResp;->getSignature()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 191
    new-instance v0, Lorg/spongycastle/cert/ocsp/OCSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing sig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
