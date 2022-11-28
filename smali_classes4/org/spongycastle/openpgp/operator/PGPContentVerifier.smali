.class public interface abstract Lorg/spongycastle/openpgp/operator/PGPContentVerifier;
.super Ljava/lang/Object;
.source "PGPContentVerifier.java"


# virtual methods
.method public abstract getHashAlgorithm()I
.end method

.method public abstract getKeyAlgorithm()I
.end method

.method public abstract getKeyID()J
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract verify([B)Z
.end method
