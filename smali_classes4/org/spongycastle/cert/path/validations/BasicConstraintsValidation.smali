.class public Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;
.super Ljava/lang/Object;
.source "BasicConstraintsValidation.java"

# interfaces
.implements Lorg/spongycastle/cert/path/CertPathValidation;


# instance fields
.field private bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

.field private isMandatory:Z

.field private maxPathLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 2

    .line 87
    new-instance v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;

    iget-boolean v1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;-><init>(Z)V

    .line 89
    iget-object v1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    iput-object v1, v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    .line 90
    iget v1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    iput v1, v0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    return-object v0
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 1

    .line 97
    check-cast p1, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;

    .line 99
    iget-boolean v0, p1, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean v0, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    .line 100
    iget-object v0, p1, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    iput-object v0, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    .line 101
    iget p1, p1, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    iput p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    return-void
.end method

.method public validate(Lorg/spongycastle/cert/path/CertPathValidationContext;Lorg/spongycastle/cert/X509CertificateHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    .line 33
    iget v0, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    if-ltz v0, :cond_5

    .line 38
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->basicConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 40
    invoke-virtual {p2}, Lorg/spongycastle/cert/X509CertificateHolder;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    iget-object p2, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 48
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 52
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    .line 54
    iget v0, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    if-ge p2, v0, :cond_2

    .line 56
    iput p2, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    .line 57
    iput-object p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    goto :goto_0

    .line 64
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    .line 65
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 67
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    if-eqz p1, :cond_2

    .line 75
    iget p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:I

    .line 79
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/spongycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/spongycastle/asn1/x509/BasicConstraints;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    new-instance p1, Lorg/spongycastle/cert/path/CertPathValidationException;

    const-string p2, "BasicConstraints not present in path"

    invoke-direct {p1, p2}, Lorg/spongycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void

    .line 35
    :cond_5
    new-instance p1, Lorg/spongycastle/cert/path/CertPathValidationException;

    const-string p2, "BasicConstraints path length exceeded"

    invoke-direct {p1, p2}, Lorg/spongycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
