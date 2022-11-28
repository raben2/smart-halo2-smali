.class Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "BcPGPContentSignerBuilder.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->build(ILorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/openpgp/operator/PGPContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;

.field final synthetic val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

.field final synthetic val$privateKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

.field final synthetic val$signatureType:I

.field final synthetic val$signer:Lorg/spongycastle/crypto/Signer;


# direct methods
.method constructor <init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;ILorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/crypto/Signer;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;

    iput p2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signatureType:I

    iput-object p3, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$privateKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    iput-object p4, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signer:Lorg/spongycastle/crypto/Signer;

    iput-object p5, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->access$000(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->access$100(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$privateKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .line 77
    new-instance v0, Lorg/spongycastle/util/io/TeeOutputStream;

    new-instance v1, Lorg/spongycastle/openpgp/operator/bc/SignerOutputStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signer:Lorg/spongycastle/crypto/Signer;

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/operator/bc/SignerOutputStream;-><init>(Lorg/spongycastle/crypto/Signer;)V

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    .line 84
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signer:Lorg/spongycastle/crypto/Signer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Signer;->generateSignature()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to create signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;->val$signatureType:I

    return v0
.end method
