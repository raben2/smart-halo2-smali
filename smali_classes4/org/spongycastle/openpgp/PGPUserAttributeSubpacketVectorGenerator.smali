.class public Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;
.super Ljava/lang/Object;
.source "PGPUserAttributeSubpacketVectorGenerator.java"


# instance fields
.field private list:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public generate()Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;
    .locals 3

    .line 25
    new-instance v0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;-><init>([Lorg/spongycastle/bcpg/UserAttributeSubpacket;)V

    return-object v0
.end method

.method public setImageAttribute(I[B)V
    .locals 2

    if-eqz p2, :cond_0

    .line 20
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;->list:Ljava/util/List;

    new-instance v1, Lorg/spongycastle/bcpg/attr/ImageAttribute;

    invoke-direct {v1, p1, p2}, Lorg/spongycastle/bcpg/attr/ImageAttribute;-><init>(I[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to set null image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
