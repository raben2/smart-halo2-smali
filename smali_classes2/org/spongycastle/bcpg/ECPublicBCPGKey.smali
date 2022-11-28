.class public abstract Lorg/spongycastle/bcpg/ECPublicBCPGKey;
.super Lorg/spongycastle/bcpg/BCPGObject;
.source "ECPublicBCPGKey.java"

# interfaces
.implements Lorg/spongycastle/bcpg/BCPGKey;


# instance fields
.field oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field point:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    .line 44
    iput-object p2, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    .line 45
    iput-object p1, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    .line 35
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    .line 36
    iput-object p1, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    .line 27
    invoke-static {p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->readBytesOfEncodedLength(Lorg/spongycastle/bcpg/BCPGInputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    return-void
.end method

.method protected static readBytesOfEncodedLength(Lorg/spongycastle/bcpg/BCPGInputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    .line 112
    new-array v1, v1, [B

    .line 113
    array-length v2, v1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v3, v2}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([BII)V

    const/4 p0, 0x0

    const/4 v2, 0x6

    .line 114
    aput-byte v2, v1, p0

    const/4 p0, 0x1

    int-to-byte v0, v0

    .line 115
    aput-byte v0, v1, p0

    return-object v1

    .line 109
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "future extensions not yet implemented."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getEncoded()[B

    move-result-object v0

    .line 80
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write([BII)V

    .line 82
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    iget-object v1, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    .line 83
    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 67
    :try_start_0
    invoke-super {p0}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedPoint()Ljava/math/BigInteger;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PGP"

    return-object v0
.end method
