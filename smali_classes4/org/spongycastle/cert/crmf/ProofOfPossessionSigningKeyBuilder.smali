.class public Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
.super Ljava/lang/Object;
.source "ProofOfPossessionSigningKeyBuilder.java"


# instance fields
.field private certRequest:Lorg/spongycastle/asn1/crmf/CertRequest;

.field private name:Lorg/spongycastle/asn1/x509/GeneralName;

.field private pubKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field private publicKeyMAC:Lorg/spongycastle/asn1/crmf/PKMACValue;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/crmf/CertRequest;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->certRequest:Lorg/spongycastle/asn1/crmf/CertRequest;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method


# virtual methods
.method public build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/asn1/crmf/POPOSigningKey;
    .locals 4

    .line 47
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->name:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->publicKeyMAC:Lorg/spongycastle/asn1/crmf/PKMACValue;

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "name and publicKeyMAC cannot both be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->certRequest:Lorg/spongycastle/asn1/crmf/CertRequest;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 58
    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/spongycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/spongycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->name:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_3

    .line 62
    new-instance v1, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    iget-object v2, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 64
    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/spongycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/spongycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 68
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->publicKeyMAC:Lorg/spongycastle/asn1/crmf/PKMACValue;

    iget-object v2, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;-><init>(Lorg/spongycastle/asn1/crmf/PKMACValue;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 70
    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/spongycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/spongycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    .line 73
    :goto_1
    new-instance v0, Lorg/spongycastle/asn1/crmf/POPOSigningKey;

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getSignature()[B

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;-><init>(Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;)V

    return-object v0
.end method

.method public setPublicKeyMac(Lorg/spongycastle/cert/crmf/PKMACValueGenerator;[C)Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->pubKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p1, p2, v0}, Lorg/spongycastle/cert/crmf/PKMACValueGenerator;->generate([CLorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/crmf/PKMACValue;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->publicKeyMAC:Lorg/spongycastle/asn1/crmf/PKMACValue;

    return-object p0
.end method

.method public setSender(Lorg/spongycastle/asn1/x509/GeneralName;)Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/spongycastle/cert/crmf/ProofOfPossessionSigningKeyBuilder;->name:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object p0
.end method
