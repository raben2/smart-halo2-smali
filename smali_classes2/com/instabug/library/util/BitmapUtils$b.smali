.class final Lcom/instabug/library/util/BitmapUtils$b;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/util/BitmapUtils;->saveBitmapAsPNG(Landroid/graphics/Bitmap;ILjava/io/File;Ljava/lang/String;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:I

.field final synthetic e:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/BitmapUtils$b;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/instabug/library/util/BitmapUtils$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instabug/library/util/BitmapUtils$b;->c:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/instabug/library/util/BitmapUtils$b;->d:I

    iput-object p5, p0, Lcom/instabug/library/util/BitmapUtils$b;->e:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instabug/library/util/BitmapUtils$b;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/instabug/library/util/BitmapUtils$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/instabug/library/internal/storage/AttachmentsUtility;

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 7
    iget-object v2, p0, Lcom/instabug/library/util/BitmapUtils$b;->c:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lcom/instabug/library/util/BitmapUtils$b;->d:I

    invoke-static {v2, v3, v4, v1}, Lcom/instabug/library/util/BitmapUtils;->access$100(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/instabug/library/util/BitmapUtils$b;->e:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;

    invoke-interface {v1, v0}, Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;->onSuccess(Landroid/net/Uri;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/util/BitmapUtils$b;->e:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Uri equal null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/instabug/library/util/BitmapUtils$b;->e:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;

    invoke-interface {v1, v0}, Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
