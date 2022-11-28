.class public Lorg/spongycastle/bcpg/SymmetricEncIntegrityPacket;
.super Lorg/spongycastle/bcpg/InputStreamPacket;
.source "SymmetricEncIntegrityPacket.java"


# instance fields
.field version:I


# direct methods
.method constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/InputStreamPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    .line 19
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/bcpg/SymmetricEncIntegrityPacket;->version:I

    return-void
.end method
