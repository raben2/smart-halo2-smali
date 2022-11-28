.class public Lorg/spongycastle/tsp/TimeStampResponseGenerator;
.super Ljava/lang/Object;
.source "TimeStampResponseGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/tsp/TimeStampResponseGenerator$FailInfo;
    }
.end annotation


# instance fields
.field private acceptedAlgorithms:Ljava/util/Set;

.field private acceptedExtensions:Ljava/util/Set;

.field private acceptedPolicies:Ljava/util/Set;

.field failInfo:I

.field status:I

.field statusStrings:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private tokenGenerator:Lorg/spongycastle/tsp/TimeStampTokenGenerator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;-><init>(Lorg/spongycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;-><init>(Lorg/spongycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/tsp/TimeStampTokenGenerator;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->tokenGenerator:Lorg/spongycastle/tsp/TimeStampTokenGenerator;

    .line 101
    invoke-direct {p0, p2}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->acceptedAlgorithms:Ljava/util/Set;

    .line 102
    invoke-direct {p0, p3}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->acceptedPolicies:Ljava/util/Set;

    .line 103
    invoke-direct {p0, p4}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->acceptedExtensions:Ljava/util/Set;

    .line 105
    new-instance p1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/spongycastle/asn1/ASN1EncodableVector;

    return-void
.end method

.method private addStatusString(Ljava/lang/String;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/spongycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method private convert(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    .line 327
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 329
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 333
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 335
    new-instance v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getPKIStatusInfo()Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 4

    .line 120
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->status:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    iget-object v1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    :cond_0
    iget v1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->failInfo:I

    if-eqz v1, :cond_1

    .line 131
    new-instance v2, Lorg/spongycastle/tsp/TimeStampResponseGenerator$FailInfo;

    invoke-direct {v2, p0, v1}, Lorg/spongycastle/tsp/TimeStampResponseGenerator$FailInfo;-><init>(Lorg/spongycastle/tsp/TimeStampResponseGenerator;I)V

    .line 132
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method private setFailInfoField(I)V
    .locals 1

    .line 115
    iget v0, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->failInfo:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->failInfo:I

    return-void
.end method


# virtual methods
.method public generate(Lorg/spongycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;)Lorg/spongycastle/tsp/TimeStampResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/tsp/TSPException;
        }
    .end annotation

    :try_start_0
    const-string v0, "Operation Okay"

    .line 169
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->generateGrantedResponse(Lorg/spongycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Ljava/lang/String;)Lorg/spongycastle/tsp/TimeStampResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p0, p1}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->generateRejectedResponse(Ljava/lang/Exception;)Lorg/spongycastle/tsp/TimeStampResponse;

    move-result-object p1

    return-object p1
.end method

.method public generateFailResponse(IILjava/lang/String;)Lorg/spongycastle/tsp/TimeStampResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/tsp/TSPException;
        }
    .end annotation

    .line 296
    iput p1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->status:I

    .line 297
    new-instance p1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/spongycastle/asn1/ASN1EncodableVector;

    .line 299
    invoke-direct {p0, p2}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->setFailInfoField(I)V

    if-eqz p3, :cond_0

    .line 303
    invoke-direct {p0, p3}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->addStatusString(Ljava/lang/String;)V

    .line 306
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->getPKIStatusInfo()Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object p1

    .line 308
    new-instance p2, Lorg/spongycastle/asn1/tsp/TimeStampResp;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/spongycastle/asn1/tsp/TimeStampResp;-><init>(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;Lorg/spongycastle/asn1/cms/ContentInfo;)V

    .line 312
    :try_start_0
    new-instance p1, Lorg/spongycastle/tsp/TimeStampResponse;

    invoke-direct {p1, p2}, Lorg/spongycastle/tsp/TimeStampResponse;-><init>(Lorg/spongycastle/asn1/tsp/TimeStampResp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 316
    :catch_0
    new-instance p1, Lorg/spongycastle/tsp/TSPException;

    const-string p2, "created badly formatted response!"

    invoke-direct {p1, p2}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateGrantedResponse(Lorg/spongycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;)Lorg/spongycastle/tsp/TimeStampResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/tsp/TSPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->generateGrantedResponse(Lorg/spongycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Ljava/lang/String;)Lorg/spongycastle/tsp/TimeStampResponse;

    move-result-object p1

    return-object p1
.end method

.method public generateGrantedResponse(Lorg/spongycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Ljava/lang/String;)Lorg/spongycastle/tsp/TimeStampResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/tsp/TSPException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 222
    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->acceptedAlgorithms:Ljava/util/Set;

    iget-object v1, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->acceptedPolicies:Ljava/util/Set;

    iget-object v2, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->acceptedExtensions:Ljava/util/Set;

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/tsp/TimeStampRequest;->validate(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->status:I

    .line 225
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->statusStrings:Lorg/spongycastle/asn1/ASN1EncodableVector;

    if-eqz p4, :cond_0

    .line 229
    invoke-direct {p0, p4}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->addStatusString(Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->getPKIStatusInfo()Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object p4

    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->tokenGenerator:Lorg/spongycastle/tsp/TimeStampTokenGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/tsp/TimeStampTokenGenerator;->generate(Lorg/spongycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;)Lorg/spongycastle/tsp/TimeStampToken;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/spongycastle/cms/CMSSignedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/cms/CMSSignedData;->toASN1Structure()Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object p1
    :try_end_0
    .catch Lorg/spongycastle/tsp/TSPException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    new-instance p2, Lorg/spongycastle/asn1/tsp/TimeStampResp;

    invoke-direct {p2, p4, p1}, Lorg/spongycastle/asn1/tsp/TimeStampResp;-><init>(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;Lorg/spongycastle/asn1/cms/ContentInfo;)V

    .line 253
    :try_start_1
    new-instance p1, Lorg/spongycastle/tsp/TimeStampResponse;

    invoke-direct {p1, p2}, Lorg/spongycastle/tsp/TimeStampResponse;-><init>(Lorg/spongycastle/asn1/tsp/TimeStampResp;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 257
    :catch_0
    new-instance p1, Lorg/spongycastle/tsp/TSPException;

    const-string p2, "created badly formatted response!"

    invoke-direct {p1, p2}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 245
    new-instance p2, Lorg/spongycastle/tsp/TSPException;

    const-string p3, "Timestamp token received cannot be converted to ContentInfo"

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 241
    throw p1

    .line 219
    :cond_1
    new-instance p1, Lorg/spongycastle/tsp/TSPValidationException;

    const/16 p2, 0x200

    const-string p3, "The time source is not available."

    invoke-direct {p1, p3, p2}, Lorg/spongycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public generateRejectedResponse(Ljava/lang/Exception;)Lorg/spongycastle/tsp/TimeStampResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/tsp/TSPException;
        }
    .end annotation

    .line 274
    instance-of v0, p1, Lorg/spongycastle/tsp/TSPValidationException;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 276
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/tsp/TSPValidationException;

    invoke-virtual {v0}, Lorg/spongycastle/tsp/TSPValidationException;->getFailureCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->generateFailResponse(IILjava/lang/String;)Lorg/spongycastle/tsp/TimeStampResponse;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 280
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/spongycastle/tsp/TimeStampResponseGenerator;->generateFailResponse(IILjava/lang/String;)Lorg/spongycastle/tsp/TimeStampResponse;

    move-result-object p1

    return-object p1
.end method
