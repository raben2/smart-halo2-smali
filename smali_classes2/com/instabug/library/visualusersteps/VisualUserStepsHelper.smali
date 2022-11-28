.class public Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;
.super Ljava/lang/Object;
.source "VisualUserStepsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    const-string v1, "_e"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static fetchSteps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/visualusersteps/VisualUserStep;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/h;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getVisualUserStepsDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "vusf"

    .line 1
    invoke-static {p0, v0}, Lcom/instabug/library/internal/storage/AttachmentManager;->getNewDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getVisualUserStepsFile(Landroid/content/Context;Ljava/lang/String;)Lcom/instabug/library/internal/storage/ProcessedUri;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->getVisualUserStepsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/instabug/library/util/DiskUtils;->listFilesInDirectory(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/library/util/FileUtils;->isEncryptedFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instabug/library/core/InstabugCore;->decrypt(Ljava/lang/String;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v0}, Lcom/instabug/library/util/DiskUtils;->listFilesInDirectory(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usersteps_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/instabug/library/util/DiskUtils;->zipFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->encrypt(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 21
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/library/util/FileUtils;->isEncryptedFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->encrypt(Ljava/lang/String;)Z

    goto :goto_2

    .line 27
    :cond_4
    new-instance v0, Lcom/instabug/library/internal/storage/ProcessedUri;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/internal/storage/ProcessedUri;-><init>(Landroid/net/Uri;Z)V

    return-object v0
.end method

.method public static getVisualUserStepsFileObservable(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/library/internal/storage/ProcessedUri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static removeScreenshotId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/visualusersteps/h;->b(Ljava/lang/String;)V

    return-void
.end method
