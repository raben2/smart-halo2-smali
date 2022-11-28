.class public Lcom/instabug/library/invocation/d/d;
.super Ljava/lang/Object;
.source "ScreenshotGestureInvoker.java"

# interfaces
.implements Lcom/instabug/library/invocation/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/invocation/d/a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/ContentResolver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/library/invocation/d/e;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private volatile f:Z


# direct methods
.method public constructor <init>(Lcom/instabug/library/invocation/a;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_INITIALIZED",
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/d;->e:Z

    .line 7
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/invocation/d/d;->a:Landroid/content/ContentResolver;

    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenshotObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/d;->c:Landroid/os/HandlerThread;

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/d;->d:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/instabug/library/invocation/d/e;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/d;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/instabug/library/invocation/d/d;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, p1}, Lcom/instabug/library/invocation/d/e;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/instabug/library/invocation/a;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/d;->b:Lcom/instabug/library/invocation/d/e;

    .line 17
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/d;->g()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/invocation/d/d;->e:Z

    return p1
.end method

.method private d()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/PermissionsUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInstabugInvocationEvents()[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 4
    sget-object v5, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SCREENSHOT:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    if-ne v4, v5, :cond_0

    .line 6
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 10
    invoke-static {v0, v1, v4, v3, v3}, Lcom/instabug/library/util/PermissionsUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 14
    iput-boolean v2, p0, Lcom/instabug/library/invocation/d/d;->e:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/invocation/d/d;->a:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/instabug/library/invocation/d/d;->b:Lcom/instabug/library/invocation/d/e;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7
    iput-boolean v3, p0, Lcom/instabug/library/invocation/d/d;->f:Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/SessionStateEventBus;->getInstance()Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/invocation/d/d$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/invocation/d/d$a;-><init>(Lcom/instabug/library/invocation/d/d;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/d;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/library/invocation/d/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/d;->e()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/d;->f()V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/d;->f:Z

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/d;->a:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/instabug/library/invocation/d/d;->b:Lcom/instabug/library/invocation/d/e;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/d;->f:Z

    :cond_0
    return-void
.end method
