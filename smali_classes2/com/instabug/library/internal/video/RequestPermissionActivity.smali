.class public Lcom/instabug/library/internal/video/RequestPermissionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Lcom/instabug/library/_InstabugActivity;
.implements Lcom/instabug/library/broadcast/a$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "ST_WRITE_TO_STATIC_FROM_INSTANCE_METHOD"
    }
.end annotation


# static fields
.field private static final CREATE_SCREENSHOT:I = 0x65

.field private static final CREATE_SCREEN_CAPTURE:I = 0x7e4

.field protected static final KEY_IS_INITIAL:Ljava/lang/String; = "isInitial"

.field public static final KEY_IS_PERMISSION_GRANDTED:Ljava/lang/String; = "isPermissionGranted"

.field protected static final KEY_IS_VIDEO:Ljava/lang/String; = "isVideo"

.field public static final REQUEST_MEDIA_PROJECTION_PERMISSION:I = 0x7ee

.field private static final REQUEST_SCREEN_RECORDING_MIC_PERMISSION:I = 0x7e6

.field static screenshotCapturingListener:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field isInitial:Z

.field isVideo:Z

.field private sdkInvokedBroadcast:Lcom/instabug/library/broadcast/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/instabug/library/broadcast/a;

    invoke-direct {v0, p0}, Lcom/instabug/library/broadcast/a;-><init>(Lcom/instabug/library/broadcast/a$a;)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->sdkInvokedBroadcast:Lcom/instabug/library/broadcast/a;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->isVideo:Z

    .line 12
    iput-boolean v0, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->isInitial:Z

    return-void
.end method

.method private requestAudioRecordingPermission()V
    .locals 2

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 1
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7e6

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->requestScreenRecording()V

    :goto_1
    return-void
.end method

.method private requestScreenRecording()V
    .locals 3

    const-string v0, "media_projection"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    .line 2
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticIntentData()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 5
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticResultCode()I

    move-result v0

    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticIntentData()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/instabug/library/internal/video/ScreenRecordingService;->a(Landroid/content/Context;ILandroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticResultCode()I

    move-result v0

    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticIntentData()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Lcom/instabug/library/internal/video/ScreenRecordingService;->a(Landroid/content/Context;ILandroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->finish()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7e4

    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/16 v2, 0x7e4

    if-ne p1, v2, :cond_3

    const/4 p1, 0x0

    if-ne p2, v0, :cond_2

    .line 5
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticResultCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticIntentData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {p3}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->setStaticIntentData(Landroid/content/Intent;)V

    .line 7
    invoke-static {p2}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->setStaticResultCode(I)V

    .line 9
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticResultCode()I

    move-result p2

    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticIntentData()Landroid/content/Intent;

    move-result-object p3

    invoke-static {p0, p2, p3, p1}, Lcom/instabug/library/internal/video/ScreenRecordingService;->a(Landroid/content/Context;ILandroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 12
    :cond_1
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticResultCode()I

    move-result p2

    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getStaticIntentData()Landroid/content/Intent;

    move-result-object p3

    invoke-static {p0, p2, p3, p1}, Lcom/instabug/library/internal/video/ScreenRecordingService;->a(Landroid/content/Context;ILandroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_6

    .line 15
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/instabug/library/settings/SettingsManager;->setAutoScreenRecordingDenied(Z)V

    .line 16
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    move-result-object p2

    new-instance p3, Lcom/instabug/library/internal/video/ScreenRecordingEvent;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;-><init>(ILandroid/net/Uri;)V

    invoke-virtual {p2, p3}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/16 v2, 0x65

    if-ne p1, v2, :cond_6

    if-ne p2, v0, :cond_5

    .line 21
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/instabug/library/settings/SettingsManager;->setProcessingForeground(Z)V

    .line 22
    iget-boolean p1, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->isInitial:Z

    if-nez p1, :cond_4

    .line 23
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "isPermissionGranted"

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x7ee

    .line 25
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setResult(ILandroid/content/Intent;)V

    .line 27
    :cond_4
    sget-object p1, Lcom/instabug/library/screenshot/b;->c:Lcom/instabug/library/screenshot/b;

    iget-boolean v0, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->isInitial:Z

    sget-object v1, Lcom/instabug/library/internal/video/RequestPermissionActivity;->screenshotCapturingListener:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/instabug/library/screenshot/b;->a(ILandroid/content/Intent;ZLcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    goto :goto_2

    .line 28
    :cond_5
    sget-object p1, Lcom/instabug/library/internal/video/RequestPermissionActivity;->screenshotCapturingListener:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    if-eqz p1, :cond_6

    .line 29
    sget-object p1, Lcom/instabug/library/internal/video/RequestPermissionActivity;->screenshotCapturingListener:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "User declined media-projection permission"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;->onScreenshotCapturingFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 33
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 35
    :goto_1
    invoke-virtual {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->finish()V

    .line 36
    throw p1

    .line 37
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/StatusBarUtils;->darkenStatusBarColor(Landroid/app/Activity;I)V

    :cond_0
    if-nez p1, :cond_3

    const-string p1, "media_projection"

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isVideo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->isVideo:Z

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isInitial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->isInitial:Z

    .line 12
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object p1

    .line 13
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->isVideo:Z

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/settings/SettingsManager;->getAutoScreenRecordingAudioCapturingState()Lcom/instabug/library/Feature$State;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p1, v0, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->requestAudioRecordingPermission()V

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->requestScreenRecording()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x65

    .line 20
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->screenshotCapturingListener:Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->sdkInvokedBroadcast:Lcom/instabug/library/broadcast/a;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    array-length v0, p3

    const/16 v1, 0x7e6

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->requestScreenRecording()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->requestScreenRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/internal/video/RequestPermissionActivity;->sdkInvokedBroadcast:Lcom/instabug/library/broadcast/a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "SDK invoked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onSDKInvoked(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setRequestPermissionScreenShown(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setRequestPermissionScreenShown(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/internal/video/RequestPermissionActivity;->finish()V

    return-void
.end method
