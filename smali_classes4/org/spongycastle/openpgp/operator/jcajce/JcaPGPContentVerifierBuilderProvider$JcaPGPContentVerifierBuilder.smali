.class Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;
.super Ljava/lang/Object;
.source "JcaPGPContentVerifierBuilderProvider.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JcaPGPContentVerifierBuilder"
.end annotation


# instance fields
.field private hashAlgorithm:I

.field private keyAlgorithm:I

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;II)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->keyAlgorithm:I

    .line 60
    iput p3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->hashAlgorithm:I

    return-void
.end method

.method static synthetic access$200(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->hashAlgorithm:I

    return p0
.end method

.method static synthetic access$300(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;)I
    .locals 0

    .line 51
    iget p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->keyAlgorithm:I

    return p0
.end method


# virtual methods
.method public build(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/operator/PGPContentVerifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->keyAlgorithm:I

    iget v2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->hashAlgorithm:I

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createSignature(II)Ljava/security/Signature;

    move-result-object v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-static {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider$JcaPGPContentVerifierBuilder;Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/security/Signature;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "invalid key."

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
