.class public Lorg/spongycastle/asn1/x509/NameConstraints;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "NameConstraints.java"


# instance fields
.field private excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

.field private permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :pswitch_0
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->createArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->createArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/GeneralSubtree;[Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 67
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 68
    invoke-static {p2}, Lorg/spongycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    return-void
.end method

.method private static cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 3

    if-eqz p0, :cond_0

    .line 118
    array-length v0, p0

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 120
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 3

    .line 73
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/GeneralSubtree;

    const/4 v1, 0x0

    .line 75
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 77
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;
    .locals 1

    .line 20
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lorg/spongycastle/asn1/x509/NameConstraints;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/NameConstraints;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getExcludedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public getPermittedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .line 99
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 101
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 103
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v2, v2, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_1

    .line 108
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v2, v4, v5}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
