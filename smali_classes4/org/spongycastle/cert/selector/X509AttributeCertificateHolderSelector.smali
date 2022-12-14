.class public Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;
.super Ljava/lang/Object;
.source "X509AttributeCertificateHolderSelector.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private final attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

.field private final attributeCertificateValid:Ljava/util/Date;

.field private final holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

.field private final issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

.field private final serialNumber:Ljava/math/BigInteger;

.field private final targetGroups:Ljava/util/Collection;

.field private final targetNames:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/spongycastle/cert/AttributeCertificateHolder;Lorg/spongycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/spongycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

    .line 51
    iput-object p2, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

    .line 52
    iput-object p3, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    .line 53
    iput-object p4, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    .line 54
    iput-object p5, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    .line 55
    iput-object p6, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    .line 56
    iput-object p7, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 9

    .line 184
    new-instance v8, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;

    iget-object v1, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

    iget-object v2, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

    iget-object v3, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    iget-object v5, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    iget-object v6, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    iget-object v7, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;-><init>(Lorg/spongycastle/cert/AttributeCertificateHolder;Lorg/spongycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/spongycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v8
.end method

.method public getAttributeCert()Lorg/spongycastle/cert/X509AttributeCertificateHolder;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    return-object v0
.end method

.method public getAttributeCertificateValid()Ljava/util/Date;
    .locals 4

    .line 207
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 209
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHolder()Lorg/spongycastle/cert/AttributeCertificateHolder;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

    return-object v0
.end method

.method public getIssuer()Lorg/spongycastle/cert/AttributeCertificateIssuer;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTargetGroups()Ljava/util/Collection;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/Collection;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 8

    .line 68
    instance-of v0, p1, Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    check-cast p1, Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    .line 75
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCert:Lorg/spongycastle/cert/X509AttributeCertificateHolder;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 82
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p1}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 89
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p1}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->getHolder()Lorg/spongycastle/cert/AttributeCertificateHolder;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->holder:Lorg/spongycastle/cert/AttributeCertificateHolder;

    invoke-virtual {v0, v2}, Lorg/spongycastle/cert/AttributeCertificateHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 96
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {p1}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->getIssuer()Lorg/spongycastle/cert/AttributeCertificateIssuer;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->issuer:Lorg/spongycastle/cert/AttributeCertificateIssuer;

    invoke-virtual {v0, v2}, Lorg/spongycastle/cert/AttributeCertificateIssuer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 104
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->attributeCertificateValid:Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p1, v0}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 111
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 113
    :cond_6
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->targetInformation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/cert/X509AttributeCertificateHolder;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Extension;->getParsedValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TargetInformation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/TargetInformation;->getTargetsObjects()[Lorg/spongycastle/asn1/x509/Targets;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 130
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_9

    .line 132
    aget-object v4, p1, v0

    .line 133
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Targets;->getTargets()[Lorg/spongycastle/asn1/x509/Target;

    move-result-object v4

    const/4 v5, 0x0

    .line 134
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_8

    .line 136
    iget-object v6, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetNames:Ljava/util/Collection;

    aget-object v7, v4, v5

    .line 137
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Target;->getTargetName()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v7

    .line 136
    invoke-static {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-nez v3, :cond_a

    return v1

    .line 149
    :cond_a
    iget-object v0, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 153
    :goto_3
    array-length v4, p1

    if-ge v0, v4, :cond_d

    .line 155
    aget-object v4, p1, v0

    .line 156
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Targets;->getTargets()[Lorg/spongycastle/asn1/x509/Target;

    move-result-object v4

    const/4 v5, 0x0

    .line 157
    :goto_4
    array-length v6, v4

    if-ge v5, v6, :cond_c

    .line 159
    iget-object v6, p0, Lorg/spongycastle/cert/selector/X509AttributeCertificateHolderSelector;->targetGroups:Ljava/util/Collection;

    aget-object v7, v4, v5

    .line 160
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Target;->getTargetGroup()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v7

    .line 159
    invoke-static {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    if-nez v3, :cond_e

    return v1

    :catch_0
    return v1

    :cond_e
    return v2
.end method
