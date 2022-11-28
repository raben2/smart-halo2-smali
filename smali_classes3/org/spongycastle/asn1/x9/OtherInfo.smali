.class public Lorg/spongycastle/asn1/x9/OtherInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OtherInfo.java"


# instance fields
.field private keyInfo:Lorg/spongycastle/asn1/x9/KeySpecificInfo;

.field private partyAInfo:Lorg/spongycastle/asn1/ASN1OctetString;

.field private suppPubInfo:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/KeySpecificInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/spongycastle/asn1/x9/KeySpecificInfo;

    .line 69
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 73
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 79
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x9/KeySpecificInfo;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/spongycastle/asn1/x9/KeySpecificInfo;

    .line 38
    iput-object p2, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 39
    iput-object p3, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/OtherInfo;
    .locals 1

    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/x9/OtherInfo;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lorg/spongycastle/asn1/x9/OtherInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x9/OtherInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x9/OtherInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getKeyInfo()Lorg/spongycastle/asn1/x9/KeySpecificInfo;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/spongycastle/asn1/x9/KeySpecificInfo;

    return-object v0
.end method

.method public getPartyAInfo()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSuppPubInfo()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 121
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 123
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/spongycastle/asn1/x9/KeySpecificInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 127
    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 130
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
