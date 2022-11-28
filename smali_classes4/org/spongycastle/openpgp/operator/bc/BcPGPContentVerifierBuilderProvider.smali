.class public Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;
.super Ljava/lang/Object;
.source "BcPGPContentVerifierBuilderProvider.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;
    }
.end annotation


# instance fields
.field private keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;)Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;
    .locals 0

    .line 12
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    return-object p0
.end method


# virtual methods
.method public get(II)Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;-><init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;II)V

    return-object v0
.end method
