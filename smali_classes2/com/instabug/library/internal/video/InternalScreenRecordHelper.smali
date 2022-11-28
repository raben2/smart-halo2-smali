.class public Lcom/instabug/library/internal/video/InternalScreenRecordHelper;
.super Ljava/lang/Object;
.source "InternalScreenRecordHelper.java"

# interfaces
.implements Lcom/instabug/library/internal/video/ScreenRecordingContract;
.implements Lcom/instabug/library/invocation/d/c$k;


# static fields
.field private static INSTANCE:Lcom/instabug/library/internal/video/InternalScreenRecordHelper;


# instance fields
.field private canStopRecording:Z

.field private fab:Lcom/instabug/library/invocation/d/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fileHolder:Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isCurrentlyRecording:Z

.field private resultDataIntent:Landroid/content/Intent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stopSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isCurrentlyRecording:Z

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->stopSubject:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/internal/video/InternalScreenRecordHelper;)Lio/reactivex/subjects/Subject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->stopSubject:Lio/reactivex/subjects/Subject;

    return-object p0
.end method

.method static synthetic access$102(Lcom/instabug/library/internal/video/InternalScreenRecordHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->canStopRecording:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;
    .locals 2

    const-class v0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->INSTANCE:Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    invoke-direct {v1}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;-><init>()V

    sput-object v1, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->INSTANCE:Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->INSTANCE:Lcom/instabug/library/internal/video/InternalScreenRecordHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private resetFab()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fab:Lcom/instabug/library/invocation/d/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/invocation/d/c;->b()V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fab:Lcom/instabug/library/invocation/d/c;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/d/c;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->resetFab()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isCurrentlyRecording:Z

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fileHolder:Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->clear()V

    :cond_0
    return-void
.end method

.method public delete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fileHolder:Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->delete()Z

    :cond_0
    return-void
.end method

.method public getAutoScreenRecordingFileUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fileHolder:Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->getAutoScreenRecordingFileUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIsStoppableObservable()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->stopSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hide()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/video/InternalScreenRecordHelper$b;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper$b;-><init>(Lcom/instabug/library/internal/video/InternalScreenRecordHelper;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->switchOffInvocation()V

    .line 2
    invoke-static {}, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->getInstance()Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fileHolder:Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;

    .line 4
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fab:Lcom/instabug/library/invocation/d/c;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/instabug/library/invocation/d/c;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/d/c;-><init>(Lcom/instabug/library/invocation/d/c$k;)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fab:Lcom/instabug/library/invocation/d/c;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fab:Lcom/instabug/library/invocation/d/c;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/d/c;->a()V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isCurrentlyRecording:Z

    return v0
.end method

.method onRecordingError()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/video/ScreenRecordingEvent;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;-><init>(ILandroid/net/Uri;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method onRecordingFinished()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/video/ScreenRecordingEvent;

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getAutoScreenRecordingFileUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;-><init>(ILandroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fab:Lcom/instabug/library/invocation/d/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/invocation/d/c;->b()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->switchOnInvocation()V

    .line 7
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/e;->b(Landroid/content/Context;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->stopSubject:Lio/reactivex/subjects/Subject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 12
    iput-boolean v1, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isCurrentlyRecording:Z

    return-void
.end method

.method setAutoScreenRecordingFile(Ljava/io/File;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fileHolder:Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/video/ScreenRecordingFileHolder;->setAutoScreenRecordingFile(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public setResultDataIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->resultDataIntent:Landroid/content/Intent;

    return-void
.end method

.method public start()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isCurrentlyRecording:Z

    .line 3
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    .line 7
    iget-object v2, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->resultDataIntent:Landroid/content/Intent;

    invoke-static {v1, v4, v2, v0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->a(Landroid/content/Context;ILandroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->resultDataIntent:Landroid/content/Intent;

    invoke-static {v1, v4, v2, v0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->a(Landroid/content/Context;ILandroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 13
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instabug/library/internal/video/InternalScreenRecordHelper$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper$a;-><init>(Lcom/instabug/library/internal/video/InternalScreenRecordHelper;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method startTimerOnRecordingFAB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->fab:Lcom/instabug/library/invocation/d/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/invocation/d/c;->c()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->canStopRecording:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/video/ScreenRecordingEvent;

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getAutoScreenRecordingFileUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;-><init>(ILandroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->release()V

    :cond_0
    return-void
.end method
