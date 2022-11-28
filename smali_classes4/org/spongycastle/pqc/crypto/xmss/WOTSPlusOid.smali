.class final Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;
.super Ljava/lang/Object;
.source "WOTSPlusOid.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;


# static fields
.field private static final oidLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oid:I

.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SHA-256"

    const/16 v2, 0x43

    const/16 v3, 0x20

    const/16 v4, 0x10

    .line 22
    invoke-static {v1, v3, v4, v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    const-string v6, "WOTSP_SHA2-256_W16"

    const v7, 0x1000001

    invoke-direct {v5, v7, v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512"

    const/16 v5, 0x83

    const/16 v6, 0x40

    .line 23
    invoke-static {v1, v6, v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    const-string v8, "WOTSP_SHA2-512_W16"

    const v9, 0x2000002

    invoke-direct {v7, v9, v8}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE128"

    .line 24
    invoke-static {v1, v3, v4, v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    const-string v3, "WOTSP_SHAKE128_W16"

    const v7, 0x3000003

    invoke-direct {v2, v7, v3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE256"

    .line 25
    invoke-static {v1, v6, v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    const-string v3, "WOTSP_SHAKE256_W16"

    const v4, 0x4000004

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->oidLookupTable:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->oid:I

    .line 48
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->stringRepresentation:Ljava/lang/String;

    return-void
.end method

.method private static createKey(Ljava/lang/String;III)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithmName == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static lookup(Ljava/lang/String;III)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;
    .locals 1

    if-eqz p0, :cond_0

    .line 64
    sget-object v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->oidLookupTable:Ljava/util/Map;

    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    return-object p0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithmName == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getOid()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->oid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
