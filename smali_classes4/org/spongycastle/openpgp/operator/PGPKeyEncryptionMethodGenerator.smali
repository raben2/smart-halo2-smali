.class public abstract Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;
.super Ljava/lang/Object;
.source "PGPKeyEncryptionMethodGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generate(I[B)Lorg/spongycastle/bcpg/ContainedPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation
.end method
