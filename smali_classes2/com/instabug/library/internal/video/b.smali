.class final Lcom/instabug/library/internal/video/b;
.super Ljava/lang/Object;
.source "ScreenRecordingSession.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/internal/video/b$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/instabug/library/internal/video/b$c;

.field private final c:Ljava/io/File;

.field private d:Lcom/instabug/library/Feature$State;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Landroid/media/projection/MediaProjection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/instabug/library/internal/video/d/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/instabug/library/internal/video/b$c;ILandroid/content/Intent;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/video/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/internal/video/b;->b:Lcom/instabug/library/internal/video/b$c;

    .line 4
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isRecording()Z

    move-result p2

    iput-boolean p2, p0, Lcom/instabug/library/internal/video/b;->g:Z

    .line 5
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/settings/SettingsManager;->getAutoScreenRecordingAudioCapturingState()Lcom/instabug/library/Feature$State;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/library/internal/video/b;->d:Lcom/instabug/library/Feature$State;

    .line 8
    iget-boolean p2, p0, Lcom/instabug/library/internal/video/b;->g:Z

    if-eqz p2, :cond_0

    .line 9
    invoke-static {p1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getVideoRecordingFramesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/library/internal/video/b;->c:Ljava/io/File;

    .line 10
    invoke-static {p1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getVideoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/library/internal/video/b;->e:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/instabug/library/internal/storage/AttachmentManager;->getAutoScreenRecordingVideosDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/library/internal/video/b;->c:Ljava/io/File;

    .line 13
    invoke-static {p1}, Lcom/instabug/library/internal/storage/AttachmentManager;->getAutoScreenRecordingFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/library/internal/video/b;->e:Ljava/lang/String;

    :goto_0
    const-string p2, "media_projection"

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1, p3, p4}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/internal/video/b;->h:Landroid/media/projection/MediaProjection;

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/b;->d()Lcom/instabug/library/internal/video/d/g;

    move-result-object p1

    .line 22
    iget-boolean p2, p0, Lcom/instabug/library/internal/video/b;->g:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/instabug/library/internal/video/b;->d:Lcom/instabug/library/Feature$State;

    sget-object p3, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p2, p3, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    new-instance p2, Lcom/instabug/library/internal/video/d/f;

    iget-object p3, p0, Lcom/instabug/library/internal/video/b;->h:Landroid/media/projection/MediaProjection;

    iget-object p4, p0, Lcom/instabug/library/internal/video/b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/instabug/library/internal/video/d/f;-><init>(Lcom/instabug/library/internal/video/d/g;Lcom/instabug/library/internal/video/d/a;Landroid/media/projection/MediaProjection;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;

    goto :goto_2

    .line 27
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/b;->c()Lcom/instabug/library/internal/video/d/a;

    move-result-object p2

    .line 28
    new-instance p3, Lcom/instabug/library/internal/video/d/f;

    iget-object p4, p0, Lcom/instabug/library/internal/video/b;->h:Landroid/media/projection/MediaProjection;

    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->e:Ljava/lang/String;

    invoke-direct {p3, p1, p2, p4, v0}, Lcom/instabug/library/internal/video/d/f;-><init>(Lcom/instabug/library/internal/video/d/g;Lcom/instabug/library/internal/video/d/a;Landroid/media/projection/MediaProjection;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;

    .line 33
    :goto_2
    invoke-direct {p0}, Lcom/instabug/library/internal/video/b;->f()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/library/internal/video/b;)Lcom/instabug/library/internal/video/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/b;->b:Lcom/instabug/library/internal/video/b$c;

    return-object p0
.end method

.method private b(Lcom/instabug/library/internal/video/d/f$d;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/b;->f:Z

    if-nez v0, :cond_0

    const-string p1, "ScreenRecordingSession"

    const-string v0, "Recorder is not running"

    .line 3
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/instabug/library/internal/video/b;->a(Z)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->h:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->h:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;

    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/video/d/f;->a(Lcom/instabug/library/internal/video/d/f$d;)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/f;->a()V

    :cond_3
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    iget-object p1, p0, Lcom/instabug/library/internal/video/b;->b:Lcom/instabug/library/internal/video/b$c;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    const-string v0, "ScreenRecordingSession"

    .line 38
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :cond_4
    iget-object p1, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;

    if-eqz p1, :cond_5

    .line 41
    iget-object p1, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/d/f;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :cond_5
    :try_start_4
    iget-object p1, p0, Lcom/instabug/library/internal/video/b;->b:Lcom/instabug/library/internal/video/b$c;

    .line 36
    :goto_0
    invoke-interface {p1}, Lcom/instabug/library/internal/video/b$c;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    .line 47
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->b:Lcom/instabug/library/internal/video/b$c;

    invoke-interface {v0}, Lcom/instabug/library/internal/video/b$c;->a()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 53
    :catch_2
    throw p1
.end method

.method static synthetic c(Lcom/instabug/library/internal/video/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method private c()Lcom/instabug/library/internal/video/d/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/instabug/library/internal/video/d/a;

    invoke-direct {v0}, Lcom/instabug/library/internal/video/d/a;-><init>()V

    return-object v0
.end method

.method private d()Lcom/instabug/library/internal/video/d/g;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/b;->e()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 3
    aget v2, v0, v2

    const/4 v3, 0x2

    .line 4
    aget v0, v0, v3

    .line 6
    new-instance v3, Lcom/instabug/library/internal/video/d/g;

    invoke-direct {v3, v1, v2, v0}, Lcom/instabug/library/internal/video/d/g;-><init>(III)V

    return-object v3
.end method

.method private e()[I
    .locals 5

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/instabug/library/internal/video/b;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v3, 0x3

    .line 10
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    const/4 v1, 0x2

    aput v0, v3, v1

    return-object v3
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ScreenRecordingSession"

    const-string v1, "Unable to create output directory. Cannot record screen."

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->i:Lcom/instabug/library/internal/video/d/f;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/instabug/library/internal/video/d/f;->b()V

    :cond_1
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/instabug/library/internal/video/b;->a(Z)V

    .line 10
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->b:Lcom/instabug/library/internal/video/b$c;

    invoke-interface {v0}, Lcom/instabug/library/internal/video/b$c;->onStart()V

    .line 13
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/b;->g:Z

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->startTimerOnRecordingFAB()V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->d:Lcom/instabug/library/Feature$State;

    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_3

    .line 17
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/library/util/e;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/library/util/e;->b(Landroid/content/Context;)V

    :goto_0
    const-string v0, "ScreenRecordingSession"

    const-string v1, "Screen recording started"

    .line 23
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 7
    new-instance v0, Lcom/instabug/library/internal/video/b$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/video/b$a;-><init>(Lcom/instabug/library/internal/video/b;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v0, Lcom/instabug/library/internal/video/b$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/internal/video/b$b;-><init>(Lcom/instabug/library/internal/video/b;I)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postBitmapTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lcom/instabug/library/internal/video/d/f$d;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/b;->f:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/video/b;->b(Lcom/instabug/library/internal/video/d/f$d;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/internal/video/b;->b:Lcom/instabug/library/internal/video/b$c;

    invoke-interface {p1}, Lcom/instabug/library/internal/video/b$c;->c()V

    .line 6
    iget-object p1, p0, Lcom/instabug/library/internal/video/b;->b:Lcom/instabug/library/internal/video/b$c;

    invoke-interface {p1}, Lcom/instabug/library/internal/video/b$c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    .line 9
    :try_start_0
    iput-boolean p1, p0, Lcom/instabug/library/internal/video/b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 6

    monitor-enter p0

    .line 54
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instabug/library/internal/video/b;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorded video file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenRecordingSession"

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-boolean v1, p0, Lcom/instabug/library/internal/video/b;->g:Z

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->setAutoScreenRecordingFile(Ljava/io/File;)V

    .line 58
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->onRecordingFinished()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->setAutoScreenRecordingFile(Ljava/io/File;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/b;->b:Lcom/instabug/library/internal/video/b$c;

    invoke-interface {v0}, Lcom/instabug/library/internal/video/b$c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
