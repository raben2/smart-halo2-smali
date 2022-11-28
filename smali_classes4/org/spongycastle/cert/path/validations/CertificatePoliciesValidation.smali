.class public Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;
.super Ljava/lang/Object;
.source "CertificatePoliciesValidation.java"

# interfaces
.implements Lorg/spongycastle/cert/path/CertPathValidation;


# instance fields
.field private explicitPolicy:I

.field private inhibitAnyPolicy:I

.field private policyMapping:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(IZZZ)V

    return-void
.end method

.method constructor <init>(IZZZ)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 34
    iput v0, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 38
    iput p2, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    :goto_0
    if-eqz p3, :cond_1

    .line 46
    iput v0, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p1, 0x1

    .line 50
    iput p2, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    :goto_1
    if-eqz p4, :cond_2

    .line 58
    iput v0, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 62
    iput p1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    :goto_2
    return-void
.end method

.method private countDown(I)I
    .locals 0

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 2

    .line 139
    new-instance v0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(I)V

    return-object v0
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 0

    .line 144
    check-cast p1, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;

    return-void
.end method

.method public validate(Lorg/spongycastle/cert/path/CertPathValidationContext;Lorg/spongycastle/cert/X509CertificateHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    .line 69
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->policyConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 70
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 72
    invoke-virtual {p1}, Lorg/spongycastle/cert/path/CertPathValidationContext;->isEndEntity()Z

    move-result p1

    if-nez p1, :cond_2

    .line 74
    invoke-static {p2}, Lorg/spongycastle/cert/path/validations/ValidationUtils;->isSelfIssued(Lorg/spongycastle/cert/X509CertificateHolder;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 79
    iget p1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->countDown(I)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    .line 80
    iget p1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->countDown(I)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    .line 81
    iget p1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->countDown(I)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    .line 86
    invoke-virtual {p2}, Lorg/spongycastle/cert/X509CertificateHolder;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x509/PolicyConstraints;->fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/PolicyConstraints;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/PolicyConstraints;->getRequireExplicitPolicyMapping()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iget v2, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    if-ge v1, v2, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    .line 99
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/PolicyConstraints;->getInhibitPolicyMapping()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    if-ge v0, v1, :cond_1

    .line 104
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    .line 112
    :cond_1
    sget-object p1, Lorg/spongycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Extension;->getParsedValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    .line 118
    iget p2, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    if-ge p1, p2, :cond_2

    .line 120
    iput p1, p0, Lorg/spongycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    :cond_2
    return-void
.end method
