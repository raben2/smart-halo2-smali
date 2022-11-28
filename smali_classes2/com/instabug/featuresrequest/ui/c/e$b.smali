.class Lcom/instabug/featuresrequest/ui/c/e$b;
.super Ljava/lang/Object;
.source "TimelineAdapter.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/c/e;->a(Landroid/content/Context;Lcom/instabug/featuresrequest/d/a;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/d/a;

.field final synthetic b:Lcom/instabug/featuresrequest/ui/c/e;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/c/e;Lcom/instabug/featuresrequest/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/e$b;->b:Lcom/instabug/featuresrequest/ui/c/e;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/e$b;->a:Lcom/instabug/featuresrequest/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "TimelineAdapter"

    const-string v1, "Asset Entity downloading got error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    const-string v1, "TimelineAdapter"

    .line 3
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/e$b;->a:Lcom/instabug/featuresrequest/d/a;

    invoke-virtual {p1}, Lcom/instabug/library/model/AssetEntity;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/d/a;->b(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/instabug/library/model/AssetEntity;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "TimelineAdapter"

    const-string v0, "Asset Entity downloading got FileNotFoundException error"

    .line 8
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/e$b;->b:Lcom/instabug/featuresrequest/ui/c/e;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
