.class public abstract Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;
.super Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;
.source "PublicKeyKeyEncryptionMethodGenerator.java"


# instance fields
.field private pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    .line 22
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown asymmetric algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use ECDSA for encryption."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :pswitch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use DSA for encryption."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use an RSA_SIGN key for encryption."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private convertToEncodedMPI([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 86
    :try_start_0
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MPI encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method protected abstract encryptSessionInfo(Lorg/spongycastle/openpgp/PGPPublicKey;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation
.end method

.method public generate(I[B)Lorg/spongycastle/bcpg/ContainedPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 97
    new-instance p1, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0, v3, p2}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->encryptSessionInfo(Lorg/spongycastle/openpgp/PGPPublicKey;[B)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->processSessionInfo([B)[[B

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;-><init>(JI[[B)V

    return-object p1
.end method

.method public processSessionInfo([B)[[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown asymmetric algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :pswitch_0
    new-array v0, v2, [[B

    .line 55
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object p1

    aput-object p1, v0, v3

    goto :goto_0

    .line 70
    :cond_0
    new-array v0, v2, [[B

    aput-object p1, v0, v3

    goto :goto_0

    .line 59
    :cond_1
    array-length v0, p1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    .line 60
    array-length v4, p1

    div-int/2addr v4, v1

    new-array v4, v4, [B

    .line 62
    array-length v5, v0

    invoke-static {p1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    array-length v5, v0

    array-length v6, v4

    invoke-static {p1, v5, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    new-array p1, v1, [[B

    .line 66
    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object v0

    aput-object v0, p1, v3

    .line 67
    invoke-direct {p0, v4}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object v0

    aput-object v0, p1, v2

    move-object v0, p1

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
