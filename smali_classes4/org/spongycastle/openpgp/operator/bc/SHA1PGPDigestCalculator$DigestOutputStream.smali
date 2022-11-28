.class Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;
.super Ljava/io/OutputStream;
.source "SHA1PGPDigestCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigestOutputStream"
.end annotation


# instance fields
.field private dig:Lorg/spongycastle/crypto/Digest;

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;


# direct methods
.method constructor <init>(Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->this$0:Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 47
    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

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

    .line 59
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

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

    .line 53
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method
