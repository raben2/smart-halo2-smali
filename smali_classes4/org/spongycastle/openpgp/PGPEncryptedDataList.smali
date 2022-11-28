.class public Lorg/spongycastle/openpgp/PGPEncryptedDataList;
.super Ljava/lang/Object;
.source "PGPEncryptedDataList.java"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# instance fields
.field data:Lorg/spongycastle/bcpg/InputStreamPacket;

.field list:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    .line 49
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 50
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 55
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/InputStreamPacket;

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->data:Lorg/spongycastle/bcpg/InputStreamPacket;

    const/4 p1, 0x0

    .line 57
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 59
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    new-instance v1, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->data:Lorg/spongycastle/bcpg/InputStreamPacket;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;-><init>(Lorg/spongycastle/bcpg/SymmetricKeyEncSessionPacket;Lorg/spongycastle/bcpg/InputStreamPacket;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 65
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    new-instance v1, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;

    iget-object v3, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->data:Lorg/spongycastle/bcpg/InputStreamPacket;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;-><init>(Lorg/spongycastle/bcpg/PublicKeyEncSessionPacket;Lorg/spongycastle/bcpg/InputStreamPacket;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 52
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->readPacket()Lorg/spongycastle/bcpg/Packet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedDataObjects()Ljava/util/Iterator;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->getEncryptedDataObjects()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
