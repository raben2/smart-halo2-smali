.class public Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;
.super Ljava/lang/Object;
.source "PGPUserAttributeSubpacketVector.java"


# instance fields
.field packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;


# direct methods
.method constructor <init>([Lorg/spongycastle/bcpg/UserAttributeSubpacket;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 61
    check-cast p1, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;

    .line 63
    iget-object v1, p1, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    array-length v1, v1

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    array-length v3, v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 68
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    array-length v4, v3

    if-eq v1, v4, :cond_3

    .line 70
    iget-object v4, p1, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    aget-object v4, v4, v1

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public getImageAttribute()Lorg/spongycastle/bcpg/attr/ImageAttribute;
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->getSubpacket(I)Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    check-cast v0, Lorg/spongycastle/bcpg/attr/ImageAttribute;

    return-object v0
.end method

.method public getSubpacket(I)Lorg/spongycastle/bcpg/UserAttributeSubpacket;
    .locals 3

    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    array-length v2, v1

    if-eq v0, v2, :cond_1

    .line 25
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 27
    iget-object p1, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    array-length v3, v2

    if-eq v0, v3, :cond_0

    .line 88
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/spongycastle/bcpg/UserAttributeSubpacket;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method toSubpacketArray()[Lorg/spongycastle/bcpg/UserAttributeSubpacket;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPUserAttributeSubpacketVector;->packets:[Lorg/spongycastle/bcpg/UserAttributeSubpacket;

    return-object v0
.end method
