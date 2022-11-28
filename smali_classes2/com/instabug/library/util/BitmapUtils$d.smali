.class final Lcom/instabug/library/util/BitmapUtils$d;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/util/BitmapUtils;->saveDrawableBitmap(Landroid/graphics/drawable/Drawable;JLcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;


# direct methods
.method constructor <init>(JLandroid/graphics/drawable/Drawable;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/util/BitmapUtils$d;->a:J

    iput-object p3, p0, Lcom/instabug/library/util/BitmapUtils$d;->b:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/instabug/library/util/BitmapUtils$d;->c:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/instabug/library/util/BitmapUtils$d;->a:J

    invoke-static {v0, v1}, Lcom/instabug/library/util/BitmapUtils;->getIconTargetDirectory(J)Ljava/io/File;

    move-result-object v0

    .line 2
    const-class v1, Lcom/instabug/library/internal/storage/AttachmentsUtility;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/instabug/library/util/BitmapUtils$d;->b:Landroid/graphics/drawable/Drawable;

    new-instance v2, Lcom/instabug/library/util/BitmapUtils$d$a;

    invoke-direct {v2, p0, v0}, Lcom/instabug/library/util/BitmapUtils$d$a;-><init>(Lcom/instabug/library/util/BitmapUtils$d;Ljava/io/File;)V

    invoke-static {v1, v2}, Lcom/instabug/library/util/BitmapUtils;->access$200(Landroid/graphics/drawable/Drawable;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/instabug/library/util/BitmapUtils$d;->c:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;

    invoke-interface {v1, v0}, Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
