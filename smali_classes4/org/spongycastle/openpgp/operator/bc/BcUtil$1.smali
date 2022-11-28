.class final Lorg/spongycastle/openpgp/operator/bc/BcUtil$1;
.super Ljava/lang/Object;
.source "BcUtil.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createDataDecryptor(ZLorg/spongycastle/crypto/BlockCipher;[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lorg/spongycastle/crypto/BufferedBlockCipher;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcUtil$1;->val$c:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcUtil$1;->val$c:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 62
    new-instance v0, Lorg/spongycastle/crypto/io/CipherInputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcUtil$1;->val$c:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    return-object v0
.end method

.method public getIntegrityCalculator()Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;
    .locals 1

    .line 72
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;-><init>()V

    return-object v0
.end method
