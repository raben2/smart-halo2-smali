.class Lcom/instabug/chat/ui/f/g$f;
.super Ljava/lang/Object;
.source "MessagesListAdapter.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/g;->d(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/ui/f/g$j;

.field final synthetic b:Lcom/instabug/chat/ui/f/g;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/g;Lcom/instabug/chat/ui/f/g$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/g$f;->b:Lcom/instabug/chat/ui/f/g;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/g$f;->a:Lcom/instabug/chat/ui/f/g$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Asset Entity downloading got error"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$f;->a:Lcom/instabug/chat/ui/f/g$j;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$j;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$f;->a:Lcom/instabug/chat/ui/f/g$j;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$j;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {p1}, Lcom/instabug/library/model/AssetEntity;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/VideoManipulationUtils;->extractFirstVideoFrame(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/instabug/chat/ui/f/g$f;->a:Lcom/instabug/chat/ui/f/g$j;

    iget-object v1, v1, Lcom/instabug/chat/ui/f/g$j;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$f;->a:Lcom/instabug/chat/ui/f/g$j;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$j;->j:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/instabug/chat/ui/f/g$f$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/chat/ui/f/g$f$a;-><init>(Lcom/instabug/chat/ui/f/g$f;Lcom/instabug/library/model/AssetEntity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
