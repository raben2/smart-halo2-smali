.class public abstract Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;
.super Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;
.source "PBEKeyEncryptionMethodGenerator.java"


# instance fields
.field private passPhrase:[C

.field private random:Ljava/security/SecureRandom;

.field private s2k:Lorg/spongycastle/bcpg/S2K;

.field private s2kCount:I

.field private s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;


# direct methods
.method protected constructor <init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 1

    const/16 v0, 0x60

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method

.method protected constructor <init>([CLorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->passPhrase:[C

    .line 60
    iput-object p2, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-gt p3, p1, :cond_0

    .line 67
    iput p3, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kCount:I

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "s2kCount value outside of range 0 to 255."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract encryptSessionInfo(I[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation
.end method

.method public generate(I[B)Lorg/spongycastle/bcpg/ContainedPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->getKey(I)[B

    move-result-object v0

    if-nez p2, :cond_0

    .line 120
    new-instance p2, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/spongycastle/bcpg/S2K;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;-><init>(ILorg/spongycastle/bcpg/S2K;[B)V

    return-object p2

    .line 126
    :cond_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    .line 128
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    new-instance p2, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/spongycastle/bcpg/S2K;

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->encryptSessionInfo(I[B[B)[B

    move-result-object v0

    invoke-direct {p2, p1, v2, v0}, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;-><init>(ILorg/spongycastle/bcpg/S2K;[B)V

    return-object p2
.end method

.method public getKey(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/spongycastle/bcpg/S2K;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 98
    new-array v0, v0, [B

    .line 100
    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 107
    new-instance v1, Lorg/spongycastle/bcpg/S2K;

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v2

    iget v3, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kCount:I

    invoke-direct {v1, v2, v0, v3}, Lorg/spongycastle/bcpg/S2K;-><init>(I[BI)V

    iput-object v1, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/spongycastle/bcpg/S2K;

    .line 110
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kDigestCalculator:Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/spongycastle/bcpg/S2K;

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->passPhrase:[C

    invoke-static {v0, p1, v1, v2}, Lorg/spongycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILorg/spongycastle/bcpg/S2K;[C)[B

    move-result-object p1

    return-object p1
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
