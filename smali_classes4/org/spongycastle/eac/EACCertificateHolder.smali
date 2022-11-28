.class public Lorg/spongycastle/eac/EACCertificateHolder;
.super Ljava/lang/Object;
.source "EACCertificateHolder.java"


# instance fields
.field private cvCertificate:Lorg/spongycastle/asn1/eac/CVCertificate;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/eac/CVCertificate;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/eac/EACCertificateHolder;->cvCertificate:Lorg/spongycastle/asn1/eac/CVCertificate;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lorg/spongycastle/eac/EACCertificateHolder;->parseBytes([B)Lorg/spongycastle/asn1/eac/CVCertificate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/eac/EACCertificateHolder;-><init>(Lorg/spongycastle/asn1/eac/CVCertificate;)V

    return-void
.end method

.method private static parseBytes([B)Lorg/spongycastle/asn1/eac/CVCertificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/asn1/eac/CVCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/CVCertificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/spongycastle/asn1/ASN1ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ParsingException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ParsingException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 39
    :cond_0
    new-instance v0, Lorg/spongycastle/eac/EACIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ParsingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 29
    new-instance v0, Lorg/spongycastle/eac/EACIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 25
    new-instance v0, Lorg/spongycastle/eac/EACIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/eac/EACIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getPublicKeyDataObject()Lorg/spongycastle/asn1/eac/PublicKeyDataObject;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/eac/EACCertificateHolder;->cvCertificate:Lorg/spongycastle/asn1/eac/CVCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CVCertificate;->getBody()Lorg/spongycastle/asn1/eac/CertificateBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getPublicKey()Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    move-result-object v0

    return-object v0
.end method

.method public isSignatureValid(Lorg/spongycastle/eac/operator/EACSignatureVerifier;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/eac/EACException;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-interface {p1}, Lorg/spongycastle/eac/operator/EACSignatureVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lorg/spongycastle/eac/EACCertificateHolder;->cvCertificate:Lorg/spongycastle/asn1/eac/CVCertificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/CVCertificate;->getBody()Lorg/spongycastle/asn1/eac/CertificateBody;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/eac/CertificateBody;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 79
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/eac/EACCertificateHolder;->cvCertificate:Lorg/spongycastle/asn1/eac/CVCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CVCertificate;->getSignature()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/eac/operator/EACSignatureVerifier;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Lorg/spongycastle/eac/EACException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/eac/CVCertificate;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/spongycastle/eac/EACCertificateHolder;->cvCertificate:Lorg/spongycastle/asn1/eac/CVCertificate;

    return-object v0
.end method
