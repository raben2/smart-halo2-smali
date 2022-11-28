.class public Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TargetEtcChain.java"


# instance fields
.field private chain:Lorg/spongycastle/asn1/ASN1Sequence;

.field private pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

.field private target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    .line 63
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 65
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 66
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    .line 68
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->extractPathProcInput(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 73
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 75
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->extractPathProcInput(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    if-eqz p2, :cond_0

    .line 51
    new-instance p1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p1, p2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 54
    :cond_0
    iput-object p3, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    return-void
.end method

.method public static arrayFromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 3

    .line 172
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    const/4 v1, 0x0

    .line 174
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private extractPathProcInput(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 3

    .line 84
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-static {p1, v0}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/PathProcInput;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 1

    .line 97
    instance-of v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    if-eqz v0, :cond_0

    .line 99
    check-cast p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 103
    new-instance v0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 0

    .line 113
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getChain()[Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 159
    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->arrayFromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathProcInput()Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    return-object v0
.end method

.method public getTarget()Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 118
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 119
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    if-eqz v1, :cond_1

    .line 126
    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TargetEtcChain {\n"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    if-eqz v1, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pathProcInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "}\n"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
