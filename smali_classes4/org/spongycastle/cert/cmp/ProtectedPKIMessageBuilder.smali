.class public Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
.super Ljava/lang/Object;
.source "ProtectedPKIMessageBuilder.java"


# instance fields
.field private body:Lorg/spongycastle/asn1/cmp/PKIBody;

.field private extraCerts:Ljava/util/List;

.field private generalInfos:Ljava/util/List;

.field private hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    .line 57
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-direct {v0, p1, p2, p3}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;-><init>(ILorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V

    iput-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 1

    const/4 v0, 0x2

    .line 45
    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;-><init>(ILorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method private calculateMac(Lorg/spongycastle/operator/MacCalculator;Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/cmp/PKIBody;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 295
    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 296
    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 298
    invoke-interface {p1}, Lorg/spongycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 300
    new-instance p3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p3, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 302
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 304
    invoke-interface {p1}, Lorg/spongycastle/operator/MacCalculator;->getMac()[B

    move-result-object p1

    return-object p1
.end method

.method private calculateSignature(Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/cmp/PKIBody;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 278
    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 279
    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 281
    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 283
    new-instance p3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p3, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {p3, v0}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 285
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 287
    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getSignature()[B

    move-result-object p1

    return-object p1
.end method

.method private finaliseHeader(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setProtectionAlg(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    .line 246
    iget-object p1, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 248
    iget-object p1, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    .line 250
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    iget-object v1, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setGeneralInfo([Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    :cond_0
    return-void
.end method

.method private finaliseMessage(Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/DERBitString;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessage;
    .locals 4

    .line 256
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/cmp/CMPCertificate;

    const/4 v1, 0x0

    .line 260
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 262
    new-instance v2, Lorg/spongycastle/asn1/cmp/CMPCertificate;

    iget-object v3, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-virtual {v3}, Lorg/spongycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_0
    new-instance v1, Lorg/spongycastle/cert/cmp/ProtectedPKIMessage;

    new-instance v2, Lorg/spongycastle/asn1/cmp/PKIMessage;

    iget-object v3, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    invoke-direct {v2, p1, v3, p2, v0}, Lorg/spongycastle/asn1/cmp/PKIMessage;-><init>(Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/cmp/PKIBody;Lorg/spongycastle/asn1/DERBitString;[Lorg/spongycastle/asn1/cmp/CMPCertificate;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/cert/cmp/ProtectedPKIMessage;-><init>(Lorg/spongycastle/asn1/cmp/PKIMessage;)V

    return-object v1

    .line 269
    :cond_1
    new-instance v0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessage;

    new-instance v1, Lorg/spongycastle/asn1/cmp/PKIMessage;

    iget-object v2, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    invoke-direct {v1, p1, v2, p2}, Lorg/spongycastle/asn1/cmp/PKIMessage;-><init>(Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/cmp/PKIBody;Lorg/spongycastle/asn1/DERBitString;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/cmp/ProtectedPKIMessage;-><init>(Lorg/spongycastle/asn1/cmp/PKIMessage;)V

    return-object v0
.end method


# virtual methods
.method public addCMPCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGeneralInfo(Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/cmp/CMPException;
        }
    .end annotation

    .line 226
    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseHeader(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 228
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->build()Lorg/spongycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    .line 232
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    invoke-direct {p0, p1, v0, v2}, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->calculateSignature(Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/cmp/PKIBody;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    .line 234
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseMessage(Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/DERBitString;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 238
    new-instance v0, Lorg/spongycastle/cert/cmp/CMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode signature input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public build(Lorg/spongycastle/operator/MacCalculator;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/cmp/CMPException;
        }
    .end annotation

    .line 200
    invoke-interface {p1}, Lorg/spongycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseHeader(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 202
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->build()Lorg/spongycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    .line 206
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    invoke-direct {p0, p1, v0, v2}, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->calculateMac(Lorg/spongycastle/operator/MacCalculator;Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/cmp/PKIBody;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    .line 208
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseMessage(Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/DERBitString;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 212
    new-instance v0, Lorg/spongycastle/cert/cmp/CMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode MAC input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setBody(Lorg/spongycastle/asn1/cmp/PKIBody;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    return-object p0
.end method

.method public setFreeText(Lorg/spongycastle/asn1/cmp/PKIFreeText;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setFreeText(Lorg/spongycastle/asn1/cmp/PKIFreeText;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setMessageTime(Ljava/util/Date;)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    new-instance v1, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setMessageTime(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setRecipKID([B)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setRecipKID([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setRecipNonce([B)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setRecipNonce([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setSenderKID([B)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setSenderKID([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setSenderNonce([B)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setSenderNonce([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setTransactionID([B)Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;->setTransactionID([B)Lorg/spongycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method
