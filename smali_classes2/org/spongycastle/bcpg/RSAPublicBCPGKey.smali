.class public Lorg/spongycastle/bcpg/RSAPublicBCPGKey;
.super Lorg/spongycastle/bcpg/BCPGObject;
.source "RSAPublicBCPGKey.java"

# interfaces
.implements Lorg/spongycastle/bcpg/BCPGKey;


# instance fields
.field e:Lorg/spongycastle/bcpg/MPInteger;

.field n:Lorg/spongycastle/bcpg/MPInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    .line 38
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->n:Lorg/spongycastle/bcpg/MPInteger;

    .line 39
    new-instance p1, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {p1, p2}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->e:Lorg/spongycastle/bcpg/MPInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    .line 25
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->n:Lorg/spongycastle/bcpg/MPInteger;

    .line 26
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->e:Lorg/spongycastle/bcpg/MPInteger;

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->n:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    .line 84
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->e:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    .line 71
    :try_start_0
    invoke-super {p0}, Lorg/spongycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PGP"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->n:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->e:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
