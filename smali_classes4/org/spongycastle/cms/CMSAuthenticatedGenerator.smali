.class public Lorg/spongycastle/cms/CMSAuthenticatedGenerator;
.super Lorg/spongycastle/cms/CMSEnvelopedGenerator;
.source "CMSAuthenticatedGenerator.java"


# instance fields
.field protected authGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

.field protected unauthGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/spongycastle/cms/CMSEnvelopedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBaseParameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .locals 2

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "contentType"

    .line 36
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "digestAlgID"

    .line 37
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "digest"

    .line 38
    invoke-static {p4}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "macAlgID"

    .line 39
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public setAuthenticatedAttributeGenerator(Lorg/spongycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/spongycastle/cms/CMSAuthenticatedGenerator;->authGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

.method public setUnauthenticatedAttributeGenerator(Lorg/spongycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/spongycastle/cms/CMSAuthenticatedGenerator;->unauthGen:Lorg/spongycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method
