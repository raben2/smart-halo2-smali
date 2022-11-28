.class public Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;
.super Ljava/lang/Object;
.source "PGPCompressedDataGenerator.java"

# interfaces
.implements Lorg/spongycastle/bcpg/CompressionAlgorithmTags;
.implements Lorg/spongycastle/openpgp/StreamGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;,
        Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;
    }
.end annotation


# instance fields
.field private algorithm:I

.field private compression:I

.field private dOut:Ljava/io/OutputStream;

.field private pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 56
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p1, :pswitch_data_0

    .line 78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown compression algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown compression level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    :goto_0
    iput p1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->algorithm:I

    .line 90
    iput p2, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->compression:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doOpen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    iget v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->algorithm:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 166
    iget v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->algorithm:I

    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 178
    :pswitch_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeCBZip2OutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    goto :goto_0

    .line 175
    :pswitch_1
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    iget v2, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->compression:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;-><init>(Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;Ljava/io/OutputStream;IZ)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    goto :goto_0

    .line 172
    :pswitch_2
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    iget v2, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->compression:I

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;-><init>(Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;Ljava/io/OutputStream;IZ)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    if-eq v0, v1, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    .line 204
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->finish()V

    .line 205
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->flush()V

    .line 206
    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    :cond_1
    return-void
.end method

.method public open(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lorg/spongycastle/bcpg/BCPGOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    .line 116
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->doOpen()V

    .line 118
    new-instance p1, Lorg/spongycastle/openpgp/WrappedGeneratorStream;

    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/spongycastle/openpgp/StreamGenerator;)V

    return-object p1

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "generator already in open state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/spongycastle/bcpg/BCPGOutputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p2}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->pkOut:Lorg/spongycastle/bcpg/BCPGOutputStream;

    .line 157
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->doOpen()V

    .line 159
    new-instance p1, Lorg/spongycastle/openpgp/WrappedGeneratorStream;

    iget-object p2, p0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->dOut:Ljava/io/OutputStream;

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/spongycastle/openpgp/StreamGenerator;)V

    return-object p1

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "generator already in open state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
