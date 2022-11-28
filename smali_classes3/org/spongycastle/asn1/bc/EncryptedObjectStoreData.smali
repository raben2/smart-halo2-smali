.class public Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "EncryptedObjectStoreData.java"


# instance fields
.field private final encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

.field private final encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 29
    new-instance p1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {p1, p2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p1, p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;
    .locals 1

    .line 40
    instance-of v0, p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEncryptedContent()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 66
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->encryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 67
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 69
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
