.class public Lorg/spongycastle/bcpg/PublicSubkeyPacket;
.super Lorg/spongycastle/bcpg/PublicKeyPacket;
.source "PublicSubkeyPacket.java"


# direct methods
.method public constructor <init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

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

    .line 38
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/PublicSubkeyPacket;->getEncodedContents()[B

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
