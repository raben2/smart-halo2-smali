.class public Lorg/spongycastle/bcpg/ExperimentalPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "ExperimentalPacket.java"

# interfaces
.implements Lorg/spongycastle/bcpg/PublicKeyAlgorithmTags;


# instance fields
.field private contents:[B

.field private tag:I


# direct methods
.method constructor <init>(ILorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    .line 26
    iput p1, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->tag:I

    .line 27
    invoke-virtual {p2}, Lorg/spongycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->contents:[B

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

    .line 44
    iget v0, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->tag:I

    iget-object v1, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->contents:[B

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getContents()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->contents:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->tag:I

    return v0
.end method
