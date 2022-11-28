.class final Lcom/instabug/library/util/BitmapUtils$e;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/util/BitmapUtils;->loadBitmapForAsset(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;


# direct methods
.method constructor <init>(Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/BitmapUtils$e;->a:Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Asset Entity downloading got error"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/library/util/BitmapUtils$e;->a:Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;

    invoke-interface {p1}, Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;->onBitmapFailedToLoad()V

    return-void
.end method

.method public onSuccess(Lcom/instabug/library/model/AssetEntity;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset Entity downloaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/library/model/AssetEntity;->getFile()Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/util/threading/ThreadUtils;->isCurrentThreadMain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/instabug/library/util/BitmapUtils$e$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/util/BitmapUtils$e$a;-><init>(Lcom/instabug/library/util/BitmapUtils$e;Lcom/instabug/library/model/AssetEntity;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postBitmapTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/util/BitmapUtils$e;->a:Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;

    invoke-static {p1, v0}, Lcom/instabug/library/util/BitmapUtils;->access$300(Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V

    :goto_0
    return-void
.end method
