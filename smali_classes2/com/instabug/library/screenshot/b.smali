.class public Lcom/instabug/library/screenshot/b;
.super Ljava/lang/Object;
.source "ScreenshotManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/model/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/instabug/library/screenshot/b;


# instance fields
.field private a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/content/Intent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/screenshot/b;

    invoke-direct {v0}, Lcom/instabug/library/screenshot/b;-><init>()V

    sput-object v0, Lcom/instabug/library/screenshot/b;->c:Lcom/instabug/library/screenshot/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private b(Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v1, Lcom/instabug/library/screenshot/b$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/library/screenshot/b$a;-><init>(Lcom/instabug/library/screenshot/b;Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    const-wide/16 v2, 0x1f4

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;ZLcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/screenshot/b;->b:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/instabug/library/screenshot/b;->b:Landroid/content/Intent;

    :goto_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 4
    invoke-direct {p0, p4}, Lcom/instabug/library/screenshot/b;->b(Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/instabug/library/model/f;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/instabug/library/screenshot/b;->a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/instabug/library/model/f;->b()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/library/model/f;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/instabug/library/screenshot/b;->a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    invoke-virtual {p1}, Lcom/instabug/library/model/f;->c()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;->onScreenshotCapturingFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/library/model/f;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/instabug/library/screenshot/b;->a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    invoke-virtual {p1}, Lcom/instabug/library/model/f;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;->onScreenshotCapturedSuccessfully(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method a(Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
    .locals 1
    .param p1    # Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/instabug/library/screenshot/b;->a:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    .line 7
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/instabug/library/screenshot/b;->b:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/model/f;

    invoke-virtual {p0, p1}, Lcom/instabug/library/screenshot/b;->a(Lcom/instabug/library/model/f;)V

    return-void
.end method
