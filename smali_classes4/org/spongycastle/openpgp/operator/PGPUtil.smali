.class Lorg/spongycastle/openpgp/operator/PGPUtil;
.super Ljava/lang/Object;
.source "PGPUtil.java"

# interfaces
.implements Lorg/spongycastle/bcpg/HashAlgorithmTags;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILorg/spongycastle/bcpg/S2K;[C)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    const/16 v0, 0x100

    const/16 v1, 0xc0

    const/16 v2, 0x80

    packed-switch p1, :pswitch_data_0

    .line 84
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown symmetric algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 v2, 0x100

    goto :goto_0

    :pswitch_1
    const/16 v2, 0xc0

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x100

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x100

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xc0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x40

    const/16 v2, 0x40

    goto :goto_0

    :pswitch_6
    const/16 v2, 0xc0

    .line 87
    :goto_0
    :pswitch_7
    invoke-static {p3}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p1

    add-int/lit8 v2, v2, 0x7

    .line 88
    div-int/lit8 v2, v2, 0x8

    new-array p3, v2, [B

    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p2}, Lorg/spongycastle/bcpg/S2K;->getHashAlgorithm()I

    move-result v0

    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "s2k/digestCalculator mismatch"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1
    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 108
    :goto_1
    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 112
    :goto_2
    :try_start_0
    array-length v4, p3

    if-ge v2, v4, :cond_a

    if-eqz p2, :cond_6

    const/4 v4, 0x0

    :goto_3
    if-eq v4, v3, :cond_2

    .line 118
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 121
    :cond_2
    invoke-virtual {p2}, Lorg/spongycastle/bcpg/S2K;->getIV()[B

    move-result-object v4

    .line 123
    invoke-virtual {p2}, Lorg/spongycastle/bcpg/S2K;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    packed-switch v5, :pswitch_data_1

    .line 165
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown S2K type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/spongycastle/bcpg/S2K;->getType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :pswitch_8
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    .line 126
    :pswitch_9
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    .line 133
    :cond_3
    invoke-virtual {p2}, Lorg/spongycastle/bcpg/S2K;->getIterationCount()J

    move-result-wide v5

    .line 134
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 135
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 137
    array-length v7, v4

    array-length v8, p1

    add-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    :goto_4
    cmp-long v9, v5, v7

    if-lez v9, :cond_8

    .line 141
    array-length v9, v4

    int-to-long v9, v9

    cmp-long v11, v5, v9

    if-gez v11, :cond_4

    long-to-int v6, v5

    .line 143
    invoke-virtual {v0, v4, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 148
    :cond_4
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 149
    array-length v9, v4

    int-to-long v9, v9

    sub-long/2addr v5, v9

    .line 152
    array-length v9, p1

    int-to-long v9, v9

    cmp-long v11, v5, v9

    if-gez v11, :cond_5

    long-to-int v6, v5

    .line 154
    invoke-virtual {v0, p1, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    move-wide v5, v7

    goto :goto_4

    .line 159
    :cond_5
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 160
    array-length v9, p1

    int-to-long v9, v9

    sub-long/2addr v5, v9

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-eq v4, v3, :cond_7

    .line 172
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 175
    :cond_7
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 178
    :cond_8
    :goto_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 180
    invoke-interface {p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v4

    .line 182
    array-length v5, v4

    array-length v6, p3

    sub-int/2addr v6, v2

    if-le v5, v6, :cond_9

    .line 184
    array-length v5, p3

    sub-int/2addr v5, v2

    invoke-static {v4, v1, p3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 188
    :cond_9
    array-length v5, v4

    invoke-static {v4, v1, p3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :goto_7
    array-length v4, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 p0, 0x0

    .line 201
    :goto_8
    array-length p2, p1

    if-eq p0, p2, :cond_b

    .line 203
    aput-byte v1, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_b
    return-object p3

    :catch_0
    move-exception p0

    .line 198
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception calculating digest: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 104
    :cond_c
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "digestCalculator not for MD5"

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;ILorg/spongycastle/bcpg/S2K;[C)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p2}, Lorg/spongycastle/bcpg/S2K;->getHashAlgorithm()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 224
    invoke-interface {p0, v0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object p0

    .line 227
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILorg/spongycastle/bcpg/S2K;[C)[B

    move-result-object p0

    return-object p0
.end method
