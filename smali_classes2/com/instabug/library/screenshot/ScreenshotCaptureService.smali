.class public Lcom/instabug/library/screenshot/ScreenshotCaptureService;
.super Landroid/app/Service;
.source "ScreenshotCaptureService.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "The service onStartCommand() can be called many times while onCreate() is called once"
    value = {
        "DMI_RANDOM_USED_ONLY_ONCE"
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field private a:Landroid/media/projection/MediaProjection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instabug/library/screenshot/ScreenshotCaptureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "instabug.intent.extra.MEDIA_PROJ_INTENT"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/instabug/library/screenshot/ScreenshotCaptureService;)Landroid/media/projection/MediaProjection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->a:Landroid/media/projection/MediaProjection;

    return-object p0
.end method

.method private a(Landroid/hardware/display/VirtualDisplay;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/instabug/library/screenshot/ScreenshotCaptureService$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/instabug/library/screenshot/ScreenshotCaptureService$c;-><init>(Lcom/instabug/library/screenshot/ScreenshotCaptureService;Landroid/hardware/display/VirtualDisplay;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V

    invoke-virtual {p3, v0}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenCaptureEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/screenshot/ScreenshotCaptureService$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/screenshot/ScreenshotCaptureService$a;-><init>(Lcom/instabug/library/screenshot/ScreenshotCaptureService;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    .line 2
    sget v3, Lcom/instabug/library/R$string;->ibg_screen_recording_notification_title:I

    sget v4, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->b:I

    invoke-static {v0, v3, v4}, Lcom/instabug/library/util/g;->a(Landroid/app/Service;II)V

    :cond_0
    const-string v3, "instabug.intent.extra.MEDIA_PROJ_INTENT"

    .line 5
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    const-string v4, "ScreenshotCaptureService"

    const-string v5, "Passed Media projection intent is null"

    .line 8
    invoke-static {v4, v5}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string v4, "media_projection"

    .line 11
    invoke-virtual {v0, v4}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/projection/MediaProjectionManager;

    .line 12
    iget-object v5, v0, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->a:Landroid/media/projection/MediaProjection;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {v5}, Landroid/media/projection/MediaProjection;->stop()V

    .line 14
    iput-object v6, v0, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->a:Landroid/media/projection/MediaProjection;

    :cond_2
    const/4 v5, -0x1

    .line 16
    invoke-virtual {v4, v5, v3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v3

    iput-object v3, v0, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->a:Landroid/media/projection/MediaProjection;

    if-nez v3, :cond_3

    .line 18
    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 20
    :cond_3
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 23
    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 24
    iget v11, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 25
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 27
    invoke-static {v4, v3, v2, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    .line 28
    iget-object v7, v0, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->a:Landroid/media/projection/MediaProjection;

    .line 34
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v13

    const-string v8, "screencap"

    const/16 v12, 0x9

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v9, v4

    move v10, v3

    .line 35
    invoke-virtual/range {v7 .. v15}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v5

    .line 43
    new-instance v7, Lcom/instabug/library/screenshot/ScreenshotCaptureService$b;

    invoke-direct {v7, v0, v4, v3}, Lcom/instabug/library/screenshot/ScreenshotCaptureService$b;-><init>(Lcom/instabug/library/screenshot/ScreenshotCaptureService;II)V

    invoke-virtual {v2, v7, v6}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 55
    iget-object v3, v0, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->a:Landroid/media/projection/MediaProjection;

    invoke-direct {v0, v5, v2, v3}, Lcom/instabug/library/screenshot/ScreenshotCaptureService;->a(Landroid/hardware/display/VirtualDisplay;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V

    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    const-string v2, "ScreenshotCaptureService"

    const-string v3, "Current activity is null"

    .line 58
    invoke-static {v2, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "ScreenshotCaptureService"

    const-string v4, "Firing Intent is null"

    .line 61
    invoke-static {v3, v4}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 64
    :goto_0
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
