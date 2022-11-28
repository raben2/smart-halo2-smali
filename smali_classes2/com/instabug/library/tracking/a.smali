.class public Lcom/instabug/library/tracking/a;
.super Ljava/lang/Object;
.source "InstabugActivityLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private a:Z

.field private b:Z

.field private c:J

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/instabug/library/tracking/b;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/instabug/library/util/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/tracking/a;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/instabug/library/tracking/a;->b:Z

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/instabug/library/tracking/a;->c:J

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/instabug/library/tracking/a;->d:Ljava/util/Set;

    .line 7
    iput-boolean v0, p0, Lcom/instabug/library/tracking/a;->e:Z

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/tracking/a;->g:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/tracking/a;->f:Ljava/util/Map;

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/instabug/library/_InstabugActivity;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/tracking/b;

    invoke-direct {v0}, Lcom/instabug/library/tracking/b;-><init>()V

    .line 3
    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 5
    iget-object v1, p0, Lcom/instabug/library/tracking/a;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/instabug/library/tracking/f;

    invoke-direct {v1, v0}, Lcom/instabug/library/tracking/f;-><init>(Landroid/view/Window$Callback;)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/instabug/library/tracking/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/instabug/library/tracking/f;

    .line 5
    invoke-virtual {v0}, Lcom/instabug/library/tracking/f;->a()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_0
    return-void
.end method

.method private e(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/util/b;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/instabug/library/util/b;->a()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/tracking/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/instabug/library/util/b;

    new-instance v1, Lcom/instabug/library/tracking/a$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/tracking/a$a;-><init>(Lcom/instabug/library/tracking/a;)V

    invoke-direct {v0, p1, v1}, Lcom/instabug/library/util/b;-><init>(Landroid/app/Activity;Lcom/instabug/library/util/b$b;)V

    .line 9
    iget-object v1, p0, Lcom/instabug/library/tracking/a;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/instabug/library/tracking/a;->d:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->handleActivityCreatedEvent(Landroid/app/Activity;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/a;->d:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IBActivityLifecycleListener"

    const-string v1, "app is getting terminated, clearing user event logs"

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/instabug/library/logging/InstabugUserEventLogger;->getInstance()Lcom/instabug/library/logging/InstabugUserEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/logging/InstabugUserEventLogger;->clearAll()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->handleActivityDestroyedEvent(Landroid/app/Activity;)V

    .line 7
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/instabug/library/_InstabugActivity;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/instabug/library/tracking/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/tracking/b;

    if-eqz v0, :cond_1

    .line 10
    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/tracking/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->handleActivityPausedEvent(Landroid/app/Activity;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/a;->d(Landroid/app/Activity;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/a;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/a;->c(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/tracking/a;->a(Landroid/app/Activity;)V

    .line 4
    iget-boolean v0, p0, Lcom/instabug/library/tracking/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getFreeStorage()J

    move-result-wide v2

    const-wide/16 v4, 0x32

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/instabug/library/Instabug;->pauseSdk()V

    const-string p1, "IBActivityLifecycleListener"

    const-string v0, "Instabug was disabled temporary because of low disk storage \'< 50MB\' and it will be resumed next session one there is available disk storage"

    .line 8
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/instabug/library/tracking/a;->e:Z

    return-void

    .line 15
    :cond_0
    invoke-static {}, Lcom/instabug/library/h;->g()Lcom/instabug/library/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/h;->e()V

    .line 16
    iput-boolean v1, p0, Lcom/instabug/library/tracking/a;->a:Z

    .line 19
    :cond_1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->handleActivityResumedEvent(Landroid/app/Activity;)V

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/instabug/library/tracking/a;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    return-void

    .line 34
    :cond_2
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/PresentationManager;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/instabug/library/tracking/a;->b:Z

    if-eqz v0, :cond_3

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/instabug/library/tracking/a;->c:J

    .line 38
    :cond_3
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/PresentationManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 40
    iget-boolean v0, p0, Lcom/instabug/library/tracking/a;->b:Z

    if-eqz v0, :cond_4

    .line 41
    iput-boolean v1, p0, Lcom/instabug/library/tracking/a;->b:Z

    goto :goto_0

    .line 43
    :cond_4
    instance-of p1, p1, Lcom/instabug/library/_InstabugActivity;

    if-nez p1, :cond_5

    .line 44
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/PresentationManager;->notifyActivityChanged()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SaveInstanceState"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IBActivityLifecycleListener"

    invoke-static {p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->handleActivityStartedEvent(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->handleActivityStoppedEvent(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/instabug/library/tracking/a;->b:Z

    .line 2
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/tracking/a;->a:Z

    .line 2
    iget-boolean p1, p0, Lcom/instabug/library/tracking/a;->e:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->resumeSdk()V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/instabug/library/tracking/a;->e:Z

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/instabug/library/h;->g()Lcom/instabug/library/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/h;->a()V

    :cond_1
    return-void
.end method
