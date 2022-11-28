.class public Lorg/spongycastle/bcpg/MPInteger;
.super Lorg/spongycastle/bcpg/BCPGObject;
.source "MPInteger.java"


# instance fields
.field value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    .line 34
    iput-object p1, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value must not be null, or negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    .line 18
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    .line 19
    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 21
    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    .line 23
    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p1, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    shr-int/lit8 v1, v0, 0x8

    .line 48
    invoke-virtual {p1, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 49
    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write(I)V

    .line 51
    iget-object v0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    .line 55
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write([BII)V

    goto :goto_0

    .line 59
    :cond_0
    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/bcpg/MPInteger;->value:Ljava/math/BigInteger;

    return-object v0
.end method
