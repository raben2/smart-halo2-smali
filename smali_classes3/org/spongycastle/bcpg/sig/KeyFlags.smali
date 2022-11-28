.class public Lorg/spongycastle/bcpg/sig/KeyFlags;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "KeyFlags.java"


# static fields
.field public static final AUTHENTICATION:I = 0x20

.field public static final CERTIFY_OTHER:I = 0x1

.field public static final ENCRYPT_COMMS:I = 0x4

.field public static final ENCRYPT_STORAGE:I = 0x8

.field public static final SHARED:I = 0x80

.field public static final SIGN_DATA:I = 0x2

.field public static final SPLIT:I = 0x10


# direct methods
.method public constructor <init>(ZI)V
    .locals 2

    .line 54
    invoke-static {p2}, Lorg/spongycastle/bcpg/sig/KeyFlags;->intToByteArray(I)[B

    move-result-object p2

    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x1b

    .line 47
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static intToByteArray(I)[B
    .locals 6

    const/4 v0, 0x4

    .line 23
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eq v3, v0, :cond_1

    mul-int/lit8 v5, v3, 0x8

    shr-int v5, p0, v5

    int-to-byte v5, v5

    .line 28
    aput-byte v5, v1, v3

    .line 29
    aget-byte v5, v1, v3

    if-eqz v5, :cond_0

    move v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 35
    new-array p0, v4, [B

    .line 37
    array-length v0, p0

    invoke-static {v1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method public getFlags()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/bcpg/sig/KeyFlags;->data:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 69
    iget-object v2, p0, Lorg/spongycastle/bcpg/sig/KeyFlags;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
