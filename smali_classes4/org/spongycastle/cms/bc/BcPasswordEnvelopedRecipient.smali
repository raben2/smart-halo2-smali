.class public Lorg/spongycastle/cms/bc/BcPasswordEnvelopedRecipient;
.super Lorg/spongycastle/cms/bc/BcPasswordRecipient;
.source "BcPasswordEnvelopedRecipient.java"


# direct methods
.method public constructor <init>([C)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/spongycastle/cms/bc/BcPasswordRecipient;-><init>([C)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/spongycastle/cms/RecipientOperator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/cms/bc/BcPasswordEnvelopedRecipient;->extractSecretKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    const/4 p3, 0x0

    .line 27
    invoke-static {p3, p1, p2}, Lorg/spongycastle/cms/bc/EnvelopedDataHelper;->createContentCipher(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    new-instance p3, Lorg/spongycastle/cms/RecipientOperator;

    new-instance p4, Lorg/spongycastle/cms/bc/BcPasswordEnvelopedRecipient$1;

    invoke-direct {p4, p0, p2, p1}, Lorg/spongycastle/cms/bc/BcPasswordEnvelopedRecipient$1;-><init>(Lorg/spongycastle/cms/bc/BcPasswordEnvelopedRecipient;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V

    invoke-direct {p3, p4}, Lorg/spongycastle/cms/RecipientOperator;-><init>(Lorg/spongycastle/operator/InputDecryptor;)V

    return-object p3
.end method
