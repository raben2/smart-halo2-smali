.class public Lcom/instabug/library/invocation/InvocationManager;
.super Ljava/lang/Object;
.source "InvocationManager.java"


# static fields
.field private static INSTANCE:Lcom/instabug/library/invocation/InvocationManager; = null

.field public static final TAG:Ljava/lang/String; = "InvocationManager"


# instance fields
.field private currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;

.field private currentInstabugInvocationEvents:[Lcom/instabug/library/invocation/InstabugInvocationEvent;

.field private currentInvocationSettings:Lcom/instabug/library/invocation/InvocationSettings;

.field private currentInvokers:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/invocation/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private invocationRequestListenerImp:Lcom/instabug/library/invocation/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isInvocationAvailable:Z

.field private lastUsedInvoker:Lcom/instabug/library/invocation/d/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/invocation/InvocationManager;->isInvocationAvailable:Z

    .line 7
    new-instance v1, Lcom/instabug/library/invocation/InvocationSettings;

    invoke-direct {v1}, Lcom/instabug/library/invocation/InvocationSettings;-><init>()V

    iput-object v1, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvocationSettings:Lcom/instabug/library/invocation/InvocationSettings;

    .line 8
    new-array v0, v0, [Lcom/instabug/library/invocation/InstabugInvocationEvent;

    sget-object v1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SHAKE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInstabugInvocationEvents:[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/instabug/library/invocation/InvocationManager;->subscribeToCarenActivityLifeCycle()V

    .line 11
    new-instance v0, Lcom/instabug/library/invocation/b;

    invoke-direct {v0}, Lcom/instabug/library/invocation/b;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    return-void
.end method

.method private getFloatingButtonInvoker()Lcom/instabug/library/invocation/d/b;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/invocation/d/a;

    .line 3
    instance-of v2, v1, Lcom/instabug/library/invocation/d/b;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/instabug/library/invocation/d/b;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/instabug/library/invocation/InvocationManager;
    .locals 2

    const-class v0, Lcom/instabug/library/invocation/InvocationManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/invocation/InvocationManager;->INSTANCE:Lcom/instabug/library/invocation/InvocationManager;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->init()V

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/library/invocation/InvocationManager;->INSTANCE:Lcom/instabug/library/invocation/InvocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init()V
    .locals 3

    const-class v0, Lcom/instabug/library/invocation/InvocationManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "InvocationManager"

    const-string v2, "initializing invocationManager"

    .line 1
    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/instabug/library/invocation/InvocationManager;->INSTANCE:Lcom/instabug/library/invocation/InvocationManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/library/invocation/InvocationManager;

    invoke-direct {v1}, Lcom/instabug/library/invocation/InvocationManager;-><init>()V

    sput-object v1, Lcom/instabug/library/invocation/InvocationManager;->INSTANCE:Lcom/instabug/library/invocation/InvocationManager;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getTargetActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/instabug/library/invocation/InvocationManager;->INSTANCE:Lcom/instabug/library/invocation/InvocationManager;

    invoke-virtual {v1}, Lcom/instabug/library/invocation/InvocationManager;->listen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isPromptOptionsAvailable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/invocation/InvocationManager;->getAvailablePromptOptions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private subscribeToCarenActivityLifeCycle()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/invocation/InvocationManager$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/invocation/InvocationManager$a;-><init>(Lcom/instabug/library/invocation/InvocationManager;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static tearDown()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/instabug/library/invocation/InvocationManager;->INSTANCE:Lcom/instabug/library/invocation/InvocationManager;

    return-void
.end method


# virtual methods
.method public forceInvoke(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/instabug/library/invocation/b;->a(I)V

    :cond_0
    return-void
.end method

.method public getAvailablePromptOptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentInstabugInvocationEvents()[Lcom/instabug/library/invocation/InstabugInvocationEvent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInstabugInvocationEvents:[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/invocation/InstabugInvocationEvent;

    return-object v0
.end method

.method public getCurrentInvocationSettings()Lcom/instabug/library/invocation/InvocationSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvocationSettings:Lcom/instabug/library/invocation/InvocationSettings;

    return-object v0
.end method

.method getCurrentInvokers()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/invocation/d/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    return-object v0
.end method

.method public getLastUsedInvoker()Lcom/instabug/library/invocation/d/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->lastUsedInvoker:Lcom/instabug/library/invocation/d/a;

    return-object v0
.end method

.method public handle(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getState()Lcom/instabug/library/InstabugState;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugState;->ENABLED:Lcom/instabug/library/InstabugState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/invocation/d/a;

    .line 4
    instance-of v2, v1, Lcom/instabug/library/invocation/d/g;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/instabug/library/invocation/d/g;

    invoke-virtual {v1, p1}, Lcom/instabug/library/invocation/d/g;->a(Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public invoke(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/instabug/library/invocation/b;->b(I)V

    :cond_0
    return-void
.end method

.method public listen()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/instabug/library/invocation/InvocationManager;->isInvocationAvailable:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/invocation/InvocationManager;->isPromptOptionsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isProcessingForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/invocation/d/a;

    .line 7
    invoke-interface {v1}, Lcom/instabug/library/invocation/d/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/instabug/library/invocation/d/a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyInvocationOptionChanged()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/InvocationManager;->isPromptOptionsAvailable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/invocation/InvocationManager;->getFloatingButtonInvoker()Lcom/instabug/library/invocation/d/b;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/instabug/library/invocation/d/b;->c()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/instabug/library/invocation/d/b;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyPrimaryColorChanged()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/invocation/d/a;

    .line 3
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getTargetActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/instabug/library/invocation/d/b;

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/instabug/library/invocation/InvocationManager$b;

    invoke-direct {v2, p0, v1}, Lcom/instabug/library/invocation/InvocationManager$b;-><init>(Lcom/instabug/library/invocation/InvocationManager;Lcom/instabug/library/invocation/d/a;)V

    invoke-static {v2}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentActivityLifeCycleDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    return-void
.end method

.method removeDuplicates([Lcom/instabug/library/invocation/InstabugInvocationEvent;)[Lcom/instabug/library/invocation/InstabugInvocationEvent;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/instabug/library/invocation/InstabugInvocationEvent;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/instabug/library/invocation/InstabugInvocationEvent;

    return-object p1
.end method

.method public varargs setInstabugInvocationEvent([Lcom/instabug/library/invocation/InstabugInvocationEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/InvocationManager;->removeDuplicates([Lcom/instabug/library/invocation/InstabugInvocationEvent;)[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInstabugInvocationEvents:[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    .line 3
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/invocation/d/a;

    .line 5
    invoke-interface {v1}, Lcom/instabug/library/invocation/d/a;->c()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    if-ge v1, v0, :cond_7

    aget-object v3, p1, v1

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set instabug invocation event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InvocationManager"

    invoke-static {v5, v4}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v4, Lcom/instabug/library/invocation/InstabugInvocationEvent;->NONE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    if-ne v3, v4, :cond_2

    array-length v4, p1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 14
    iput-object v2, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    goto/16 :goto_3

    .line 19
    :cond_2
    iget-object v2, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    if-nez v2, :cond_3

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    .line 23
    :cond_3
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 24
    iget-object v4, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    if-eqz v4, :cond_6

    .line 25
    sget-object v4, Lcom/instabug/library/invocation/InvocationManager$c;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 48
    :pswitch_0
    iget-object v2, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    new-instance v3, Lcom/instabug/library/invocation/d/d;

    iget-object v4, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    invoke-direct {v3, v4}, Lcom/instabug/library/invocation/d/d;-><init>(Lcom/instabug/library/invocation/a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    if-eqz v2, :cond_4

    .line 49
    new-instance v3, Lcom/instabug/library/invocation/d/g;

    iget-object v4, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    invoke-direct {v3, v2, v4}, Lcom/instabug/library/invocation/d/g;-><init>(Landroid/content/Context;Lcom/instabug/library/invocation/a;)V

    .line 51
    iget-object v2, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v2, "InvocationManager"

    const-string v3, "did not add TwoFingerSwipeLeftInvoker due to null appContext"

    .line 53
    invoke-static {v2, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 54
    :pswitch_2
    iget-object v2, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    new-instance v3, Lcom/instabug/library/invocation/d/b;

    iget-object v4, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    invoke-direct {v3, v4}, Lcom/instabug/library/invocation/d/b;-><init>(Lcom/instabug/library/invocation/a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_3
    if-eqz v2, :cond_5

    .line 55
    new-instance v3, Lcom/instabug/library/invocation/d/f;

    iget-object v4, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    invoke-direct {v3, v2, v4}, Lcom/instabug/library/invocation/d/f;-><init>(Landroid/content/Context;Lcom/instabug/library/invocation/a;)V

    .line 56
    iget-object v2, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvocationSettings:Lcom/instabug/library/invocation/InvocationSettings;

    .line 57
    invoke-virtual {v2}, Lcom/instabug/library/invocation/InvocationSettings;->getShakeThreshold()I

    move-result v2

    .line 58
    invoke-virtual {v3, v2}, Lcom/instabug/library/invocation/d/f;->a(I)V

    .line 61
    iget-object v2, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const-string v2, "InvocationManager"

    const-string v3, "did not add ShakeInvoker due to null appContext"

    .line 63
    invoke-static {v2, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 85
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 86
    invoke-virtual {p0, v2}, Lcom/instabug/library/invocation/InvocationManager;->setLastUsedInvoker(Lcom/instabug/library/invocation/d/a;)V

    .line 87
    invoke-virtual {p0}, Lcom/instabug/library/invocation/InvocationManager;->listen()V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLastUsedInvoker(Lcom/instabug/library/invocation/d/a;)V
    .locals 0
    .param p1    # Lcom/instabug/library/invocation/d/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/InvocationManager;->lastUsedInvoker:Lcom/instabug/library/invocation/d/a;

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->invocationRequestListenerImp:Lcom/instabug/library/invocation/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/invocation/b;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->lastUsedInvoker:Lcom/instabug/library/invocation/d/a;

    return-void
.end method

.method public sleep()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/InvocationManager;->currentInvokers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/invocation/d/a;

    .line 3
    invoke-interface {v1}, Lcom/instabug/library/invocation/d/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/instabug/library/invocation/d/a;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public switchOffInvocation()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/instabug/library/invocation/InvocationManager;->isInvocationAvailable:Z

    return-void
.end method

.method public switchOnInvocation()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/instabug/library/invocation/InvocationManager;->isInvocationAvailable:Z

    return-void
.end method
