.class public Lorg/spongycastle/asn1/esf/SignerLocation;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SignerLocation.java"


# instance fields
.field private countryName:Lorg/spongycastle/asn1/x500/DirectoryString;

.field private localityName:Lorg/spongycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 39
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 43
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :pswitch_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/spongycastle/asn1/ASN1Sequence;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 60
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    goto :goto_0

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "postal address must contain less than 6 strings"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :pswitch_1
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->localityName:Lorg/spongycastle/asn1/x500/DirectoryString;

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->countryName:Lorg/spongycastle/asn1/x500/DirectoryString;

    goto :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERUTF8String;Lorg/spongycastle/asn1/DERUTF8String;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 99
    invoke-static {p1}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object p1

    invoke-static {p2}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/esf/SignerLocation;-><init>(Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p3, :cond_1

    .line 76
    invoke-virtual {p3}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "postal address must contain less than 6 strings"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->countryName:Lorg/spongycastle/asn1/x500/DirectoryString;

    .line 82
    iput-object p2, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->localityName:Lorg/spongycastle/asn1/x500/DirectoryString;

    .line 83
    iput-object p3, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/spongycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/x500/DirectoryString;[Lorg/spongycastle/asn1/x500/DirectoryString;)V
    .locals 1

    .line 91
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/esf/SignerLocation;-><init>(Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/SignerLocation;
    .locals 1

    if-eqz p0, :cond_1

    .line 105
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/esf/SignerLocation;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/esf/SignerLocation;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 107
    :cond_1
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/esf/SignerLocation;

    return-object p0
.end method


# virtual methods
.method public getCountry()Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->countryName:Lorg/spongycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getCountryName()Lorg/spongycastle/asn1/DERUTF8String;
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->countryName:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/esf/SignerLocation;->getCountry()Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLocality()Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->localityName:Lorg/spongycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getLocalityName()Lorg/spongycastle/asn1/DERUTF8String;
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->localityName:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/esf/SignerLocation;->getLocality()Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPostal()[Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/x500/DirectoryString;

    const/4 v1, 0x0

    .line 146
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 148
    iget-object v2, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPostalAddress()Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 202
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 204
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->countryName:Lorg/spongycastle/asn1/x500/DirectoryString;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 206
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 209
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->localityName:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_1

    .line 211
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 214
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 216
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 219
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
