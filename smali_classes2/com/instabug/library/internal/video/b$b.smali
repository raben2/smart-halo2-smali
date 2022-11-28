.class Lcom/instabug/library/internal/video/b$b;
.super Ljava/lang/Object;
.source "ScreenRecordingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instabug/library/internal/video/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/b$b;->b:Lcom/instabug/library/internal/video/b;

    iput p2, p0, Lcom/instabug/library/internal/video/b$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instabug/library/internal/video/b$b;->b:Lcom/instabug/library/internal/video/b;

    invoke-static {v1}, Lcom/instabug/library/internal/video/b;->a(Lcom/instabug/library/internal/video/b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/instabug/library/internal/video/b$b;->b:Lcom/instabug/library/internal/video/b;

    .line 4
    invoke-static {v1}, Lcom/instabug/library/internal/video/b;->c(Lcom/instabug/library/internal/video/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/internal/storage/AttachmentManager;->getAutoScreenRecordingFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iget v2, p0, Lcom/instabug/library/internal/video/b$b;->a:I

    .line 5
    invoke-static {v0, v1, v2}, Lcom/instabug/library/internal/video/InstabugVideoUtils;->startTrim(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ScreenRecordingSession"

    .line 8
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recorded video file size after trim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->setAutoScreenRecordingFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->setAutoScreenRecordingFile(Ljava/io/File;)V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/b$b;->b:Lcom/instabug/library/internal/video/b;

    invoke-static {v0}, Lcom/instabug/library/internal/video/b;->b(Lcom/instabug/library/internal/video/b;)Lcom/instabug/library/internal/video/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/internal/video/b$c;->b()V

    return-void
.end method
