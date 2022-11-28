.class Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;
.super Ljava/lang/Object;
.source "BcPGPContentVerifierBuilderProvider.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->build(Lorg/spongycastle/openpgp/PGPPublicKey;)Lorg/spongycastle/openpgp/operator/PGPContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

.field final synthetic val$publicKey:Lorg/spongycastle/openpgp/PGPPublicKey;

.field final synthetic val$signer:Lorg/spongycastle/crypto/Signer;


# direct methods
.method constructor <init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;Lorg/spongycastle/openpgp/PGPPublicKey;Lorg/spongycastle/crypto/Signer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->this$1:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$publicKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    iput-object p3, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$signer:Lorg/spongycastle/crypto/Signer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()I
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->this$1:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->access$100(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->this$1:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;->access$200(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$publicKey:Lorg/spongycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 70
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/SignerOutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$signer:Lorg/spongycastle/crypto/Signer;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/bc/SignerOutputStream;-><init>(Lorg/spongycastle/crypto/Signer;)V

    return-object v0
.end method

.method public verify([B)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder$1;->val$signer:Lorg/spongycastle/crypto/Signer;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    return p1
.end method
