.class Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;
.super Ljava/io/OutputStream;
.source "BcPGPDigestCalculatorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigestOutputStream"
.end annotation


# instance fields
.field private dig:Lorg/spongycastle/crypto/Digest;

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;


# direct methods
.method constructor <init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;->this$0:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 52
    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method getDigest()[B
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 77
    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method
