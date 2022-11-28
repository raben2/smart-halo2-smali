.class Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;
.super Ljava/lang/Object;
.source "MakeScreenShotAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->doInBackground([Landroid/content/Context;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;

.field final synthetic val$activityContent:Landroid/view/View;

.field final synthetic val$bitmaps:[Landroid/graphics/Bitmap;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;Landroid/view/View;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->this$0:Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;

    iput-object p2, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    iput-object p3, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$bitmaps:[Landroid/graphics/Bitmap;

    iput-object p4, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 38
    :try_start_0
    iget-object v0, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 40
    iget-object v2, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 42
    :cond_0
    invoke-static {}, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Will now make screen shot of {}"

    iget-object v4, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v2, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 44
    iget-object v2, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 46
    iget-object v2, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    iget-object v4, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 48
    :cond_1
    iget-object v2, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 49
    iget-object v2, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-static {}, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v4

    const-string v5, "Got drawing cache from root view {}"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 54
    iget-object v1, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$bitmaps:[Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v1, v3

    .line 55
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-nez v0, :cond_4

    .line 58
    iget-object v0, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$activityContent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 60
    :cond_4
    iget-object v0, p0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 62
    invoke-static {}, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Failed to take screen shot"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
