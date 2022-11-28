.class Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;
.super Ljava/io/OutputStream;
.source "SHA1PGPDigestCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigestOutputStream"
.end annotation


# instance fields
.field private dig:Ljava/security/MessageDigest;

.field final synthetic this$0:Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;


# direct methods
.method constructor <init>(Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;Ljava/security/MessageDigest;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;->this$0:Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method getDigest()[B
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/SHA1PGPDigestCalculator$DigestOutputStream;->dig:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
