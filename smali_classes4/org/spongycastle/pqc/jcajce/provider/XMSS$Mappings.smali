.class public Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;
.super Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "XMSS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/XMSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 14

    const-string v0, "KeyFactory.XMSS"

    const-string v1, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSKeyFactorySpi"

    .line 23
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.XMSS"

    const-string v1, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSKeyPairGeneratorSpi"

    .line 24
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SHA256"

    const-string v5, "XMSS"

    const-string v6, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256"

    .line 26
    sget-object v7, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v10, "SHAKE128"

    const-string v11, "XMSS"

    const-string v12, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128"

    .line 27
    sget-object v13, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHAKE128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "SHA512"

    const-string v3, "XMSS"

    const-string v4, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512"

    .line 28
    sget-object v5, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v8, "SHAKE256"

    const-string v9, "XMSS"

    const-string v10, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256"

    .line 29
    sget-object v11, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHAKE256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "KeyFactory.XMSSMT"

    const-string v1, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSMTKeyFactorySpi"

    .line 31
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.XMSSMT"

    const-string v1, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSMTKeyPairGeneratorSpi"

    .line 32
    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SHA256"

    const-string v5, "XMSSMT"

    const-string v6, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256"

    .line 34
    sget-object v7, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v10, "SHAKE128"

    const-string v11, "XMSSMT"

    const-string v12, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128"

    .line 35
    sget-object v13, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHAKE128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "SHA512"

    const-string v3, "XMSSMT"

    const-string v4, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512"

    .line 36
    sget-object v5, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v8, "SHAKE256"

    const-string v9, "XMSSMT"

    const-string v10, "org.spongycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256"

    .line 37
    sget-object v11, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHAKE256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 39
    sget-object v0, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "XMSS"

    new-instance v2, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    invoke-direct {v2}, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 40
    sget-object v0, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "XMSSMT"

    new-instance v2, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    invoke-direct {v2}, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/pqc/jcajce/provider/XMSS$Mappings;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
