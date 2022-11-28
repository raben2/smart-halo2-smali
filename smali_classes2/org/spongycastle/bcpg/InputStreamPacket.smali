.class public Lorg/spongycastle/bcpg/InputStreamPacket;
.super Lorg/spongycastle/bcpg/Packet;
.source "InputStreamPacket.java"


# instance fields
.field private in:Lorg/spongycastle/bcpg/BCPGInputStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/spongycastle/bcpg/Packet;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/spongycastle/bcpg/InputStreamPacket;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    return-void
.end method


# virtual methods
.method public getInputStream()Lorg/spongycastle/bcpg/BCPGInputStream;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/spongycastle/bcpg/InputStreamPacket;->in:Lorg/spongycastle/bcpg/BCPGInputStream;

    return-object v0
.end method
