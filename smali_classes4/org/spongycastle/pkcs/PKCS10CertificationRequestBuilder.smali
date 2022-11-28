.class public Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;
.super Ljava/lang/Object;
.source "PKCS10CertificationRequestBuilder.java"


# instance fields
.field private attributes:Ljava/util/List;

.field private leaveOffEmpty:Z

.field private publicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field private subject:Lorg/spongycastle/asn1/x500/X500Name;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->leaveOffEmpty:Z

    .line 61
    iput-object p1, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    .line 62
    iput-object p2, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->publicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    new-instance v1, Lorg/spongycastle/asn1/pkcs/Attribute;

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, p1, v2}, Lorg/spongycastle/asn1/pkcs/Attribute;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;
    .locals 3

    .line 88
    iget-object v0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    new-instance v1, Lorg/spongycastle/asn1/pkcs/Attribute;

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lorg/spongycastle/asn1/DERSet;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, p1, v2}, Lorg/spongycastle/asn1/pkcs/Attribute;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/pkcs/PKCS10CertificationRequest;
    .locals 5

    .line 118
    iget-object v0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-boolean v0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->leaveOffEmpty:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    iget-object v1, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->publicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/asn1/ASN1Set;)V

    goto :goto_1

    .line 126
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    iget-object v1, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->publicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v3, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v3}, Lorg/spongycastle/asn1/DERSet;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/asn1/ASN1Set;)V

    goto :goto_1

    .line 131
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    iget-object v1, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Attribute;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 138
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    iget-object v2, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    iget-object v3, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->publicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/asn1/ASN1Set;)V

    move-object v0, v1

    .line 143
    :goto_1
    :try_start_0
    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "DER"

    .line 145
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 147
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 149
    new-instance v1, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;

    new-instance v2, Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    new-instance v4, Lorg/spongycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentSigner;->getSignature()[B

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {v2, v0, v3, v4}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;-><init>(Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;-><init>(Lorg/spongycastle/asn1/pkcs/CertificationRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 153
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot produce certification request signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLeaveOffEmptyAttributes(Z)Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;->leaveOffEmpty:Z

    return-object p0
.end method
