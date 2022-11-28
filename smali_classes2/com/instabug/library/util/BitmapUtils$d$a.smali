.class Lcom/instabug/library/util/BitmapUtils$d$a;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/util/BitmapUtils$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/instabug/library/util/BitmapUtils$d;


# direct methods
.method constructor <init>(Lcom/instabug/library/util/BitmapUtils$d;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/BitmapUtils$d$a;->b:Lcom/instabug/library/util/BitmapUtils$d;

    iput-object p2, p0, Lcom/instabug/library/util/BitmapUtils$d$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailedToLoad()V
    .locals 0

    return-void
.end method

.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/instabug/library/util/BitmapUtils$d$a;->a:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-static {p1, v1, v3, v2}, Lcom/instabug/library/util/BitmapUtils;->access$100(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    :goto_0
    :try_start_3
    const-string p1, "BitmapUtils"

    const-string v2, "can\'t compress bitmap"

    .line 11
    invoke-static {p1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_1

    .line 14
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    const-string p1, "BitmapUtils"

    const-string v1, "can\'t close BufferedOutputStream"

    .line 10
    invoke-static {p1, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/instabug/library/util/BitmapUtils$d$a;->a:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 24
    iget-object v0, p0, Lcom/instabug/library/util/BitmapUtils$d$a;->b:Lcom/instabug/library/util/BitmapUtils$d;

    iget-object v0, v0, Lcom/instabug/library/util/BitmapUtils$d;->c:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;

    invoke-interface {v0, p1}, Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;->onSuccess(Landroid/net/Uri;)V

    goto :goto_2

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/util/BitmapUtils$d$a;->b:Lcom/instabug/library/util/BitmapUtils$d;

    iget-object p1, p1, Lcom/instabug/library/util/BitmapUtils$d;->c:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Uri equal null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    :goto_3
    if-eqz v1, :cond_3

    .line 27
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    const-string v0, "BitmapUtils"

    const-string v1, "can\'t close BufferedOutputStream"

    .line 29
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :cond_3
    :goto_4
    throw p1
.end method
