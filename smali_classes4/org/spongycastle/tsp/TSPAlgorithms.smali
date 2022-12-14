.class public interface abstract Lorg/spongycastle/tsp/TSPAlgorithms;
.super Ljava/lang/Object;
.source "TSPAlgorithms.java"


# static fields
.field public static final ALLOWED:Ljava/util/Set;

.field public static final GOST3411:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final MD5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->MD5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->RIPEMD128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->RIPEMD160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->RIPEMD256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->GOST3411:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->GOST3411:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->MD5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->RIPEMD128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->RIPEMD160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lorg/spongycastle/tsp/TSPAlgorithms;->RIPEMD256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/spongycastle/tsp/TSPAlgorithms;->ALLOWED:Ljava/util/Set;

    return-void
.end method
