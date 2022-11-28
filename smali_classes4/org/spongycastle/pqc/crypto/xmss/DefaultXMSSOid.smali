.class public final Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;
.super Ljava/lang/Object;
.source "DefaultXMSSOid.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;


# static fields
.field private static final oidLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oid:I

.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SHA-256"

    const/16 v2, 0xa

    const/16 v3, 0x43

    const/16 v4, 0x20

    const/16 v5, 0x10

    .line 20
    invoke-static {v1, v4, v5, v3, v2}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v7, "XMSS_SHA2-256_W16_H10"

    const v8, 0x1000001

    invoke-direct {v6, v8, v7}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-256"

    .line 21
    invoke-static {v1, v4, v5, v3, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v7, "XMSS_SHA2-256_W16_H16"

    const v8, 0x2000002

    invoke-direct {v6, v8, v7}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-256"

    const/16 v6, 0x14

    .line 22
    invoke-static {v1, v4, v5, v3, v6}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v8, "XMSS_SHA2-256_W16_H20"

    const v9, 0x3000003

    invoke-direct {v7, v9, v8}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512"

    const/16 v7, 0x83

    const/16 v8, 0x40

    .line 23
    invoke-static {v1, v8, v5, v7, v2}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v10, "XMSS_SHA2-512_W16_H10"

    const v11, 0x4000004

    invoke-direct {v9, v11, v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512"

    .line 24
    invoke-static {v1, v8, v5, v7, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v10, "XMSS_SHA2-512_W16_H16"

    const v11, 0x5000005

    invoke-direct {v9, v11, v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA-512"

    .line 25
    invoke-static {v1, v8, v5, v7, v6}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v10, "XMSS_SHA2-512_W16_H20"

    const v11, 0x6000006

    invoke-direct {v9, v11, v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE128"

    .line 26
    invoke-static {v1, v4, v5, v3, v2}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v10, "XMSS_SHAKE128_W16_H10"

    const v11, 0x7000007

    invoke-direct {v9, v11, v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE128"

    .line 27
    invoke-static {v1, v4, v5, v3, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v10, "XMSS_SHAKE128_W16_H16"

    const v11, 0x8000008

    invoke-direct {v9, v11, v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE128"

    .line 28
    invoke-static {v1, v4, v5, v3, v6}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v4, "XMSS_SHAKE128_W16_H20"

    const v9, 0x9000009

    invoke-direct {v3, v9, v4}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE256"

    .line 29
    invoke-static {v1, v8, v5, v7, v2}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v3, "XMSS_SHAKE256_W16_H10"

    const v4, 0xa00000a

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE256"

    .line 30
    invoke-static {v1, v8, v5, v7, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v3, "XMSS_SHAKE256_W16_H16"

    const v4, 0xb00000b

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE256"

    .line 31
    invoke-static {v1, v8, v5, v7, v6}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v3, "XMSS_SHAKE256_W16_H20"

    const v4, 0xc00000c

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->oidLookupTable:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->oid:I

    .line 55
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->stringRepresentation:Ljava/lang/String;

    return-void
.end method

.method private static createKey(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 93
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

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithmName == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lookup(Ljava/lang/String;IIII)Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;
    .locals 1

    if-eqz p0, :cond_0

    .line 74
    sget-object v0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->oidLookupTable:Ljava/util/Map;

    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;

    return-object p0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithmName == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getOid()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->oid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSOid;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
