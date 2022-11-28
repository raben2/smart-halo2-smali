.class Lorg/spongycastle/pqc/crypto/sphincs/Seed;
.super Ljava/lang/Object;
.source "Seed.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 7

    const/16 v0, 0x28

    .line 14
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 20
    aget-byte v2, p3, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget p3, p4, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    int-to-long v3, p3

    .line 26
    iget-wide v5, p4, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 p3, 0x4

    shl-long/2addr v5, p3

    or-long/2addr v3, v5

    .line 28
    iget-wide p3, p4, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/16 v1, 0x3b

    shl-long/2addr p3, v1

    or-long/2addr p3, v3

    .line 30
    invoke-static {p3, p4, v0, v2}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 32
    array-length p3, v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->varlen_hash([BI[BI)I

    return-void
.end method

.method static prg([BIJ[BI)V
    .locals 7

    const/16 v0, 0x8

    .line 39
    new-array v0, v0, [B

    .line 41
    new-instance v1, Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    .line 43
    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    const/16 v4, 0x20

    invoke-direct {v3, p4, p5, v4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 p4, 0x1

    invoke-interface {v1, p4, v2}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    long-to-int v4, p2

    move-object v2, p0

    move v3, p1

    move-object v5, p0

    move v6, p1

    .line 45
    invoke-interface/range {v1 .. v6}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-void
.end method
