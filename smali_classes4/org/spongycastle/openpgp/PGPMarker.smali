.class public Lorg/spongycastle/openpgp/PGPMarker;
.super Ljava/lang/Object;
.source "PGPMarker.java"


# instance fields
.field private p:Lorg/spongycastle/bcpg/MarkerPacket;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/MarkerPacket;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPMarker;->p:Lorg/spongycastle/bcpg/MarkerPacket;

    return-void
.end method
