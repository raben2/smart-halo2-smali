.class public Lorg/spongycastle/cms/RecipientOperator;
.super Ljava/lang/Object;
.source "RecipientOperator.java"


# instance fields
.field private final algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private final operator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/InputDecryptor;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-interface {p1}, Lorg/spongycastle/operator/InputDecryptor;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/RecipientOperator;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 18
    iput-object p1, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/operator/MacCalculator;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-interface {p1}, Lorg/spongycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/cms/RecipientOperator;->algorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 24
    iput-object p1, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v1, v0, Lorg/spongycastle/operator/InputDecryptor;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lorg/spongycastle/operator/InputDecryptor;

    invoke-interface {v0, p1}, Lorg/spongycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    new-instance v1, Lorg/spongycastle/util/io/TeeInputStream;

    check-cast v0, Lorg/spongycastle/operator/MacCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public getMac()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lorg/spongycastle/operator/MacCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/MacCalculator;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method public isMacBased()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/spongycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lorg/spongycastle/operator/MacCalculator;

    return v0
.end method
