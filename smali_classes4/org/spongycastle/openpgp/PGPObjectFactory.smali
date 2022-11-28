.class public Lorg/spongycastle/openpgp/PGPObjectFactory;
.super Ljava/lang/Object;
.source "PGPObjectFactory.java"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# instance fields
.field private fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

.field private in:Lorg/spongycastle/bcpg/BCPGInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    .line 56
    iput-object p2, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1

    .line 70
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/openpgp/PGPObjectFactory;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 164
    new-instance v0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/PGPObjectFactory$1;-><init>(Lorg/spongycastle/openpgp/PGPObjectFactory;)V

    return-object v0
.end method

.method public nextObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 156
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v0

    return-object v0

    .line 127
    :pswitch_1
    new-instance v0, Lorg/spongycastle/openpgp/PGPLiteralData;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPLiteralData;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 148
    :pswitch_2
    new-instance v0, Lorg/spongycastle/openpgp/PGPMarker;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPMarker;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 114
    :pswitch_3
    new-instance v0, Lorg/spongycastle/openpgp/PGPPublicKeyRing;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object v0

    .line 107
    :pswitch_4
    :try_start_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKeyRing;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create secret key object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 138
    :try_start_1
    new-instance v1, Lorg/spongycastle/openpgp/PGPOnePassSignature;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/PGPOnePassSignature;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 142
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create one pass signature object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    new-instance v1, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/openpgp/PGPOnePassSignature;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/spongycastle/openpgp/PGPOnePassSignature;

    invoke-direct {v1, v0}, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;-><init>([Lorg/spongycastle/openpgp/PGPOnePassSignature;)V

    return-object v1

    .line 89
    :pswitch_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 95
    :try_start_2
    new-instance v1, Lorg/spongycastle/openpgp/PGPSignature;

    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/PGPSignature;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 99
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create signature object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    new-instance v1, Lorg/spongycastle/openpgp/PGPSignatureList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/openpgp/PGPSignature;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/spongycastle/openpgp/PGPSignature;

    invoke-direct {v1, v0}, Lorg/spongycastle/openpgp/PGPSignatureList;-><init>([Lorg/spongycastle/openpgp/PGPSignature;)V

    return-object v1

    .line 130
    :pswitch_7
    new-instance v0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPEncryptedDataList;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 118
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-static {v0, v1}, Lorg/spongycastle/openpgp/PGPPublicKeyRing;->readSubkey(Lorg/spongycastle/bcpg/BCPGInputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v0
    :try_end_3
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    .line 122
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_3
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedData;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPCompressedData;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
