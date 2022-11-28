.class public Lorg/spongycastle/asn1/cmc/CMCStatusInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CMCStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    }
.end annotation


# instance fields
.field private final bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

.field private final cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

.field private final otherInfo:Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

.field private final statusString:Lorg/spongycastle/asn1/DERUTF8String;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/CMCStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 54
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 56
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 57
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->access$000(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    .line 61
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 64
    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    goto :goto_0

    .line 68
    :cond_1
    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 69
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->access$000(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    goto :goto_0

    .line 74
    :cond_2
    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 75
    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    :goto_0
    return-void

    .line 49
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/spongycastle/asn1/cmc/CMCStatus;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/DERUTF8String;Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 40
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 41
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 42
    iput-object p4, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatusInfo;
    .locals 1

    .line 81
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;

    if-eqz v0, :cond_0

    .line 83
    check-cast p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 88
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBodyList()[Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/Utils;->toBodyPartIDArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    return-object v0
.end method

.method public getCMCStatus()Lorg/spongycastle/asn1/cmc/CMCStatus;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    return-object v0
.end method

.method public getOtherInfo()Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    return-object v0
.end method

.method public getStatusString()Lorg/spongycastle/asn1/DERUTF8String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public hasOtherInfo()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 96
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 97
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfo;->otherInfo:Lorg/spongycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
