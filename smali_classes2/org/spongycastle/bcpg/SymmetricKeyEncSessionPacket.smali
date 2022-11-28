.class public Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SymmetricKeyEncSessionPacket.java"


# instance fields
.field private encAlgorithm:I

.field private s2k:Lorg/spongycastle/bcpg/S2K;

.field private secKeyData:[B

.field private version:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/bcpg/S2K;[B)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x4

    .line 35
    iput v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    .line 36
    iput p1, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    .line 37
    iput-object p2, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    .line 38
    iput-object p3, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    .line 22
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    .line 25
    new-instance v0, Lorg/spongycastle/bcpg/S2K;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/S2K;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    .line 27
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    new-instance v1, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    iget v2, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 81
    iget v2, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 82
    iget-object v2, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    .line 84
    iget-object v2, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 86
    invoke-virtual {v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 89
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->close()V

    const/4 v1, 0x3

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getEncAlgorithm()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->encAlgorithm:I

    return v0
.end method

.method public getS2K()Lorg/spongycastle/bcpg/S2K;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->s2k:Lorg/spongycastle/bcpg/S2K;

    return-object v0
.end method

.method public getSecKeyData()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->secKeyData:[B

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;->version:I

    return v0
.end method
