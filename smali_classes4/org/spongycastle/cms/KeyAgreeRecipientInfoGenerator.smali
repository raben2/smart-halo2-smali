.class public abstract Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;
.super Ljava/lang/Object;
.source "KeyAgreeRecipientInfoGenerator.java"

# interfaces
.implements Lorg/spongycastle/cms/RecipientInfoGenerator;


# instance fields
.field private keyAgreementOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private keyEncryptionOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private originatorKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->originatorKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 26
    iput-object p1, p0, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->keyAgreementOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    iput-object p3, p0, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method


# virtual methods
.method protected createOriginatorPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/cms/OriginatorPublicKey;
    .locals 4

    .line 65
    new-instance v0, Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 66
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 67
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/asn1/cms/OriginatorPublicKey;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public generate(Lorg/spongycastle/operator/GenericKey;)Lorg/spongycastle/asn1/cms/RecipientInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    iget-object v1, p0, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->originatorKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 34
    invoke-virtual {p0, v1}, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->createOriginatorPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/spongycastle/asn1/cms/OriginatorPublicKey;)V

    .line 37
    iget-object v1, p0, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/cms/CMSUtils;->isDES(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMSRC2wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->keyEncryptionOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 46
    :goto_1
    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->keyAgreementOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 48
    invoke-virtual {p0, v2, v1, p1}, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->generateRecipientEncryptedKeys(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/operator/GenericKey;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p1

    .line 49
    invoke-virtual {p0, v2}, Lorg/spongycastle/cms/KeyAgreeRecipientInfoGenerator;->getUserKeyingMaterial(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 53
    new-instance v3, Lorg/spongycastle/asn1/cms/RecipientInfo;

    new-instance v4, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v5, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v0, v5, v2, p1}, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;-><init>(Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/cms/RecipientInfo;-><init>(Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;)V

    return-object v3

    .line 59
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/cms/RecipientInfo;

    new-instance v3, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2, p1}, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;-><init>(Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v1, v3}, Lorg/spongycastle/asn1/cms/RecipientInfo;-><init>(Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;)V

    return-object v1
.end method

.method protected abstract generateRecipientEncryptedKeys(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/operator/GenericKey;)Lorg/spongycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation
.end method

.method protected abstract getUserKeyingMaterial(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation
.end method
