.class public Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;
.super Ljava/lang/Object;
.source "InstabugInternalTrackingDelegate.java"


# static fields
.field private static INSTANCE:Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate; = null

.field public static final TAG:Ljava/lang/String; = "InstabugInternalTrackingDelegate"


# instance fields
.field private currentActivity:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final navigableViewsTrackingDelegate:Lcom/instabug/library/tracking/g;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->registerActivityLifecycleListener(Landroid/app/Application;)V

    .line 5
    :cond_0
    new-instance p1, Lcom/instabug/library/tracking/g;

    invoke-direct {p1}, Lcom/instabug/library/tracking/g;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->navigableViewsTrackingDelegate:Lcom/instabug/library/tracking/g;

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->INSTANCE:Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->INSTANCE:Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    invoke-direct {v0, p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->INSTANCE:Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    :cond_0
    return-void
.end method

.method private isNotInstabugActivity(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/instabug/library/_InstabugActivity;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isReproStepsEnable()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUserTrackingStepsEnable()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->TRACK_USER_STEPS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerActivityLifecycleListener(Landroid/app/Application;)V
    .locals 2

    const-string v0, "InstabugInternalTrackingDelegate"

    const-string v1, "Registering activity lifecycle listener"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/instabug/library/tracking/a;

    invoke-direct {v0}, Lcom/instabug/library/tracking/a;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0
.end method

.method public getTargetActivity()Landroid/app/Activity;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    .line 6
    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_2
    return-object v1
.end method

.method handleActivityCreatedEvent(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isNotInstabugActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugInternalTrackingDelegate"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTIVITY_CREATED"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ACTIVITY_CREATED"

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_1
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->CREATED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method handleActivityDestroyedEvent(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isNotInstabugActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugInternalTrackingDelegate"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTIVITY_DESTROYED"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTIVITY_DESTROYED"

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 18
    iget-object p1, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 23
    :cond_2
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->DESTROYED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method handleActivityPausedEvent(Landroid/app/Activity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isNotInstabugActivity(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_1

    const-string p1, "InstabugInternalTrackingDelegate"

    const-string v0, "No activity was set earlier than this call. Doing nothing"

    .line 6
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "InstabugInternalTrackingDelegate"

    const-string v0, "You\'re trying to pause an activity that is not the current activity! Please make sure you\'re calling onCurrentActivityPaused and onCurrentActivityResumed on every activity"

    .line 10
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " paused"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InstabugInternalTrackingDelegate"

    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTIVITY_PAUSED"

    invoke-virtual {v0, v2, v3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTIVITY_PAUSED"

    .line 23
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_4
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->PAUSED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->navigableViewsTrackingDelegate:Lcom/instabug/library/tracking/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/g;->a(Landroid/app/Activity;)V

    return-void
.end method

.method handleActivityResumedEvent(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isNotInstabugActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resumed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugInternalTrackingDelegate"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTIVITY_RESUMED"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTIVITY_RESUMED"

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->navigableViewsTrackingDelegate:Lcom/instabug/library/tracking/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/g;->b(Landroid/app/Activity;)V

    .line 19
    :cond_1
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->RESUMED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method handleActivityStartedEvent(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isNotInstabugActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugInternalTrackingDelegate"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTIVITY_STARTED"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ACTIVITY_STARTED"

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->STARTED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method handleActivityStoppedEvent(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isNotInstabugActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugInternalTrackingDelegate"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTIVITY_STOPPED"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ACTIVITY_STOPPED"

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->STOPPED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/instabug/library/core/eventbus/a;->getInstance()Lcom/instabug/library/core/eventbus/a;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/instabug/library/core/eventbus/a;->a(Landroid/content/res/Configuration;)V

    .line 7
    invoke-static {}, Lcom/instabug/library/core/eventbus/a;->getInstance()Lcom/instabug/library/core/eventbus/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onApplicationCreated(Landroid/app/Application;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugInternalTrackingDelegate"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "APPLICATION_CREATED"

    invoke-virtual {v0, p1, v1}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onFragmentAttached(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FRAGMENT_ATTACHED"

    .line 6
    invoke-virtual {v1, v2, v0, v3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FRAGMENT_ATTACHED"

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method onFragmentDetached(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FRAGMENT_DETACHED"

    .line 6
    invoke-virtual {v1, v2, v0, v3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FRAGMENT_DETACHED"

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->navigableViewsTrackingDelegate:Lcom/instabug/library/tracking/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/g;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method onFragmentPaused(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FRAGMENT_PAUSED"

    .line 6
    invoke-virtual {v1, v2, v0, v3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FRAGMENT_PAUSED"

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method onFragmentResumed(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FRAGMENT_RESUMED"

    .line 6
    invoke-virtual {v1, v2, v0, v3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    instance-of v1, p1, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_1

    const-string v1, "DIALOG_FRAGMENT_RESUMED"

    goto :goto_0

    :cond_1
    const-string v1, "FRAGMENT_RESUMED"

    .line 15
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method onFragmentStarted(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FRAGMENT_STARTED"

    .line 6
    invoke-virtual {v1, v2, v0, v3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FRAGMENT_STARTED"

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method onFragmentStopped(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FRAGMENT_STOPPED"

    .line 6
    invoke-virtual {v1, v2, v0, v3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FRAGMENT_STOPPED"

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method onFragmentViewCreated(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FRAGMENT_VIEW_CREATED"

    .line 6
    invoke-virtual {v1, v2, v0, v3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FRAGMENT_VIEW_CREATED"

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->navigableViewsTrackingDelegate:Lcom/instabug/library/tracking/g;

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/g;->b(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public onFragmentVisibilityChanged(ZLandroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isUserTrackingStepsEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/tracking/e;->c()Lcom/instabug/library/tracking/e;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "FRAGMENT_VISIBILITY_CHANGED"

    .line 6
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/instabug/library/tracking/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->isReproStepsEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "FRAGMENT_VISIBILITY_CHANGED"

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v1, v0, p2, v2}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/tracking/d;->a()Lcom/instabug/library/tracking/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/tracking/d;->a(Landroid/view/MotionEvent;)V

    return-void
.end method
