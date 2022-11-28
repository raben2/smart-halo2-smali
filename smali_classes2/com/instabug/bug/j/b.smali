.class public Lcom/instabug/bug/j/b;
.super Ljava/lang/Object;
.source "ExternalScreenRecordHelper.java"

# interfaces
.implements Lcom/instabug/library/internal/video/ScreenRecordingContract;


# static fields
.field private static b:Lcom/instabug/bug/j/b;


# instance fields
.field private a:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/model/Attachment$Type;->EXTRA_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v0, p1, v1}, Lcom/instabug/bug/model/a;->a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)Lcom/instabug/bug/model/a;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/j/b;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/bug/j/b;->b(Landroid/net/Uri;)V

    return-void
.end method

.method private b(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1}, Lcom/instabug/bug/j/b;->a(Landroid/net/Uri;)V

    .line 6
    invoke-direct {p0}, Lcom/instabug/bug/j/b;->d()V

    return-void
.end method

.method public static c()Lcom/instabug/bug/j/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/j/b;->b:Lcom/instabug/bug/j/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/bug/j/b;

    invoke-direct {v0}, Lcom/instabug/bug/j/b;-><init>()V

    sput-object v0, Lcom/instabug/bug/j/b;->b:Lcom/instabug/bug/j/b;

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/bug/j/b;->b:Lcom/instabug/bug/j/b;

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/instabug/bug/d;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/j/b;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/j/b;->a:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 4
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isRecording()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->init()V

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/j/b;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/bug/j/b$a;

    invoke-direct {v1, p0}, Lcom/instabug/bug/j/b$a;-><init>(Lcom/instabug/bug/j/b;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/bug/j/b;->a:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/j/b;->e()V

    .line 2
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->clear()V

    return-void
.end method

.method public delete()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->delete()V

    return-void
.end method

.method public getAutoScreenRecordingFileUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getAutoScreenRecordingFileUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isEnabled()Z

    move-result v0

    return v0
.end method
