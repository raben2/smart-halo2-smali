.class public Lorg/spongycastle/bcpg/BCPGInputStream;
.super Ljava/io/InputStream;
.source "BCPGInputStream.java"

# interfaces
.implements Lorg/spongycastle/bcpg/PacketTags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;
    }
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field next:Z

.field nextB:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    .line 22
    iput-object p1, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public nextPacketTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    if-nez v0, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I

    :goto_0
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    .line 124
    :cond_0
    iget v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I

    if-gez v0, :cond_1

    return v0

    :cond_1
    and-int/lit8 v1, v0, 0x3f

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_2

    shr-int/lit8 v1, v1, 0x2

    :cond_2
    return v1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    .line 38
    iget v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I

    return v0

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 57
    :cond_0
    iget-boolean v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    if-nez v1, :cond_1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    .line 64
    :cond_1
    iget p3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->nextB:I

    if-gez p3, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    int-to-byte p3, p3

    .line 69
    aput-byte p3, p1, p2

    .line 70
    iput-boolean v0, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->next:Z

    const/4 p1, 0x1

    return p1
.end method

.method public readAll()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {p0}, Lorg/spongycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    if-lt p1, p3, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readPacket()Lorg/spongycastle/bcpg/Packet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    and-int/lit8 v0, v0, 0x3f

    .line 165
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    const/16 v4, 0xc0

    if-ge v1, v4, :cond_2

    move v2, v1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v5, 0xdf

    if-gt v1, v5, :cond_3

    .line 173
    iget-object v3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    add-int/lit16 v1, v1, -0xc0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    move v2, v1

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v4, 0xff

    if-ne v1, v4, :cond_4

    .line 179
    iget-object v1, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    iget-object v3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    iget-object v3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lorg/spongycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int/2addr v1, v3

    move v2, v1

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    and-int/lit8 v1, v1, 0x1f

    shl-int v1, v3, v1

    move v2, v1

    :goto_1
    move v1, v2

    move v2, v3

    goto :goto_2

    :cond_5
    and-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x3f

    shr-int/lit8 v0, v0, 0x2

    packed-switch v1, :pswitch_data_0

    .line 208
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown length type encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_2

    .line 202
    :pswitch_1
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    or-int/2addr v1, v3

    goto :goto_2

    .line 199
    :pswitch_2
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    or-int/2addr v1, v3

    goto :goto_2

    .line 196
    :pswitch_3
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    :goto_2
    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    move-object v3, p0

    goto :goto_3

    .line 220
    :cond_6
    new-instance v3, Lorg/spongycastle/bcpg/BCPGInputStream;

    new-instance v4, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;

    invoke-direct {v4, p0, v2, v1}, Lorg/spongycastle/bcpg/BCPGInputStream$PartialInputStream;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;ZI)V

    invoke-direct {v3, v4}, Lorg/spongycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_3
    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 267
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown packet type encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :pswitch_4
    new-instance v1, Lorg/spongycastle/bcpg/ExperimentalPacket;

    invoke-direct {v1, v0, v3}, Lorg/spongycastle/bcpg/ExperimentalPacket;-><init>(ILorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v1

    .line 260
    :pswitch_5
    new-instance v0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/ModDetectionCodePacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 258
    :pswitch_6
    new-instance v0, Lorg/spongycastle/bcpg/SymmetricEncIntegrityPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/SymmetricEncIntegrityPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 254
    :pswitch_7
    new-instance v0, Lorg/spongycastle/bcpg/UserAttributePacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/UserAttributePacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 256
    :pswitch_8
    new-instance v0, Lorg/spongycastle/bcpg/PublicSubkeyPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/PublicSubkeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 252
    :pswitch_9
    new-instance v0, Lorg/spongycastle/bcpg/UserIDPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/UserIDPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 250
    :pswitch_a
    new-instance v0, Lorg/spongycastle/bcpg/TrustPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/TrustPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 248
    :pswitch_b
    new-instance v0, Lorg/spongycastle/bcpg/LiteralDataPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/LiteralDataPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 246
    :pswitch_c
    new-instance v0, Lorg/spongycastle/bcpg/MarkerPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/MarkerPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 244
    :pswitch_d
    new-instance v0, Lorg/spongycastle/bcpg/SymmetricEncDataPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/SymmetricEncDataPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 242
    :pswitch_e
    new-instance v0, Lorg/spongycastle/bcpg/CompressedDataPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/CompressedDataPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 240
    :pswitch_f
    new-instance v0, Lorg/spongycastle/bcpg/SecretSubkeyPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 238
    :pswitch_10
    new-instance v0, Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 236
    :pswitch_11
    new-instance v0, Lorg/spongycastle/bcpg/SecretKeyPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 234
    :pswitch_12
    new-instance v0, Lorg/spongycastle/bcpg/OnePassSignaturePacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/OnePassSignaturePacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 232
    :pswitch_13
    new-instance v0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 230
    :pswitch_14
    new-instance v0, Lorg/spongycastle/bcpg/SignaturePacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/SignaturePacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 228
    :pswitch_15
    new-instance v0, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 226
    :pswitch_16
    new-instance v0, Lorg/spongycastle/bcpg/InputStreamPacket;

    invoke-direct {v0, v3}, Lorg/spongycastle/bcpg/InputStreamPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-object v0

    .line 153
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid header encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
