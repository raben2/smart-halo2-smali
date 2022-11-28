.class public Lorg/spongycastle/cert/dane/DANEEntryFactory;
.super Ljava/lang/Object;
.source "DANEEntryFactory.java"


# instance fields
.field private final selectorFactory:Lorg/spongycastle/cert/dane/DANEEntrySelectorFactory;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/DigestCalculator;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/spongycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-direct {v0, p1}, Lorg/spongycastle/cert/dane/DANEEntrySelectorFactory;-><init>(Lorg/spongycastle/operator/DigestCalculator;)V

    iput-object v0, p0, Lorg/spongycastle/cert/dane/DANEEntryFactory;->selectorFactory:Lorg/spongycastle/cert/dane/DANEEntrySelectorFactory;

    return-void
.end method


# virtual methods
.method public createEntry(Ljava/lang/String;Lorg/spongycastle/cert/X509CertificateHolder;)Lorg/spongycastle/cert/dane/DANEEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cert/dane/DANEException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/spongycastle/cert/dane/DANEEntryFactory;->selectorFactory:Lorg/spongycastle/cert/dane/DANEEntrySelectorFactory;

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/dane/DANEEntrySelectorFactory;->createSelector(Ljava/lang/String;)Lorg/spongycastle/cert/dane/DANEEntrySelector;

    move-result-object p1

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 40
    new-instance v1, Lorg/spongycastle/cert/dane/DANEEntry;

    invoke-virtual {p1}, Lorg/spongycastle/cert/dane/DANEEntrySelector;->getDomainName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0, p2}, Lorg/spongycastle/cert/dane/DANEEntry;-><init>(Ljava/lang/String;[BLorg/spongycastle/cert/X509CertificateHolder;)V

    return-object v1

    :array_0
    .array-data 1
        0x3t
        0x0t
        0x0t
    .end array-data
.end method
