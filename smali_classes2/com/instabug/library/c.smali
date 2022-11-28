.class Lcom/instabug/library/c;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Lcom/instabug/library/broadcast/a$a;


# instance fields
.field private final a:Lcom/instabug/library/broadcast/a;

.field private final b:Lcom/instabug/library/network/e/e/f;

.field private final c:Lcom/instabug/library/m/f;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Lcom/instabug/library/util/TaskDebouncer;

.field private final m:Lcom/instabug/library/util/TaskDebouncer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/broadcast/a;

    invoke-direct {v0, p0}, Lcom/instabug/library/broadcast/a;-><init>(Lcom/instabug/library/broadcast/a$a;)V

    iput-object v0, p0, Lcom/instabug/library/c;->a:Lcom/instabug/library/broadcast/a;

    .line 20
    new-instance v0, Lcom/instabug/library/util/TaskDebouncer;

    const-wide/16 v1, 0x7530

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/util/TaskDebouncer;-><init>(J)V

    iput-object v0, p0, Lcom/instabug/library/c;->l:Lcom/instabug/library/util/TaskDebouncer;

    .line 21
    new-instance v0, Lcom/instabug/library/util/TaskDebouncer;

    const-wide/16 v1, 0xbb8

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/util/TaskDebouncer;-><init>(J)V

    iput-object v0, p0, Lcom/instabug/library/c;->m:Lcom/instabug/library/util/TaskDebouncer;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/library/c;->d:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-static {p1}, Lcom/instabug/library/network/e/e/f;->a(Landroid/content/Context;)Lcom/instabug/library/network/e/e/f;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/c;->b:Lcom/instabug/library/network/e/e/f;

    .line 26
    invoke-static {p1}, Lcom/instabug/library/m/f;->a(Landroid/content/Context;)Lcom/instabug/library/m/f;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/c;->c:Lcom/instabug/library/m/f;

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/d;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking if should show welcome message, firstRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->isFirstRun()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", SettingsManager.getInstance().getWelcomeMessageState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->getWelcomeMessageState()Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugDelegate"

    .line 5
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InstabugDelegate"

    const-string v1, "Showing Intro Message"

    .line 10
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 12
    new-instance v1, Lcom/instabug/library/c$s;

    invoke-direct {v1, p0}, Lcom/instabug/library/c$s;-><init>(Lcom/instabug/library/c;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/instabug/library/c$o;

    invoke-direct {v1, p0, v0}, Lcom/instabug/library/c$o;-><init>(Lcom/instabug/library/c;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Context is null."

    .line 13
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private D()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Unable to start migration because of a null context"

    .line 2
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/migration/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method private E()V
    .locals 2

    const-string v0, "InstabugDelegate"

    const-string v1, "Starting Instabug SDK invocation listeners"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->listen()V

    return-void
.end method

.method private F()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    const-string v0, "InstabugDelegate"

    const-string v1, "Stopping Instabug SDK invocation listeners"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->sleep()V

    return-void
.end method

.method private G()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/c$l;

    invoke-direct {v0, p0}, Lcom/instabug/library/c$l;-><init>(Lcom/instabug/library/c;)V

    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/c;->e:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/SessionStateEventBus;->getInstance()Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/c$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/c$a;-><init>(Lcom/instabug/library/c;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/c;->g:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private I()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/c$m;

    invoke-direct {v0, p0}, Lcom/instabug/library/c$m;-><init>(Lcom/instabug/library/c;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c;->e:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/instabug/library/c;->e:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/instabug/library/c;->g:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c;->h:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/instabug/library/c;->h:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c;->i:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/instabug/library/c;->i:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/library/c;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/instabug/library/c;->k:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/library/c;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/library/c;->j:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->o()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/c;Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/c;->a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/c;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/c;->b(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    return-void
.end method

.method private a(Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
    .locals 4

    .line 58
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const v3, 0x604c026e

    if-eq v1, v3, :cond_1

    const v3, 0x67a27890

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "invocation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "foreground_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_2

    .line 70
    :cond_3
    invoke-direct {p0}, Lcom/instabug/library/c;->M()V

    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "available"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 73
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result p1

    if-nez p1, :cond_5

    .line 74
    invoke-direct {p0, p2}, Lcom/instabug/library/c;->b(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    .line 78
    invoke-direct {p0}, Lcom/instabug/library/c;->M()V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/instabug/library/internal/video/ScreenRecordingService$Action;)V
    .locals 2

    .line 79
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->autoScreenRecordingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending auto event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugDelegate"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->L()V

    return-void
.end method

.method private b(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/c$e;

    invoke-direct {v1, p0, p1}, Lcom/instabug/library/c$e;-><init>(Lcom/instabug/library/c;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/PresentationManager;->show(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->y()V

    return-void
.end method

.method static synthetic d(Lcom/instabug/library/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->t()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->M()V

    return-void
.end method

.method static synthetic f(Lcom/instabug/library/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/c;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->A()V

    return-void
.end method

.method static synthetic h(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->J()V

    return-void
.end method

.method static synthetic i(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->F()V

    return-void
.end method

.method static synthetic j(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->u()V

    return-void
.end method

.method static synthetic k(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->G()V

    return-void
.end method

.method static synthetic l(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->E()V

    return-void
.end method

.method private m()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isFirstRunAfterEncryptorUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/library/c$k;

    invoke-direct {v0, p0}, Lcom/instabug/library/c$k;-><init>(Lcom/instabug/library/c;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->n()V

    return-void
.end method

.method static synthetic n(Lcom/instabug/library/c;)Lcom/instabug/library/m/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/c;->c:Lcom/instabug/library/m/f;

    return-object p0
.end method

.method private n()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "RV_RETURN_VALUE_IGNORED_BAD_PRACTICE"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/storage/DiskUtils;->getInstabugDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/instabug/library/util/DiskUtils;->listFilesInDirectory(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/library/util/FileUtils;->isFileRelatedToBugOrCrashReport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->setFirstRunAfterEncryptorUpdate(Z)V

    :cond_2
    return-void
.end method

.method private o()V
    .locals 1

    .line 2
    new-instance v0, Lcom/instabug/library/c$n;

    invoke-direct {v0, p0}, Lcom/instabug/library/c$n;-><init>(Lcom/instabug/library/c;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic o(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->x()V

    return-void
.end method

.method static synthetic p(Lcom/instabug/library/c;)Lcom/instabug/library/util/TaskDebouncer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/c;->l:Lcom/instabug/library/util/TaskDebouncer;

    return-object p0
.end method

.method private p()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->start()V

    return-void
.end method

.method private q()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/a;

    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/library/internal/storage/cache/db/a;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->init(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method static synthetic q(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->z()V

    return-void
.end method

.method private r()V
    .locals 1

    .line 2
    new-instance v0, Lcom/instabug/library/i/a;

    invoke-direct {v0}, Lcom/instabug/library/i/a;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static synthetic r(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->I()V

    return-void
.end method

.method private s()V
    .locals 2

    const-string v0, "InstabugDelegate"

    const-string v1, "initialize Instabug InvocationMode Manager"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->init()V

    return-void
.end method

.method static synthetic s(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/c;->C()V

    return-void
.end method

.method static synthetic t(Lcom/instabug/library/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/c;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private t()Z
    .locals 4

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInstabugInvocationEvents()[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    sget-object v1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->NONE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c;->f:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3
    iput-object v1, p0, Lcom/instabug/library/c;->f:Lio/reactivex/disposables/Disposable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/c;->j:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 7
    iput-object v1, p0, Lcom/instabug/library/c;->j:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/UserAttributesCacheManager;->prepareCaches(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "InstabugDelegate"

    const-string v1, "can\'t execute prepareCaches() due to null context"

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private w()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->o()V

    return-void
.end method

.method private x()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator()Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/orchestrator/b;

    .line 2
    invoke-static {}, Lcom/instabug/library/l/b/j/c;->b()Lcom/instabug/library/l/b/j/c;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/instabug/library/l/b/i/b;

    invoke-direct {v1, v2, v3}, Lcom/instabug/library/internal/orchestrator/b;-><init>(Lcom/instabug/library/l/b/i/b;[Lcom/instabug/library/l/b/i/b;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrate()V

    return-void
.end method

.method private y()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/network/service/synclogs/b;->c()Lcom/instabug/library/network/service/synclogs/b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/instabug/library/user/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/network/service/synclogs/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/instabug/library/Instabug;->getAppToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/Instabug;->getAppToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/network/service/synclogs/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c;->b:Lcom/instabug/library/network/e/e/f;

    invoke-virtual {v0}, Lcom/instabug/library/network/e/e/f;->b()Lio/reactivex/Completable;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    new-instance v2, Lcom/instabug/library/c$p;

    invoke-direct {v2, p0}, Lcom/instabug/library/c$p;-><init>(Lcom/instabug/library/c;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/c;->f:Lio/reactivex/disposables/Disposable;

    .line 13
    iget-object v0, p0, Lcom/instabug/library/c;->m:Lcom/instabug/library/util/TaskDebouncer;

    new-instance v1, Lcom/instabug/library/c$q;

    invoke-direct {v1, p0}, Lcom/instabug/library/c$q;-><init>(Lcom/instabug/library/c;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/TaskDebouncer;->debounce(Ljava/lang/Runnable;)V

    .line 22
    invoke-static {}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator()Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/c$r;

    invoke-direct {v1, p0}, Lcom/instabug/library/c$r;-><init>(Lcom/instabug/library/c;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrate()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 92
    invoke-static {p1}, Lcom/instabug/library/util/filters/Filters;->applyOn(Ljava/lang/Object;)Lcom/instabug/library/util/filters/Filters;

    move-result-object p1

    .line 93
    invoke-static {}, Lcom/instabug/library/util/filters/a;->e()Lcom/instabug/library/util/filters/Filter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/util/filters/Filters;->apply(Lcom/instabug/library/util/filters/Filter;)Lcom/instabug/library/util/filters/Filters;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/instabug/library/util/filters/a;->a()Lcom/instabug/library/util/filters/b/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/util/filters/Filters;->thenDoReturn(Lcom/instabug/library/util/filters/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected a()V
    .locals 2

    .line 8
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->VP_CUSTOMIZATION:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 10
    invoke-static {}, Lcom/instabug/library/j/a;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 6
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->e()V

    .line 7
    invoke-direct {p0}, Lcom/instabug/library/c;->v()V

    return-void
.end method

.method a(Lcom/instabug/library/Feature$State;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->SESSION_PROFILER:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1, p1}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 88
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-static {}, Lcom/instabug/library/n/a;->d()Lcom/instabug/library/n/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/n/a;->b()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/instabug/library/n/a;->d()Lcom/instabug/library/n/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/n/a;->c()V

    :goto_0
    return-void
.end method

.method public a(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Instabug"

    const-string v0, "Cannot show intro message while SDK is Disabled"

    .line 12
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;->DISABLED:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    if-ne p1, v0, :cond_1

    const-string p1, "Instabug"

    const-string v0, "Cannot show onboarding message while WelcomeMessageState is DISABLED"

    .line 18
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_1
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInstabugInvocationEvents()[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_6

    .line 24
    invoke-direct {p0}, Lcom/instabug/library/c;->t()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isAppOnForeground()Z

    move-result v0

    if-nez v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/instabug/library/c;->i:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_5

    .line 33
    new-instance v0, Lcom/instabug/library/c$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/c$b;-><init>(Lcom/instabug/library/c;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    .line 34
    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/c;->i:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result v0

    if-nez v0, :cond_4

    .line 51
    invoke-direct {p0, p1}, Lcom/instabug/library/c;->b(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    goto :goto_0

    .line 53
    :cond_4
    iget-object v0, p0, Lcom/instabug/library/c;->i:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_5

    .line 55
    new-instance v0, Lcom/instabug/library/c$c;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/c$c;-><init>(Lcom/instabug/library/c;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    .line 56
    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/c;->i:Lio/reactivex/disposables/Disposable;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p1, "Instabug"

    const-string v0, "Cannot show onboarding message while invocation event in NONE"

    .line 57
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 95
    new-instance v0, Lcom/instabug/library/c$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/instabug/library/c$h;-><init>(Lcom/instabug/library/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/util/Locale;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->getInstabugLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/instabug/library/settings/SettingsManager;->setInstabugLocale(Ljava/util/Locale;)V

    .line 85
    invoke-static {v0, p1}, Lcom/instabug/library/core/plugin/a;->a(Ljava/util/Locale;Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public varargs a([Landroid/view/View;)V
    .locals 1
    .param p1    # [Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/SettingsManager;->addPrivateViews([Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 6
    new-instance v0, Lcom/instabug/library/c$j;

    invoke-direct {v0, p0}, Lcom/instabug/library/c$j;-><init>(Lcom/instabug/library/c;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/d;->c(Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/instabug/library/c$i;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/c$i;-><init>(Lcom/instabug/library/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs b([Landroid/view/View;)V
    .locals 1
    .param p1    # [Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/SettingsManager;->removePrivateViews([Landroid/view/View;)V

    return-void
.end method

.method public c()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributeCacheManager;->retrieveAll()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/filters/Filters;->applyOn(Ljava/lang/Object;)Lcom/instabug/library/util/filters/Filters;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/instabug/library/util/filters/a;->g()Lcom/instabug/library/util/filters/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/filters/Filters;->apply(Lcom/instabug/library/util/filters/Filter;)Lcom/instabug/library/util/filters/Filters;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/instabug/library/util/filters/Filters;->thenGet()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public varargs c([Landroid/view/View;)V
    .locals 2
    .param p1    # [Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object v0

    const-string v1, "Instabug.setViewsAsPrivate() has been deprecated, and while it is still function, it will be completely removed in a future release. for more details about this API\'s replacement, check the docs here: https://docs.instabug.com/docs/android-repro-steps#section-private-views"

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/settings/SettingsManager;->addPrivateViews([Landroid/view/View;)V

    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "InstabugDelegate"

    const-string v1, "Application context instance equal null"

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method e()V
    .locals 2

    const-string v0, "InstabugDelegate"

    const-string v1, "Pausing Instabug SDK functionality temporary"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/instabug/library/InstabugState;->DISABLED:Lcom/instabug/library/InstabugState;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    .line 4
    new-instance v0, Lcom/instabug/library/c$f;

    invoke-direct {v0, p0}, Lcom/instabug/library/c$f;-><init>(Lcom/instabug/library/c;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Unable to register a LocalBroadcast receiver because of a null context"

    .line 3
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/c;->a:Lcom/instabug/library/broadcast/a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "SDK invoked"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method g()V
    .locals 2

    const-string v0, "InstabugDelegate"

    const-string v1, "Resuming Instabug SDK functionality temporary"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    .line 4
    new-instance v0, Lcom/instabug/library/c$g;

    invoke-direct {v0, p0}, Lcom/instabug/library/c$g;-><init>(Lcom/instabug/library/c;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method h()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->INSTABUG:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/c;->i()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/library/InstabugState;->DISABLED:Lcom/instabug/library/InstabugState;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    :goto_0
    const-string v0, "InstabugDelegate"

    const-string v1, "Initializing invocation manager"

    .line 8
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/instabug/library/c;->s()V

    return-void
.end method

.method i()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/core/plugin/a;->b(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0}, Lcom/instabug/library/c;->m()V

    .line 6
    invoke-direct {p0}, Lcom/instabug/library/c;->H()V

    .line 7
    invoke-direct {p0}, Lcom/instabug/library/c;->G()V

    const-string v0, "InstabugDelegate"

    const-string v1, "Initializing the exception handler"

    .line 8
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/instabug/library/c;->r()V

    const-string v0, "InstabugDelegate"

    const-string v1, "Starting Instabug SDK functionality"

    .line 10
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    const-string v0, "InstabugDelegate"

    const-string v1, "show intro dialog if valid"

    .line 12
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/instabug/library/c;->B()V

    const-string v0, "InstabugDelegate"

    const-string v1, "Initializing database manager"

    .line 14
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/instabug/library/c;->q()V

    const-string v0, "InstabugDelegate"

    const-string v1, "Disposing expired data"

    .line 16
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/instabug/library/l/b/a;->c()Lcom/instabug/library/l/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/l/b/b;->b()V

    const-string v0, "InstabugDelegate"

    const-string v1, "run valid migration"

    .line 18
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/instabug/library/c;->D()V

    const-string v0, "InstabugDelegate"

    const-string v1, "Registering broadcasts"

    .line 20
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/instabug/library/c;->f()V

    const-string v0, "InstabugDelegate"

    const-string v1, "Preparing user state"

    .line 22
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/instabug/library/c;->w()V

    const-string v0, "InstabugDelegate"

    const-string v1, "Initializing auto screen recording"

    .line 24
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/instabug/library/c;->p()V

    .line 26
    invoke-static {}, Lcom/instabug/library/n/a;->d()Lcom/instabug/library/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/n/a;->b()V

    return-void
.end method

.method j()V
    .locals 2

    const-string v0, "InstabugDelegate"

    const-string v1, "Stopping Instabug SDK functionality"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/instabug/library/InstabugState;->DISABLED:Lcom/instabug/library/InstabugState;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    const-string v0, "InstabugDelegate"

    const-string v1, "Un-registering broadcasts"

    .line 4
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/n/a;->d()Lcom/instabug/library/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/n/a;->c()V

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/c;->l()V

    .line 8
    invoke-direct {p0}, Lcom/instabug/library/c;->K()V

    .line 9
    invoke-direct {p0}, Lcom/instabug/library/c;->J()V

    .line 10
    invoke-direct {p0}, Lcom/instabug/library/c;->F()V

    .line 11
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->h()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/c;->h:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/library/c$d;

    invoke-direct {v0, p0}, Lcom/instabug/library/c$d;-><init>(Lcom/instabug/library/c;)V

    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/c;->h:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/c;->a:Lcom/instabug/library/broadcast/a;

    .line 4
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onSDKInvoked(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK Invoked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugDelegate"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->TAKING_SCREENSHOT:Lcom/instabug/library/InstabugState;

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->RECORDING_VIDEO:Lcom/instabug/library/InstabugState;

    if-eq v0, v1, :cond_3

    .line 4
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->TAKING_SCREENSHOT_FOR_CHAT:Lcom/instabug/library/InstabugState;

    if-eq v0, v1, :cond_3

    .line 5
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->RECORDING_VIDEO_FOR_CHAT:Lcom/instabug/library/InstabugState;

    if-eq v0, v1, :cond_3

    .line 6
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->IMPORTING_IMAGE_FROM_GALLERY_FOR_CHAT:Lcom/instabug/library/InstabugState;

    if-eq v0, v1, :cond_3

    if-eqz p1, :cond_0

    .line 9
    sget-object p1, Lcom/instabug/library/InstabugState;->INVOKED:Lcom/instabug/library/InstabugState;

    invoke-static {p1}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    .line 12
    sget-object p1, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_TRIM_KEEP:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    invoke-direct {p0, p1}, Lcom/instabug/library/c;->a(Lcom/instabug/library/internal/video/ScreenRecordingService$Action;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    invoke-static {p1}, Lcom/instabug/library/util/OrientationUtils;->unlockOrientation(Landroid/content/Context;)V

    .line 20
    :cond_1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/Feature;->INSTABUG:Lcom/instabug/library/Feature;

    invoke-virtual {p1, v0}, Lcom/instabug/library/d;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    sget-object p1, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    invoke-static {p1}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    goto :goto_0

    .line 24
    :cond_2
    sget-object p1, Lcom/instabug/library/InstabugState;->DISABLED:Lcom/instabug/library/InstabugState;

    invoke-static {p1}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    :cond_3
    :goto_0
    return-void
.end method
