.class public Lorg/spongycastle/asn1/cmc/BodyPartReference;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "BodyPartReference.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private final bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

.field private final bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartID;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartPath;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 36
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartReference;
    .locals 3

    .line 42
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;

    return-object p0

    :cond_0
    if-eqz p0, :cond_4

    .line 49
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    .line 51
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 53
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 55
    new-instance p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cmc/BodyPartReference;-><init>(Lorg/spongycastle/asn1/cmc/BodyPartID;)V

    return-object p0

    .line 57
    :cond_1
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 59
    new-instance p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartPath;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartPath;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cmc/BodyPartReference;-><init>(Lorg/spongycastle/asn1/cmc/BodyPartPath;)V

    return-object p0

    .line 62
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 66
    :try_start_0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cmc/BodyPartReference;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartReference;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 70
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown encoding in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBodyPartID()Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    return-object v0
.end method

.method public getBodyPartPath()Lorg/spongycastle/asn1/cmc/BodyPartPath;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    return-object v0
.end method

.method public isBodyPartID()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmc/BodyPartID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmc/BodyPartPath;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
