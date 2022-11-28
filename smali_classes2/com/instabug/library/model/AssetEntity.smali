.class public Lcom/instabug/library/model/AssetEntity;
.super Ljava/lang/Object;
.source "AssetEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/model/AssetEntity$AssetType;
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private key:Ljava/lang/String;

.field private type:Lcom/instabug/library/model/AssetEntity$AssetType;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/model/AssetEntity;->key:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/model/AssetEntity;->type:Lcom/instabug/library/model/AssetEntity$AssetType;

    .line 4
    iput-object p3, p0, Lcom/instabug/library/model/AssetEntity;->url:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/instabug/library/model/AssetEntity;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/AssetEntity;->file:Ljava/io/File;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/AssetEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/instabug/library/model/AssetEntity$AssetType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/AssetEntity;->type:Lcom/instabug/library/model/AssetEntity$AssetType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/AssetEntity;->url:Ljava/lang/String;

    return-object v0
.end method
