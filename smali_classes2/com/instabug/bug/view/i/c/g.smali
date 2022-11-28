.class public Lcom/instabug/bug/view/i/c/g;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "VisualUserStepsListPresenter.java"

# interfaces
.implements Lcom/instabug/bug/view/i/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/bug/view/i/c/e;",
        ">;",
        "Lcom/instabug/bug/view/i/c/d;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/bug/view/i/c/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/instabug/bug/view/i/c/g;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 36
    invoke-static {p2}, Lcom/instabug/library/util/FileUtils;->getIndexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/bug/view/i/c/g;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/i/c/g;->a:Ljava/util/ArrayList;

    return-object p1
.end method

.method private c(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/model/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/bug/view/i/c/g$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/bug/view/i/c/g$b;-><init>(Lcom/instabug/bug/view/i/c/g;Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/model/c;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->fetchSteps()Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->getVisualUserStepsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/instabug/library/util/DiskUtils;->listFilesInDirectory(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/visualusersteps/VisualUserStep;

    .line 14
    invoke-virtual {v3}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenshotId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v3}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenshotId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/instabug/bug/view/i/c/g;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 17
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 18
    invoke-virtual {v3}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenshotId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v2

    .line 22
    :goto_1
    invoke-virtual {v3}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenshotId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    .line 23
    invoke-static {v9}, Lcom/instabug/library/core/InstabugCore;->decryptOnTheFly(Ljava/lang/String;)Lcom/instabug/library/internal/storage/ProcessedBytes;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/instabug/library/internal/storage/ProcessedBytes;->isProcessSuccessful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    invoke-virtual {v2}, Lcom/instabug/library/internal/storage/ProcessedBytes;->getFileBytes()[B

    move-result-object v2

    .line 26
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x2

    .line 28
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 29
    array-length v5, v2

    const/4 v7, 0x0

    invoke-static {v2, v7, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 31
    new-instance v2, Lcom/instabug/bug/model/c;

    add-int/lit8 v4, v6, 0x1

    .line 33
    invoke-virtual {v3}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenName()Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-virtual {v3}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenshotId()Ljava/lang/String;

    move-result-object v8

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/instabug/bug/model/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 35
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public a(Landroid/content/Context;ILcom/instabug/bug/model/c;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 42
    invoke-virtual {p3}, Lcom/instabug/bug/model/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->removeScreenshotId(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object p1

    new-instance p2, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;

    .line 45
    invoke-virtual {p3}, Lcom/instabug/bug/model/c;->e()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/instabug/library/internal/storage/operation/DeleteUriDiskOperation;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Lcom/instabug/library/internal/storage/DiskUtils;->deleteOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;

    move-result-object p1

    new-instance p2, Lcom/instabug/bug/view/i/c/g$c;

    invoke-direct {p2, p0}, Lcom/instabug/bug/view/i/c/g$c;-><init>(Lcom/instabug/bug/view/i/c/g;)V

    .line 46
    invoke-virtual {p1, p2}, Lcom/instabug/library/internal/storage/executor/DeleteOperationExecutor;->executeAsync(Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    .line 57
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/i/c/e;

    if-eqz p1, :cond_0

    .line 60
    iget-object p2, p0, Lcom/instabug/bug/view/i/c/g;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lcom/instabug/bug/view/i/c/e;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/i/c/e;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/instabug/bug/view/i/c/e;->showPreparingDialog()V

    .line 5
    invoke-direct {p0, p1}, Lcom/instabug/bug/view/i/c/g;->c(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    .line 6
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 7
    invoke-virtual {p1, v2, v3, v1}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 8
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/instabug/bug/view/i/c/g$a;

    invoke-direct {v1, p0, v0}, Lcom/instabug/bug/view/i/c/g$a;-><init>(Lcom/instabug/bug/view/i/c/g;Lcom/instabug/bug/view/i/c/e;)V

    .line 9
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/bug/view/i/c/g;->b:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/g;->b:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/g;->b:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
