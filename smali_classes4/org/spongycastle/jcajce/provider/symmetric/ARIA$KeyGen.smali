.class public Lorg/spongycastle/jcajce/provider/symmetric/ARIA$KeyGen;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "ARIA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/ARIA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 146
    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$KeyGen;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-string v0, "ARIA"

    .line 151
    new-instance v1, Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method
