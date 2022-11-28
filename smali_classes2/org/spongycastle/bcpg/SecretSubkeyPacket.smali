.class public Lorg/spongycastle/bcpg/SecretSubkeyPacket;
.super Lorg/spongycastle/bcpg/SecretKeyPacket;
.source "SecretSubkeyPacket.java"


# direct methods
.method constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyPacket;IILorg/spongycastle/bcpg/S2K;[B[B)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p6}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;IILorg/spongycastle/bcpg/S2K;[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/bcpg/SecretKeyPacket;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;ILorg/spongycastle/bcpg/S2K;[B[B)V

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

    .line 56
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/SecretSubkeyPacket;->getEncodedContents()[B

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
