.class public Lorg/spongycastle/asn1/esf/CrlOcspRef;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CrlOcspRef.java"


# instance fields
.field private crlids:Lorg/spongycastle/asn1/esf/CrlListID;

.field private ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

.field private otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 50
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :pswitch_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/esf/OtherRevRefs;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/OtherRevRefs;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/esf/OcspListID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/OcspListID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/esf/CrlListID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CrlListID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/spongycastle/asn1/esf/CrlListID;

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/esf/CrlListID;Lorg/spongycastle/asn1/esf/OcspListID;Lorg/spongycastle/asn1/esf/OtherRevRefs;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/spongycastle/asn1/esf/CrlListID;

    .line 71
    iput-object p2, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

    .line 72
    iput-object p3, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CrlOcspRef;
    .locals 1

    .line 32
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/esf/CrlOcspRef;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/esf/CrlOcspRef;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCrlids()Lorg/spongycastle/asn1/esf/CrlListID;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/spongycastle/asn1/esf/CrlListID;

    return-object v0
.end method

.method public getOcspids()Lorg/spongycastle/asn1/esf/OcspListID;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

    return-object v0
.end method

.method public getOtherRev()Lorg/spongycastle/asn1/esf/OtherRevRefs;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 92
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 93
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/spongycastle/asn1/esf/CrlListID;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 95
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/spongycastle/asn1/esf/CrlListID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

    if-eqz v1, :cond_1

    .line 99
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/esf/OcspListID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v3, v2, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    if-eqz v1, :cond_2

    .line 103
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-virtual {v1}, Lorg/spongycastle/asn1/esf/OtherRevRefs;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 105
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
