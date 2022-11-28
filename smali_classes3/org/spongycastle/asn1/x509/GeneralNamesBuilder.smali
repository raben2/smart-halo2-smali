.class public Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;
.super Ljava/lang/Object;
.source "GeneralNamesBuilder.java"


# instance fields
.field private names:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addName(Lorg/spongycastle/asn1/x509/GeneralName;)Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addNames(Lorg/spongycastle/asn1/x509/GeneralNames;)Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;
    .locals 3

    .line 11
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object p1

    const/4 v0, 0x0

    .line 13
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 15
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 3

    .line 30
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    .line 32
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 34
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/GeneralNamesBuilder;->names:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/x509/GeneralName;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>([Lorg/spongycastle/asn1/x509/GeneralName;)V

    return-object v1
.end method
