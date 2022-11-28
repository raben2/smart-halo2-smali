.class public Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SPHINCS256KeyParams.java"


# instance fields
.field private final treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private final version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;->version:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;->treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 20
    iput-object p1, p0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;->treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public static final getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;
    .locals 1

    .line 31
    instance-of v0, p0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getTreeDigest()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;->treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 50
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 52
    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 53
    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/SPHINCS256KeyParams;->treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 55
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
