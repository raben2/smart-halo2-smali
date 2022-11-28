.class public Lorg/spongycastle/bcpg/MarkerPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "MarkerPacket.java"


# instance fields
.field marker:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/bcpg/MarkerPacket;->marker:[B

    .line 19
    iget-object v0, p0, Lorg/spongycastle/bcpg/MarkerPacket;->marker:[B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x47t
        0x50t
    .end array-data
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/spongycastle/bcpg/MarkerPacket;->marker:[B

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
