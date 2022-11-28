.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;
.super Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
.source "XMSSSignature.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;
    }
.end annotation


# instance fields
.field private final index:I

.field private final random:[B


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)V

    .line 19
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    .line 20
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    .line 21
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 24
    array-length v1, p1

    if-ne v1, v0, :cond_0

    .line 28
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of random needs to be equal to size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 129
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    return v0
.end method

.method public getRandom()[B
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 7

    .line 96
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v1

    mul-int v1, v1, v0

    .line 100
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v2

    mul-int v2, v2, v0

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 102
    new-array v1, v3, [B

    .line 105
    iget v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->index:I

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 108
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->random:[B

    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v4, v0

    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getWOTSPlusSignature()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;->toByteArray()[[B

    move-result-object v2

    move v5, v4

    const/4 v4, 0x0

    .line 112
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_0

    .line 114
    aget-object v6, v2, v4

    invoke-static {v1, v6, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v5, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getAuthPath()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 120
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getAuthPath()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v2

    .line 121
    invoke-static {v1, v2, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v5, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method
