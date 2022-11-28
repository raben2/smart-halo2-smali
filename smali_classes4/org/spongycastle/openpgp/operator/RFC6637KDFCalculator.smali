.class public Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;
.super Ljava/lang/Object;
.source "RFC6637KDFCalculator.java"


# static fields
.field private static final ANONYMOUS_SENDER:[B


# instance fields
.field private final digCalc:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

.field private final keyAlgorithm:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "416E6F6E796D6F75732053656E64657220202020"

    .line 21
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->ANONYMOUS_SENDER:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->digCalc:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    .line 29
    iput p2, p0, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->keyAlgorithm:I

    return-void
.end method

.method private static KDF(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/math/ec/ECPoint;I[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object p1

    .line 83
    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 86
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 87
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x1

    .line 88
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 89
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 90
    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 92
    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p0

    .line 94
    new-array p1, p2, [B

    .line 96
    array-length p2, p1

    invoke-static {p0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static getKeyLen(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 113
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown symmetric algorithm ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x20

    return p0

    :pswitch_1
    const/16 p0, 0x18

    return p0

    :pswitch_2
    const/16 p0, 0x10

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createKey(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 44
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getEncoded()[B

    move-result-object p1

    .line 48
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 p1, 0x12

    .line 49
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p1, 0x3

    .line 50
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 51
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->digCalc:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {p1}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    iget p1, p0, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->keyAlgorithm:I

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 54
    sget-object p1, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->ANONYMOUS_SENDER:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 55
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 57
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->digCalc:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    iget p3, p0, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->keyAlgorithm:I

    invoke-static {p3}, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->getKeyLen(I)I

    move-result p3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lorg/spongycastle/openpgp/operator/RFC6637KDFCalculator;->KDF(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/math/ec/ECPoint;I[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception performing KDF: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
