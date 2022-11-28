.class public Lcom/instabug/library/screenshot/ScreenshotProvider;
.super Ljava/lang/Object;
.source "ScreenshotProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;
    }
.end annotation


# direct methods
.method public static declared-synchronized a(Landroid/app/Activity;Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
    .locals 5

    const-class v0, Lcom/instabug/library/screenshot/ScreenshotProvider;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    const-class v1, Lcom/instabug/library/core/InitialScreenshotHelper;

    const-string v3, "Couldn\'t take initial screenshot due to low memory"

    invoke-static {v1, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/Throwable;

    const-string v3, "Your activity is currently in low memory"

    invoke-direct {v1, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;->onScreenshotCapturingFailed(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p0}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    sget v1, Lcom/instabug/library/R$string;->instabug_str_capturing_screenshot_error:I

    invoke-static {p1, v1, p0}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "ScreemshotProvider"

    const-string v3, "start capture screenshot"

    .line 13
    invoke-static {v1, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-static {p0}, Lcom/instabug/library/k/b;->a(Landroid/app/Activity;)Lcom/instabug/library/k/b;

    move-result-object p0

    new-instance v1, Lcom/instabug/library/screenshot/ScreenshotProvider$a;

    invoke-direct {v1, p1}, Lcom/instabug/library/screenshot/ScreenshotProvider$a;-><init>(Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    const/4 v3, 0x5

    new-array v3, v3, [I

    sget v4, Lcom/instabug/library/R$id;->instabug_decor_view:I

    aput v4, v3, v2

    const/4 v2, 0x1

    sget v4, Lcom/instabug/library/R$id;->instabug_extra_screenshot_button:I

    aput v4, v3, v2

    const/4 v2, 0x2

    sget v4, Lcom/instabug/library/R$id;->instabug_floating_button:I

    aput v4, v3, v2

    const/4 v2, 0x3

    sget v4, Lcom/instabug/library/R$id;->instabug_in_app_notification:I

    aput v4, v3, v2

    const/4 v2, 0x4

    sget v4, Lcom/instabug/library/R$id;->instabug_intro_dialog:I

    aput v4, v3, v2

    .line 16
    invoke-virtual {p0, v1, v3}, Lcom/instabug/library/k/b;->a(Lcom/instabug/library/k/d/a;[I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 34
    :goto_0
    :try_start_3
    invoke-interface {p1, p0}, Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;->onScreenshotCapturingFailed(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 38
    new-instance p0, Ljava/lang/Exception;

    const-string v1, "Can\'t capture screenshot due to null activity"

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;->onScreenshotCapturingFailed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_2
    :goto_2
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(ZLandroid/app/Activity;Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
    .locals 3

    const-class v0, Lcom/instabug/library/screenshot/ScreenshotProvider;

    monitor-enter v0

    :try_start_0
    const-string v1, "ScreemshotProvider"

    const-string v2, "start capture screenshot Using MediaProjection"

    .line 39
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isScreenCurrentlyRecorded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {}, Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_TRIM_KEEP:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    invoke-virtual {v1, v2}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    .line 45
    invoke-static {p1, v1, p0, p2}, Lcom/instabug/library/internal/video/RequestPermissionActivityLauncher;->start(Landroid/app/Activity;ZZLcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
