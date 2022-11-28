.class final Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$a;
.super Ljava/lang/Object;
.source "AssetsCacheManager.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->downloadAssetEntity(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Lcom/instabug/library/model/AssetEntity;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/AssetEntity;


# direct methods
.method constructor <init>(Lcom/instabug/library/model/AssetEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$a;->a:Lcom/instabug/library/model/AssetEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/AssetEntity;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/AssetEntity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->addAssetEntity(Lcom/instabug/library/model/AssetEntity;)V

    .line 2
    invoke-static {p1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->notifyDownloadFinishedSuccessfully(Lcom/instabug/library/model/AssetEntity;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "downloading asset entity got error: "

    .line 3
    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$a;->a:Lcom/instabug/library/model/AssetEntity;

    invoke-static {v0, p1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->notifyDownloadFailed(Lcom/instabug/library/model/AssetEntity;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/instabug/library/model/AssetEntity;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$a;->a(Lcom/instabug/library/model/AssetEntity;)V

    return-void
.end method
