.class public Lcom/instabug/bug/k/a;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;


# static fields
.field private static c:Lcom/instabug/bug/k/a;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    invoke-direct {v0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;-><init>()V

    iput-object v0, p0, Lcom/instabug/bug/k/a;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    return-void
.end method

.method public static declared-synchronized a()Lcom/instabug/bug/k/a;
    .locals 2

    const-class v0, Lcom/instabug/bug/k/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/bug/k/a;->c:Lcom/instabug/bug/k/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/bug/k/a;

    invoke-direct {v1}, Lcom/instabug/bug/k/a;-><init>()V

    sput-object v1, Lcom/instabug/bug/k/a;->c:Lcom/instabug/bug/k/a;

    .line 3
    :cond_0
    sget-object v1, Lcom/instabug/bug/k/a;->c:Lcom/instabug/bug/k/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-static {p1, p2}, Lcom/instabug/bug/d;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/bug/k/a;->a:Ljava/lang/ref/WeakReference;

    .line 5
    iget-object p1, p0, Lcom/instabug/bug/k/a;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    invoke-virtual {p1, p0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->init(Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onExtraScreenshotCaptured(Landroid/net/Uri;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenshotHelper"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/k/a;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    invoke-virtual {v0}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->release()V

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v1, Lcom/instabug/library/model/Attachment$Type;->EXTRA_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v0, p1, v1}, Lcom/instabug/bug/model/a;->a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)Lcom/instabug/bug/model/a;

    .line 6
    iget-object v0, p0, Lcom/instabug/bug/k/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "ScreenshotHelper"

    const-string v2, "starting feedback activity"

    .line 9
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/instabug/bug/k/a;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string p1, "ScreenshotHelper"

    const-string v0, "Bug has been released ScreenshotHelper#onExtraScreenshotCaptured"

    .line 13
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onExtraScreenshotError(Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/instabug/bug/k/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/instabug/bug/k/a;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
