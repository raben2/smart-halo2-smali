.class public Lcom/instabug/bug/c;
.super Ljava/lang/Object;
.source "LiveBugManager.java"


# static fields
.field private static d:Lcom/instabug/bug/c;


# instance fields
.field private volatile a:Lcom/instabug/bug/model/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->CANCEL:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    iput-object v0, p0, Lcom/instabug/bug/c;->c:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/c;)Lcom/instabug/bug/model/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/instabug/library/model/State;)V
    .locals 4
    .param p2    # Lcom/instabug/library/model/State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p1}, Lcom/instabug/library/internal/storage/DiskUtils;->createStateTextFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 80
    invoke-static {p1}, Lcom/instabug/library/internal/storage/DiskUtils;->with(Landroid/content/Context;)Lcom/instabug/library/internal/storage/DiskUtils;

    move-result-object v1

    new-instance v2, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;

    .line 81
    invoke-virtual {p2}, Lcom/instabug/library/model/State;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/instabug/library/internal/storage/operation/WriteStateToFileDiskOperation;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/instabug/library/internal/storage/DiskUtils;->writeOperation(Lcom/instabug/library/internal/storage/operation/DiskOperation;)Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/executor/WriteOperationExecutor;->execute()Landroid/net/Uri;

    move-result-object v0

    .line 83
    invoke-virtual {p2, v0}, Lcom/instabug/library/model/State;->setUri(Landroid/net/Uri;)V

    .line 84
    sget-object p2, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    invoke-static {p2}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object p2

    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p2, v0, :cond_0

    .line 85
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isReproStepsScreenshotEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 86
    iget-object p2, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {p2}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->getVisualUserStepsFileObservable(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/instabug/bug/c$b;

    invoke-direct {p2, p0}, Lcom/instabug/bug/c$b;-><init>(Lcom/instabug/bug/c;)V

    new-instance v0, Lcom/instabug/bug/c$c;

    invoke-direct {v0, p0}, Lcom/instabug/bug/c$c;-><init>(Lcom/instabug/bug/c;)V

    .line 88
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    sget-object p2, Lcom/instabug/bug/model/a$a;->READY_TO_BE_SENT:Lcom/instabug/bug/model/a$a;

    invoke-virtual {p1, p2}, Lcom/instabug/bug/model/a;->a(Lcom/instabug/bug/model/a$a;)Lcom/instabug/bug/model/a;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/bug/g/a;->a(Lcom/instabug/bug/model/a;)J

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/c;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/bug/c;->d(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/c;Landroid/content/Context;Lcom/instabug/library/model/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/instabug/bug/c;->a(Landroid/content/Context;Lcom/instabug/library/model/State;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/bug/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/instabug/bug/c;->i()V

    return-void
.end method

.method static synthetic b(Lcom/instabug/bug/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/bug/c;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/instabug/bug/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/c;->k()V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getExtraAttachmentFiles()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/instabug/library/model/Attachment$Type;->ATTACHMENT_FILE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/instabug/bug/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/instabug/library/model/Attachment$Type;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/model/Attachment;

    .line 5
    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v3, Lcom/instabug/library/model/Attachment$Type;->MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v3, Lcom/instabug/library/model/Attachment$Type;->EXTRA_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v3, Lcom/instabug/library/model/Attachment$Type;->GALLERY_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/instabug/library/util/BitmapUtils;->compressBitmapAndSave(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "LiveBugManager"

    const-string v2, "Failed to compress MAIN_SCREENSHOT or IMAGE & save original as it is"

    .line 13
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/instabug/library/util/threading/PoolProvider;->newBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator(Ljava/util/concurrent/Executor;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    new-instance v1, Lcom/instabug/bug/f;

    invoke-direct {v1, p1}, Lcom/instabug/bug/f;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrate()V

    return-void
.end method

.method public static declared-synchronized h()Lcom/instabug/bug/c;
    .locals 2

    const-class v0, Lcom/instabug/bug/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/bug/c;->d:Lcom/instabug/bug/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/bug/c;

    invoke-direct {v1}, Lcom/instabug/bug/c;-><init>()V

    sput-object v1, Lcom/instabug/bug/c;->d:Lcom/instabug/bug/c;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/bug/c;->d:Lcom/instabug/bug/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private i()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->f()Lcom/instabug/library/OnSdkDismissCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->b()Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->f()Lcom/instabug/library/OnSdkDismissCallback;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->b()Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/bug/e;->a(Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;)Lcom/instabug/library/OnSdkDismissCallback$DismissType;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/model/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/bug/e;->a(Ljava/lang/String;)Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/instabug/library/OnSdkDismissCallback;->call(Lcom/instabug/library/OnSdkDismissCallback$DismissType;Lcom/instabug/library/OnSdkDismissCallback$ReportType;)V

    :cond_0
    return-void
.end method

.method public static j()V
    .locals 2

    const-string v0, "LiveBugManager"

    const-string v1, "sending bug report to the server"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/bug/network/c;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->sync()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/bug/model/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/instabug/library/util/threading/PoolProvider;->newBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator(Ljava/util/concurrent/Executor;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    new-instance v1, Lcom/instabug/bug/c$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/bug/c$a;-><init>(Lcom/instabug/bug/c;Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrate()V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/instabug/bug/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/instabug/library/model/Attachment$Type;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/instabug/library/model/Attachment$Type;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-virtual {p0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lcom/instabug/library/model/Attachment$Type;->GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    if-ne p4, v0, :cond_0

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 12
    invoke-static {p1, p2, p3, v0, v1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getNewFileAttachmentUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;D)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->getNewFileAttachmentUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object p3

    invoke-virtual {p3, p2, p4}, Lcom/instabug/bug/model/a;->a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)Lcom/instabug/bug/model/a;

    .line 19
    invoke-virtual {p0, p1}, Lcom/instabug/bug/c;->c(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/File;Lcom/instabug/library/model/Attachment$Type;)V
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/instabug/bug/model/a;->a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)Lcom/instabug/bug/model/a;

    .line 23
    invoke-virtual {p0, p1}, Lcom/instabug/bug/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/instabug/bug/c;->c:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    return-void
.end method

.method public a(Lcom/instabug/bug/model/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/instabug/bug/c;->b:Z

    .line 6
    sget-object p1, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->CANCEL:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    iput-object p1, p0, Lcom/instabug/bug/c;->c:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/instabug/bug/c;->b:Z

    return-void
.end method

.method public b()Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/instabug/bug/c;->c:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/instabug/bug/model/a$b;

    invoke-direct {v0}, Lcom/instabug/bug/model/a$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/instabug/bug/model/a$b;->a(Landroid/content/Context;)Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/model/a;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/instabug/bug/c;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/instabug/bug/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/instabug/library/model/Attachment$Type;)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "refresh.attachments"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/instabug/bug/c;->b:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/bug/c;->a(Z)V

    .line 6
    sget-object v0, Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;->ADD_ATTACHMENT:Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;

    invoke-virtual {p0, v0}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/OnSdkDismissedCallback$DismissType;)V

    .line 7
    invoke-direct {p0}, Lcom/instabug/bug/c;->i()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/model/Attachment;

    .line 3
    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/internal/storage/DiskUtils;->deleteFile(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/bug/c;->e()V

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/instabug/library/Feature;->USER_EVENTS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/logging/InstabugUserEventLogger;->getInstance()Lcom/instabug/library/logging/InstabugUserEventLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/logging/InstabugUserEventLogger;->getUserEvents()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/user/UserEvent;->toJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserEvents(Ljava/lang/String;)Lcom/instabug/library/model/State;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LiveBugManager"

    const-string v2, "Got error while parsing user events logs"

    .line 10
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    .line 15
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnReportCreatedListener()Lcom/instabug/library/model/Report$OnReportCreatedListener;

    move-result-object v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getTagsAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setTags(Ljava/lang/String;)Lcom/instabug/library/model/State;

    .line 18
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->updateConsoleLog()V

    .line 19
    sget-object v0, Lcom/instabug/library/Feature;->USER_DATA:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_2

    .line 21
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserData(Ljava/lang/String;)Lcom/instabug/library/model/State;

    .line 23
    :cond_2
    sget-object v0, Lcom/instabug/library/Feature;->INSTABUG_LOGS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_3

    .line 25
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->getLogs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setInstabugLog(Ljava/lang/String;)V

    .line 28
    :cond_3
    sget-object v0, Lcom/instabug/library/Feature;->REPORT_PHONE_NUMBER:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->getCustomUserAttribute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    .line 31
    invoke-virtual {v1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/State;->getCustomUserAttribute()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IBG_phone_number"

    .line 32
    invoke-static {v2, v1}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->getSDKUserAttributesAndAppendToIt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserAttributes(Ljava/lang/String;)Lcom/instabug/library/model/State;

    goto :goto_2

    .line 37
    :cond_4
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->getSDKUserAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/model/State;->setUserAttributes(Ljava/lang/String;)Lcom/instabug/library/model/State;

    .line 39
    :goto_2
    iget-object v0, p0, Lcom/instabug/bug/c;->a:Lcom/instabug/bug/model/a;

    invoke-virtual {v0}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/model/State;->updateVisualUserSteps()V

    :cond_5
    return-void
.end method
