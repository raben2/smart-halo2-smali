.class Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;
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

    .line 18
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->ANONYMOUS_SENDER:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->digCalc:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    .line 26
    iput p2, p0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->keyAlgorithm:I

    return-void
.end method

.method private static KDF(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/math/ec/ECPoint;I[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object p1

    .line 61
    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 64
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x1

    .line 66
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 67
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 68
    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p0

    .line 72
    new-array p1, p2, [B

    .line 74
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

    .line 91
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
.method public createKey(Lorg/spongycastle/math/ec/ECPoint;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 35
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->digCalc:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    iget v1, p0, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->keyAlgorithm:I

    invoke-static {v1}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->getKeyLen(I)I

    move-result v1

    invoke-static {v0, p1, v1, p2}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->KDF(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/math/ec/ECPoint;I[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception performing KDF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
