.class public Lorg/spongycastle/bcpg/S2K;
.super Lorg/spongycastle/bcpg/BCPGObject;
.source "S2K.java"


# static fields
.field private static final EXPBIAS:I = 0x6

.field public static final GNU_DUMMY_S2K:I = 0x65

.field public static final GNU_PROTECTION_MODE_DIVERT_TO_CARD:I = 0x2

.field public static final GNU_PROTECTION_MODE_NO_PRIVATE_KEY:I = 0x1

.field public static final SALTED:I = 0x1

.field public static final SALTED_AND_ITERATED:I = 0x3

.field public static final SIMPLE:I


# instance fields
.field algorithm:I

.field itCount:I

.field iv:[B

.field protectionMode:I

.field type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 81
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->itCount:I

    .line 38
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->protectionMode:I

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    .line 83
    iput p1, p0, Lorg/spongycastle/bcpg/S2K;->algorithm:I

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->itCount:I

    .line 38
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->protectionMode:I

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    .line 97
    iput p1, p0, Lorg/spongycastle/bcpg/S2K;->algorithm:I

    .line 98
    iput-object p2, p0, Lorg/spongycastle/bcpg/S2K;->iv:[B

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 1

    .line 112
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->itCount:I

    .line 38
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->protectionMode:I

    const/4 v0, 0x3

    .line 113
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    .line 114
    iput p1, p0, Lorg/spongycastle/bcpg/S2K;->algorithm:I

    .line 115
    iput-object p2, p0, Lorg/spongycastle/bcpg/S2K;->iv:[B

    .line 116
    iput p3, p0, Lorg/spongycastle/bcpg/S2K;->itCount:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->itCount:I

    .line 38
    iput v0, p0, Lorg/spongycastle/bcpg/S2K;->protectionMode:I

    .line 44
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    .line 47
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/bcpg/S2K;->algorithm:I

    .line 52
    iget p1, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    const/16 v1, 0x65

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 56
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/bcpg/S2K;->iv:[B

    .line 57
    iget-object p1, p0, Lorg/spongycastle/bcpg/S2K;->iv:[B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 59
    iget p1, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/bcpg/S2K;->itCount:I

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    .line 68
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    .line 69
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    .line 70
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/bcpg/S2K;->protectionMode:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 164
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->algorithm:I

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 166
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/spongycastle/bcpg/S2K;->iv:[B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write([B)V

    .line 173
    :cond_0
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 175
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->itCount:I

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x47

    .line 180
    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v0, 0x4e

    .line 181
    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 v0, 0x55

    .line 182
    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 183
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->protectionMode:I

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->algorithm:I

    return v0
.end method

.method public getIV()[B
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/bcpg/S2K;->iv:[B

    return-object v0
.end method

.method public getIterationCount()J
    .locals 2

    .line 148
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->itCount:I

    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, 0x10

    shr-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x6

    shl-int v0, v1, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getProtectionMode()I
    .locals 1

    .line 156
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->protectionMode:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/spongycastle/bcpg/S2K;->type:I

    return v0
.end method
