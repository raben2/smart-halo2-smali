.class Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;
.super Ljava/lang/Object;
.source "BcRSAKeyTransEnvelopedRecipient.java"

# interfaces
.implements Lorg/spongycastle/operator/InputDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient;->getRecipientOperator(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/cms/RecipientOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient;

.field final synthetic val$contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$dataCipher:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->this$0:Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient;

    iput-object p2, p0, Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/spongycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    instance-of v1, v0, Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Lorg/spongycastle/crypto/io/CipherInputStream;

    check-cast v0, Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-direct {v1, p1, v0}, Lorg/spongycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    return-object v1

    .line 45
    :cond_0
    new-instance v1, Lorg/spongycastle/crypto/io/CipherInputStream;

    check-cast v0, Lorg/spongycastle/crypto/StreamCipher;

    invoke-direct {v1, p1, v0}, Lorg/spongycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/StreamCipher;)V

    return-object v1
.end method
