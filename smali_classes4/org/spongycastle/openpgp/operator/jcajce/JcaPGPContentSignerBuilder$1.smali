.class Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "JcaPGPContentSignerBuilder.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/spongycastle/openpgp/operator/PGPContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

.field final synthetic val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

.field final synthetic val$keyID:J

.field final synthetic val$signature:Ljava/security/Signature;

.field final synthetic val$signatureType:I


# direct methods
.method constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;IJLjava/security/Signature;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    iput p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signatureType:I

    iput-wide p3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$keyID:J

    iput-object p5, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    iput-object p6, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigest()[B
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyAlgorithm()I
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$keyID:J

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .line 136
    new-instance v0, Lorg/spongycastle/util/io/TeeOutputStream;

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/SignatureOutputStream;-><init>(Ljava/security/Signature;)V

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$digestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getType()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;->val$signatureType:I

    return v0
.end method
