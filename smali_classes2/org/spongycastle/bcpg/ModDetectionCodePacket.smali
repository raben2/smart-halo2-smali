.class public Lorg/spongycastle/bcpg/ModDetectionCodePacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "ModDetectionCodePacket.java"


# instance fields
.field private digest:[B


# direct methods
.method constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/16 v0, 0x14

    .line 17
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    .line 18
    iget-object v0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    .line 25
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    .line 27
    iget-object v0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    .line 43
    iget-object v0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getDigest()[B
    .locals 4

    .line 32
    iget-object v0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 34
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
