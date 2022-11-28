.class public Lorg/spongycastle/asn1/cmc/CMCUnsignedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CMCUnsignedData.java"


# instance fields
.field private final bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

.field private final content:Lorg/spongycastle/asn1/ASN1Encodable;

.field private final identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartPath;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartPath;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x2

    .line 44
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartPath;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    .line 32
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCUnsignedData;
    .locals 1

    .line 49
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBodyPartPath()Lorg/spongycastle/asn1/cmc/BodyPartPath;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    return-object v0
.end method

.method public getContent()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 66
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 67
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 68
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 70
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
