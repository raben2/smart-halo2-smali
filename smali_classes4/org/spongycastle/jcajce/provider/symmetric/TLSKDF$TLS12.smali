.class public Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;
.super Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;
.source "TLSKDF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TLS12"
.end annotation


# instance fields
.field private final prf:Lorg/spongycastle/crypto/Mac;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/Mac;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;-><init>(Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->prf:Lorg/spongycastle/crypto/Mac;

    return-void
.end method

.method private PRF(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;Lorg/spongycastle/crypto/Mac;)[B
    .locals 2

    .line 130
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getSecret()[B

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getLength()I

    move-result p1

    new-array p1, p1, [B

    .line 136
    invoke-static {p2, v1, v0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->access$100(Lorg/spongycastle/crypto/Mac;[B[B[B)V

    return-object p1
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 120
    instance-of v0, p1, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    check-cast p1, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->prf:Lorg/spongycastle/crypto/Mac;

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->PRF(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;Lorg/spongycastle/crypto/Mac;)[B

    move-result-object p1

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->algName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 125
    :cond_0
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
