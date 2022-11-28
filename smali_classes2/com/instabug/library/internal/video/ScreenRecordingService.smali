.class public Lcom/instabug/library/internal/video/ScreenRecordingService;
.super Landroid/app/Service;
.source "ScreenRecordingService.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/internal/video/ScreenRecordingService$Action;
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/disposables/Disposable;

.field private final b:Lcom/instabug/library/internal/video/b$c;

.field private c:Lcom/instabug/library/internal/video/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field private e:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/internal/video/ScreenRecordingService$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/video/ScreenRecordingService$a;-><init>(Lcom/instabug/library/internal/video/ScreenRecordingService;)V

    iput-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->b:Lcom/instabug/library/internal/video/b$c;

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Z)Landroid/content/Intent;
    .locals 2
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "result-code"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "is.manual.screen.recording"

    .line 4
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "data"

    .line 5
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 6
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isScreenCurrentlyRecorded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setScreenCurrentlyRecorded(Z)V

    .line 8
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->cancel()V

    .line 10
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->c:Lcom/instabug/library/internal/video/b;

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/instabug/library/internal/video/ScreenRecordingService$e;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/video/ScreenRecordingService$e;-><init>(Lcom/instabug/library/internal/video/ScreenRecordingService;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/video/b;->a(Lcom/instabug/library/internal/video/d/f$d;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/library/internal/video/ScreenRecordingService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->d:Z

    return p0
.end method

.method private b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/video/ScreenRecordingService$d;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/video/ScreenRecordingService$d;-><init>(Lcom/instabug/library/internal/video/ScreenRecordingService;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->f:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/instabug/library/internal/video/ScreenRecordingService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->a()V

    return-void
.end method

.method static synthetic c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->c:Lcom/instabug/library/internal/video/b;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->d:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->d()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->b()V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/video/ScreenRecordingService$c;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/video/ScreenRecordingService$c;-><init>(Lcom/instabug/library/internal/video/ScreenRecordingService;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->e:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/library/core/eventbus/SessionStateEventBus;->getInstance()Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/video/ScreenRecordingService$b;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/video/ScreenRecordingService$b;-><init>(Lcom/instabug/library/internal/video/ScreenRecordingService;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->a:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->a:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->a:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->e()V

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 7
    sget v0, Lcom/instabug/library/R$string;->ibg_screen_recording_notification_title:I

    const/16 v1, 0x2227

    invoke-static {p0, v0, v1}, Lcom/instabug/library/util/g;->a(Landroid/app/Service;II)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isScreenCurrentlyRecorded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setScreenCurrentlyRecorded(Z)V

    .line 5
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->e:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->f:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->f()V

    const/16 v0, 0x2227

    .line 19
    invoke-static {p0, v0}, Lcom/instabug/library/util/g;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "STRICT_MODE_VIOLATION"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "result-code"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "data"

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v0, :cond_1

    if-nez v2, :cond_2

    .line 6
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t start service. Result code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScreenRecordingService"

    invoke-static {v4, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget v3, Lcom/instabug/library/R$string;->feature_requests_error_state_title:I

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 9
    invoke-static {}, Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/ScreenRecordingEventBus;

    move-result-object v1

    new-instance v3, Lcom/instabug/library/internal/video/ScreenRecordingEvent;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;-><init>(ILandroid/net/Uri;)V

    .line 10
    invoke-virtual {v1, v3}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    const-string v1, "is.manual.screen.recording"

    const/4 v3, 0x1

    .line 14
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->d:Z

    .line 16
    invoke-direct {p0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c()V

    .line 18
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isScreenCurrentlyRecorded()Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_3

    .line 19
    new-instance v1, Lcom/instabug/library/internal/video/b;

    iget-object v4, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->b:Lcom/instabug/library/internal/video/b$c;

    invoke-direct {v1, p0, v4, v0, v2}, Lcom/instabug/library/internal/video/b;-><init>(Landroid/content/Context;Lcom/instabug/library/internal/video/b$c;ILandroid/content/Intent;)V

    iput-object v1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->c:Lcom/instabug/library/internal/video/b;

    .line 20
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instabug/library/settings/SettingsManager;->setScreenCurrentlyRecorded(Z)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 26
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 3
    iget-boolean p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService;->d:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->a()V

    :cond_0
    return-void
.end method
