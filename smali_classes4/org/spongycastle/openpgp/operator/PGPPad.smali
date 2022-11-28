.class public Lorg/spongycastle/openpgp/operator/PGPPad;
.super Ljava/lang/Object;
.source "PGPPad.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static padSessionData([B)[B
    .locals 3

    const/16 v0, 0x28

    .line 17
    new-array v0, v0, [B

    .line 19
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    array-length v1, v0

    array-length v2, p0

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    .line 23
    array-length p0, p0

    :goto_0
    array-length v2, v0

    if-eq p0, v2, :cond_0

    .line 25
    aput-byte v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static unpadSessionData([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 34
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    .line 36
    array-length v1, p0

    sub-int/2addr v1, v0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 38
    aget-byte v2, p0, v1

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "bad padding found in session data"

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_1
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v0, v1, [B

    .line 46
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
