.class public Lcom/instabug/crash/CrashPlugin;
.super Lcom/instabug/library/core/plugin/Plugin;
.source "CrashPlugin.java"

# interfaces
.implements La/a/a/a;


# instance fields
.field private anrDetectorThread:La/a/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public subscribe:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/plugin/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/crash/CrashPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/crash/CrashPlugin;->startCrashesUploaderService()V

    return-void
.end method

.method static synthetic access$100(Lcom/instabug/crash/CrashPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/crash/CrashPlugin;->startAnrsUploaderService()V

    return-void
.end method

.method static synthetic access$200(Lcom/instabug/crash/CrashPlugin;)La/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/crash/CrashPlugin;->anrDetectorThread:La/a/a/b;

    return-object p0
.end method

.method static synthetic access$202(Lcom/instabug/crash/CrashPlugin;La/a/a/b;)La/a/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/crash/CrashPlugin;->anrDetectorThread:La/a/a/b;

    return-object p1
.end method

.method static synthetic access$300(Lcom/instabug/crash/CrashPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/crash/CrashPlugin;->trimCrashes()V

    return-void
.end method

.method private checkEncryptorVersion()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/crash/e/a;->c()Lcom/instabug/crash/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/crash/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/crash/b/a;->a()V

    :cond_0
    return-void
.end method

.method private setExceptionHandler()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/crash/a;

    invoke-direct {v0}, Lcom/instabug/crash/a;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private startAnrsUploaderService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/instabug/crash/CrashPlugin$b;

    invoke-direct {v1, p0, v0}, Lcom/instabug/crash/CrashPlugin$b;-><init>(Lcom/instabug/crash/CrashPlugin;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Couldn\'t start ANRs uploader Service because Context is null."

    .line 19
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Couldn\'t start ANRs uploader Service because Context WeakReference is null."

    .line 22
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startCrashesUploaderService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/instabug/crash/CrashPlugin$c;

    invoke-direct {v1, p0, v0}, Lcom/instabug/crash/CrashPlugin$c;-><init>(Lcom/instabug/crash/CrashPlugin;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Context is null."

    .line 22
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Context WeakReference is null."

    .line 25
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private trimCrashes()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/crash/b/a;->b()V

    return-void
.end method


# virtual methods
.method public clearUserActivities()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/crash/e/c;->c()Lcom/instabug/crash/e/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instabug/crash/e/c;->a(J)V

    return-void
.end method

.method public getAnrDetectorThread()La/a/a/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin;->anrDetectorThread:La/a/a/b;

    return-object v0
.end method

.method public getLastActivityTime()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/crash/e/a;->c()Lcom/instabug/crash/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/crash/e/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSDKEventSubscriber()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/crash/CrashPlugin$a;

    invoke-direct {v0, p0}, Lcom/instabug/crash/CrashPlugin$a;-><init>(Lcom/instabug/crash/CrashPlugin;)V

    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/plugin/Plugin;->init(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/instabug/crash/CrashPlugin;->setExceptionHandler()V

    return-void
.end method

.method public isAnrEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/crash/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/crash/CrashPlugin;->isAnrStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnrStateEnabled()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->ANR_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnrDetected(La/a/a/d/a;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, La/a/a/d/a;->a(I)V

    .line 2
    invoke-static {p1}, La/a/a/c/a;->a(La/a/a/d/a;)J

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instabug/anr/network/InstabugAnrUploaderService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-static {p1, v0}, Lcom/instabug/anr/network/InstabugAnrUploaderService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public sleep()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin;->anrDetectorThread:La/a/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, La/a/a/b;->interrupt()V

    :cond_0
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/instabug/crash/e/a;->a(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/instabug/crash/CrashPlugin;->checkEncryptorVersion()V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/crash/CrashPlugin;->subscribeOnSDKEvents()V

    return-void
.end method

.method public startAnrDetection()V
    .locals 2

    .line 1
    new-instance v0, La/a/a/d/a$a;

    invoke-direct {v0}, La/a/a/d/a$a;-><init>()V

    .line 2
    new-instance v1, La/a/a/b;

    invoke-direct {v1, p0, v0}, La/a/a/b;-><init>(La/a/a/a;La/a/a/d/a$a;)V

    iput-object v1, p0, Lcom/instabug/crash/CrashPlugin;->anrDetectorThread:La/a/a/b;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin;->subscribe:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/crash/e/a;->d()V

    return-void
.end method

.method public subscribeOnSDKEvents()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/crash/CrashPlugin;->getSDKEventSubscriber()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/crash/CrashPlugin;->subscribe:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public wake()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/crash/CrashPlugin;->isAnrEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/crash/CrashPlugin;->anrDetectorThread:La/a/a/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/crash/CrashPlugin;->startAnrDetection()V

    :cond_0
    return-void
.end method
