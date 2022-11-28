.class public interface abstract Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;
.super Ljava/lang/Object;
.source "AssetsCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDownloadFinished"
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Lcom/instabug/library/model/AssetEntity;)V
.end method
