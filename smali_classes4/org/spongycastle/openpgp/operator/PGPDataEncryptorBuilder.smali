.class public interface abstract Lorg/spongycastle/openpgp/operator/PGPDataEncryptorBuilder;
.super Ljava/lang/Object;
.source "PGPDataEncryptorBuilder.java"


# virtual methods
.method public abstract build([B)Lorg/spongycastle/openpgp/operator/PGPDataEncryptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation
.end method

.method public abstract getAlgorithm()I
.end method

.method public abstract getSecureRandom()Ljava/security/SecureRandom;
.end method
