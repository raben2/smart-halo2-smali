.class public Lorg/spongycastle/bcpg/RSASecretBCPGKey;
.super Lorg/spongycastle/bcpg/BCPGObject;
.source "RSASecretBCPGKey.java"

# interfaces
.implements Lorg/spongycastle/bcpg/BCPGKey;


# instance fields
.field crt:Ljava/math/BigInteger;

.field d:Lorg/spongycastle/bcpg/MPInteger;

.field expP:Ljava/math/BigInteger;

.field expQ:Ljava/math/BigInteger;

.field p:Lorg/spongycastle/bcpg/MPInteger;

.field q:Lorg/spongycastle/bcpg/MPInteger;

.field u:Lorg/spongycastle/bcpg/MPInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    .line 52
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v0, :cond_0

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "p and q cannot be equal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    :goto_0
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    .line 66
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p2}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    .line 67
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p3}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    .line 68
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->u:Lorg/spongycastle/bcpg/MPInteger;

    const-wide/16 v0, 0x1

    .line 70
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expP:Ljava/math/BigInteger;

    .line 71
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expQ:Ljava/math/BigInteger;

    .line 72
    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->crt:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/bcpg/BCPGObject;-><init>()V

    .line 28
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    .line 29
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    .line 30
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    .line 31
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->u:Lorg/spongycastle/bcpg/MPInteger;

    .line 33
    iget-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expP:Ljava/math/BigInteger;

    .line 34
    iget-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expQ:Ljava/math/BigInteger;

    .line 35
    iget-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->crt:Ljava/math/BigInteger;

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

    .line 166
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    .line 167
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    .line 168
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    .line 169
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->u:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/spongycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->crt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 154
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
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->expQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->p:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->q:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->d:Lorg/spongycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
