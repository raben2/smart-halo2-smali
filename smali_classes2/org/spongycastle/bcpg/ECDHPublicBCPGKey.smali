.class public Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;
.super Lorg/spongycastle/bcpg/ECPublicBCPGKey;
.source "ECDHPublicBCPGKey.java"


# instance fields
.field private hashFunctionId:B

.field private reserved:B

.field private symAlgorithmId:B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;)V

    const/4 p1, 0x1

    .line 52
    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    int-to-byte p1, p3

    .line 53
    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    int-to-byte p1, p4

    .line 54
    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    .line 56
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->verifyHashAlgorithm()V

    .line 57
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->verifySymmetricKeyAlgorithm()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    .line 27
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    .line 28
    new-array v0, v0, [B

    .line 29
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 34
    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    const/4 p1, 0x0

    .line 36
    aget-byte p1, v0, p1

    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    const/4 p1, 0x1

    .line 37
    aget-byte p1, v0, p1

    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    const/4 p1, 0x2

    .line 38
    aget-byte p1, v0, p1

    iput-byte p1, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    .line 40
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->verifyHashAlgorithm()V

    .line 41
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->verifySymmetricKeyAlgorithm()V

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "kdf parameters size of 3 expected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyHashAlgorithm()V
    .locals 2

    .line 88
    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hash algorithm must be SHA-256 or stronger."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private verifySymmetricKeyAlgorithm()V
    .locals 2

    .line 102
    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Symmetric key algorithm must be AES-128 or stronger."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lorg/spongycastle/bcpg/ECPublicBCPGKey;->encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V

    const/4 v0, 0x3

    .line 80
    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 81
    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 82
    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 83
    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    return-void
.end method

.method public getHashAlgorithm()B
    .locals 1

    .line 67
    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->hashFunctionId:B

    return v0
.end method

.method public getReserved()B
    .locals 1

    .line 62
    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->reserved:B

    return v0
.end method

.method public getSymmetricKeyAlgorithm()B
    .locals 1

    .line 72
    iget-byte v0, p0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->symAlgorithmId:B

    return v0
.end method
