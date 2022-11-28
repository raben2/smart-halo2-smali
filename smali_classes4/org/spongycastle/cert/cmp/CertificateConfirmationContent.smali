.class public Lorg/spongycastle/cert/cmp/CertificateConfirmationContent;
.super Ljava/lang/Object;
.source "CertificateConfirmationContent.java"


# instance fields
.field private content:Lorg/spongycastle/asn1/cmp/CertConfirmContent;

.field private digestAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cmp/CertConfirmContent;)V
    .locals 1

    .line 15
    new-instance v0, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/cert/cmp/CertificateConfirmationContent;-><init>(Lorg/spongycastle/asn1/cmp/CertConfirmContent;Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/CertConfirmContent;Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lorg/spongycastle/cert/cmp/CertificateConfirmationContent;->digestAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 21
    iput-object p1, p0, Lorg/spongycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/spongycastle/asn1/cmp/CertConfirmContent;

    return-void
.end method


# virtual methods
.method public getStatusMessages()[Lorg/spongycastle/cert/cmp/CertificateStatus;
    .locals 6

    .line 31
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/spongycastle/asn1/cmp/CertConfirmContent;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmp/CertConfirmContent;->toCertStatusArray()[Lorg/spongycastle/asn1/cmp/CertStatus;

    move-result-object v0

    .line 32
    array-length v1, v0

    new-array v1, v1, [Lorg/spongycastle/cert/cmp/CertificateStatus;

    const/4 v2, 0x0

    .line 34
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 36
    new-instance v3, Lorg/spongycastle/cert/cmp/CertificateStatus;

    iget-object v4, p0, Lorg/spongycastle/cert/cmp/CertificateConfirmationContent;->digestAlgFinder:Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;

    aget-object v5, v0, v2

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/cert/cmp/CertificateStatus;-><init>(Lorg/spongycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/spongycastle/asn1/cmp/CertStatus;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/cmp/CertConfirmContent;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/spongycastle/cert/cmp/CertificateConfirmationContent;->content:Lorg/spongycastle/asn1/cmp/CertConfirmContent;

    return-object v0
.end method
