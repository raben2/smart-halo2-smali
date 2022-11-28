.class public final Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;
.super Ljava/lang/Object;
.source "DefaultXMSSMTOid.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;


# static fields
.field private static final oidLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oid:I

.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SHA-256"

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/16 v4, 0x43

    const/16 v5, 0x14

    const/4 v6, 0x2

    .line 20
    invoke-static/range {v1 .. v6}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-256_W16_H20_D2"

    const v4, 0x1000001

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA-256"

    const/16 v6, 0x20

    const/16 v7, 0x10

    const/16 v8, 0x43

    const/16 v9, 0x14

    const/4 v10, 0x4

    .line 22
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-256_W16_H20_D4"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA-256"

    const/16 v9, 0x28

    const/4 v10, 0x2

    .line 24
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-256_W16_H40_D2"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA-256"

    .line 26
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-256_W16_H40_D4"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA-256"

    const/4 v10, 0x4

    .line 28
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-256_W16_H40_D8"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA-256"

    const/16 v9, 0x3c

    const/16 v10, 0x8

    .line 30
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-256_W16_H60_D3"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA-256"

    const/4 v10, 0x6

    .line 32
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-256_W16_H60_D6"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA-256"

    const/16 v10, 0xc

    .line 34
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-256_W16_H60_D12"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA2-512"

    const/16 v6, 0x40

    const/16 v8, 0x83

    const/16 v9, 0x14

    const/4 v10, 0x2

    .line 36
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-512_W16_H20_D2"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA2-512"

    const/4 v10, 0x4

    .line 38
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-512_W16_H20_D4"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA2-512"

    const/16 v9, 0x28

    const/4 v10, 0x2

    .line 40
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-512_W16_H40_D2"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA2-512"

    const/4 v10, 0x4

    .line 42
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-512_W16_H40_D4"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA2-512"

    const/16 v10, 0x8

    .line 44
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-512_W16_H40_D8"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA2-512"

    const/16 v9, 0x3c

    const/4 v10, 0x3

    .line 46
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-512_W16_H60_D3"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA2-512"

    const/4 v10, 0x6

    .line 48
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-512_W16_H60_D6"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHA2-512"

    const/16 v10, 0xc

    .line 50
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHA2-512_W16_H60_D12"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE128"

    const/16 v6, 0x20

    const/16 v8, 0x43

    const/16 v9, 0x14

    const/4 v10, 0x2

    .line 52
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE128_W16_H20_D2"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE128"

    const/4 v10, 0x4

    .line 54
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE128_W16_H20_D4"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE128"

    const/16 v9, 0x28

    const/4 v10, 0x2

    .line 56
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE128_W16_H40_D2"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE128"

    const/4 v10, 0x4

    .line 58
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE128_W16_H40_D4"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE128"

    const/16 v10, 0x8

    .line 60
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE128_W16_H40_D8"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE128"

    const/16 v9, 0x3c

    const/4 v10, 0x3

    .line 62
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE128_W16_H60_D3"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE128"

    const/4 v10, 0x6

    .line 64
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE128_W16_H60_D6"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE128"

    const/16 v10, 0xc

    .line 66
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE128_W16_H60_D12"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE256"

    const/16 v6, 0x40

    const/16 v8, 0x83

    const/16 v9, 0x14

    const/4 v10, 0x2

    .line 68
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H20_D2"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE256"

    const/4 v10, 0x4

    .line 70
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H20_D4"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE256"

    const/16 v9, 0x28

    const/4 v10, 0x2

    .line 72
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H40_D2"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE256"

    const/4 v10, 0x4

    .line 74
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H40_D4"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE256"

    const/16 v10, 0x8

    .line 76
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H40_D8"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE256"

    const/16 v9, 0x3c

    const/4 v10, 0x3

    .line 78
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H60_D3"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE256"

    const/4 v10, 0x6

    .line 80
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H60_D6"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE256"

    const/16 v10, 0xc

    .line 82
    invoke-static/range {v5 .. v10}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H60_D12"

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oidLookupTable:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oid:I

    .line 107
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->stringRepresentation:Ljava/lang/String;

    return-void
.end method

.method private static createKey(Ljava/lang/String;IIIII)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 145
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

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithmName == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lookup(Ljava/lang/String;IIIII)Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;
    .locals 1

    if-eqz p0, :cond_0

    .line 126
    sget-object v0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oidLookupTable:Ljava/util/Map;

    invoke-static/range {p0 .. p5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    return-object p0

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithmName == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getOid()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
