.class Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;
.super Ljava/lang/Object;
.source "CMSEnvelopedHelper.java"

# interfaces
.implements Lorg/spongycastle/cms/CMSSecureReadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/CMSEnvelopedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMSAuthenticatedSecureReadable"
.end annotation


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private readable:Lorg/spongycastle/cms/CMSReadable;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/cms/CMSReadable;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;->algorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 125
    iput-object p2, p0, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;->readable:Lorg/spongycastle/cms/CMSReadable;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/spongycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;->readable:Lorg/spongycastle/cms/CMSReadable;

    invoke-interface {v0}, Lorg/spongycastle/cms/CMSReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
