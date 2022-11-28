.class public Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;
.super Ljava/io/InputStream;
.source "SignatureSubpacketInputStream.java"

# interfaces
.implements Lorg/spongycastle/bcpg/SignatureSubpacketTags;


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private checkData([BIILjava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    if-ne p3, p2, :cond_0

    const/4 p3, 0x0

    .line 161
    invoke-static {p1, p3, p2}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 158
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "truncated "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " subpacket data."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readPacket()Lorg/spongycastle/bcpg/SignatureSubpacket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/16 v5, 0xc0

    if-ge v0, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v6, 0xdf

    if-gt v0, v6, :cond_2

    add-int/lit16 v0, v0, -0xc0

    shl-int/2addr v0, v4

    .line 68
    iget-object v6, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int/2addr v0, v6

    add-int/2addr v0, v5

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v5, 0xff

    if-ne v0, v5, :cond_d

    .line 73
    iget-object v0, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v5, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    shl-int/2addr v5, v2

    or-int/2addr v0, v5

    iget-object v5, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    shl-int/2addr v5, v4

    or-int/2addr v0, v5

    iget-object v5, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    or-int/2addr v0, v5

    const/4 v5, 0x1

    .line 80
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_c

    sub-int/2addr v0, v3

    .line 87
    new-array v0, v0, [B

    .line 94
    iget-object v7, p0, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-static {v7, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v7

    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_3

    const/4 v1, 0x1

    :cond_3
    and-int/lit8 v3, v6, 0x7f

    .line 99
    array-length v6, v0

    const/16 v8, 0x9

    if-eq v7, v6, :cond_6

    const/4 v6, 0x4

    if-eq v3, v8, :cond_5

    if-eq v3, v2, :cond_4

    packed-switch v3, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "truncated subpacket data."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v4, "Signature Expiration Time"

    .line 113
    invoke-direct {p0, v0, v6, v7, v4}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const-string v4, "Signature Creation Time"

    .line 104
    invoke-direct {p0, v0, v6, v7, v4}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v6, "Issuer"

    .line 107
    invoke-direct {p0, v0, v4, v7, v6}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v4, "Signature Key Expiration Time"

    .line 110
    invoke-direct {p0, v0, v6, v7, v4}, Lorg/spongycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v0

    :cond_6
    :goto_1
    const/4 v4, 0x7

    if-eq v3, v4, :cond_b

    if-eq v3, v8, :cond_a

    const/16 v4, 0xb

    if-eq v3, v4, :cond_9

    if-eq v3, v2, :cond_8

    const/16 v2, 0x19

    if-eq v3, v2, :cond_7

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    .line 150
    new-instance v2, Lorg/spongycastle/bcpg/SignatureSubpacket;

    invoke-direct {v2, v3, v1, v5, v0}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-object v2

    .line 145
    :pswitch_2
    new-instance v2, Lorg/spongycastle/bcpg/sig/SignerUserID;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/SignerUserID;-><init>(ZZ[B)V

    return-object v2

    .line 141
    :pswitch_3
    new-instance v2, Lorg/spongycastle/bcpg/sig/KeyFlags;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/KeyFlags;-><init>(ZZ[B)V

    return-object v2

    .line 147
    :pswitch_4
    new-instance v2, Lorg/spongycastle/bcpg/sig/NotationData;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/NotationData;-><init>(ZZ[B)V

    return-object v2

    .line 135
    :pswitch_5
    new-instance v2, Lorg/spongycastle/bcpg/sig/TrustSignature;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/TrustSignature;-><init>(ZZ[B)V

    return-object v2

    .line 131
    :pswitch_6
    new-instance v2, Lorg/spongycastle/bcpg/sig/Exportable;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/Exportable;-><init>(ZZ[B)V

    return-object v2

    .line 127
    :pswitch_7
    new-instance v2, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;-><init>(ZZ[B)V

    return-object v2

    .line 123
    :pswitch_8
    new-instance v2, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/SignatureCreationTime;-><init>(ZZ[B)V

    return-object v2

    .line 143
    :cond_7
    new-instance v2, Lorg/spongycastle/bcpg/sig/PrimaryUserID;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/PrimaryUserID;-><init>(ZZ[B)V

    return-object v2

    .line 133
    :cond_8
    new-instance v2, Lorg/spongycastle/bcpg/sig/IssuerKeyID;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/IssuerKeyID;-><init>(ZZ[B)V

    return-object v2

    .line 139
    :cond_9
    :pswitch_9
    new-instance v2, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;

    invoke-direct {v2, v3, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/PreferredAlgorithms;-><init>(IZZ[B)V

    return-object v2

    .line 125
    :cond_a
    new-instance v2, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/KeyExpirationTime;-><init>(ZZ[B)V

    return-object v2

    .line 129
    :cond_b
    new-instance v2, Lorg/spongycastle/bcpg/sig/Revocable;

    invoke-direct {v2, v1, v5, v0}, Lorg/spongycastle/bcpg/sig/Revocable;-><init>(ZZ[B)V

    return-object v2

    .line 84
    :cond_c
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "unexpected EOF reading signature sub packet"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected length header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_4
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1b
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
