.class public Lorg/spongycastle/cert/crmf/CertificateRequestMessage;
.super Ljava/lang/Object;
.source "CertificateRequestMessage.java"

# interfaces
.implements Lorg/spongycastle/util/Encodable;


# static fields
.field public static final popKeyAgreement:I = 0x3

.field public static final popKeyEncipherment:I = 0x2

.field public static final popRaVerified:I = 0x0

.field public static final popSigningKey:I = 0x1


# instance fields
.field private final certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

.field private final controls:Lorg/spongycastle/asn1/crmf/Controls;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/crmf/CertReqMsg;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/spongycastle/asn1/crmf/CertRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/CertRequest;->getControls()Lorg/spongycastle/asn1/crmf/Controls;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/spongycastle/asn1/crmf/Controls;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->parseBytes([B)Lorg/spongycastle/asn1/crmf/CertReqMsg;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/spongycastle/asn1/crmf/CertReqMsg;)V

    return-void
.end method

.method private findControl(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;
    .locals 4

    .line 144
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/spongycastle/asn1/crmf/Controls;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/Controls;->toAttributeTypeAndValueArray()[Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v0

    const/4 v2, 0x0

    .line 152
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 154
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    aget-object v1, v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private static parseBytes([B)Lorg/spongycastle/asn1/crmf/CertReqMsg;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertReqMsg;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 50
    new-instance v0, Lorg/spongycastle/cert/CertIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 46
    new-instance v0, Lorg/spongycastle/cert/CertIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private verifySignature(Lorg/spongycastle/operator/ContentVerifierProvider;Lorg/spongycastle/asn1/crmf/POPOSigningKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 281
    :try_start_0
    invoke-virtual {p2}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/operator/ContentVerifierProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/ContentVerifier;

    move-result-object p1
    :try_end_0
    .catch Lorg/spongycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    invoke-virtual {p2}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p2}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v0

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/spongycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/spongycastle/asn1/crmf/CertRequest;

    move-result-object v0

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/spongycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    .line 297
    :goto_0
    invoke-virtual {p2}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getSignature()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p2

    invoke-virtual {p2}, Lorg/spongycastle/asn1/DERBitString;->getOctets()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/spongycastle/operator/ContentVerifier;->verify([B)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 285
    new-instance p2, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to create verifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getCertTemplate()Lorg/spongycastle/asn1/crmf/CertTemplate;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/spongycastle/asn1/crmf/CertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertRequest;->getCertTemplate()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getControl(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/cert/crmf/Control;
    .locals 2

    .line 121
    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->findControl(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 125
    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiArchiveOptions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lorg/spongycastle/cert/crmf/PKIArchiveControl;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/cert/crmf/PKIArchiveControl;-><init>(Lorg/spongycastle/asn1/crmf/PKIArchiveOptions;)V

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_regToken:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Lorg/spongycastle/cert/crmf/RegTokenControl;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/cert/crmf/RegTokenControl;-><init>(Lorg/spongycastle/asn1/DERUTF8String;)V

    return-object v0

    .line 133
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_authenticator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Lorg/spongycastle/cert/crmf/AuthenticatorControl;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/cert/crmf/AuthenticatorControl;-><init>(Lorg/spongycastle/asn1/DERUTF8String;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getProofOfPossessionType()I
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v0

    return v0
.end method

.method public hasControl(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->findControl(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasControls()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/spongycastle/asn1/crmf/Controls;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProofOfPossession()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSigningKeyProofOfPossessionWithPKMAC()Z
    .locals 4

    .line 192
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 196
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/spongycastle/asn1/crmf/PKMACValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public isValidSigningKeyPOP(Lorg/spongycastle/operator/ContentVerifierProvider;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/crmf/CRMFException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 219
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/spongycastle/asn1/crmf/PKMACValue;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "verification requires password check"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->verifySignature(Lorg/spongycastle/operator/ContentVerifierProvider;Lorg/spongycastle/asn1/crmf/POPOSigningKey;)Z

    move-result p1

    return p1

    .line 230
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not Signing Key type of proof of possession"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValidSigningKeyPOP(Lorg/spongycastle/operator/ContentVerifierProvider;Lorg/spongycastle/cert/crmf/PKMACBuilder;[C)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/crmf/CRMFException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 251
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;->getSender()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 258
    invoke-virtual {v0}, Lorg/spongycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/spongycastle/asn1/crmf/PKMACValue;

    move-result-object v1

    .line 259
    new-instance v2, Lorg/spongycastle/cert/crmf/PKMACValueVerifier;

    invoke-direct {v2, p2}, Lorg/spongycastle/cert/crmf/PKMACValueVerifier;-><init>(Lorg/spongycastle/cert/crmf/PKMACBuilder;)V

    .line 261
    invoke-virtual {p0}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->getCertTemplate()Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object p2

    invoke-virtual {p2}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p2

    invoke-virtual {v2, v1, p3, p2}, Lorg/spongycastle/cert/crmf/PKMACValueVerifier;->isValid(Lorg/spongycastle/asn1/crmf/PKMACValue;[CLorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 263
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->verifySignature(Lorg/spongycastle/operator/ContentVerifierProvider;Lorg/spongycastle/asn1/crmf/POPOSigningKey;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 255
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no PKMAC present in proof of possession"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not Signing Key type of proof of possession"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/crmf/CertReqMsg;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/spongycastle/asn1/crmf/CertReqMsg;

    return-object v0
.end method
