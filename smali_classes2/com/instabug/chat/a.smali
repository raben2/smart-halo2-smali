.class Lcom/instabug/chat/a;
.super Ljava/lang/Object;
.source "ChatPluginWrapper.java"


# direct methods
.method static a()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;
    .locals 2

    .line 2
    new-instance v0, Lcom/instabug/library/core/plugin/PluginPromptOption;

    invoke-direct {v0}, Lcom/instabug/library/core/plugin/PluginPromptOption;-><init>()V

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setOrder(I)V

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setInvocationMode(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setInitialScreenshotRequired(Z)V

    .line 6
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getUnreadCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setNotificationCount(I)V

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setPromptOptionIdentifier(I)V

    .line 8
    sget v1, Lcom/instabug/chat/R$drawable;->ibg_core_ic_talk_to_us:I

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setIcon(I)V

    .line 9
    new-instance v1, Lcom/instabug/chat/a$a;

    invoke-direct {v1, p0}, Lcom/instabug/chat/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setOnInvocationListener(Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;)V

    return-object v0
.end method

.method static a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method static a(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method static b(Landroid/content/Context;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/chat/a$b;

    invoke-direct {v0, p0}, Lcom/instabug/chat/a$b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b()V
    .locals 1

    .line 2
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0}, Lcom/instabug/chat/Replies;->setState(Lcom/instabug/library/Feature$State;)V

    .line 4
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->setDeprecatedChatState(Lcom/instabug/library/Feature$State;)V

    .line 5
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->setChatsState(Lcom/instabug/library/Feature$State;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/invocation/InvocationManager;->notifyInvocationOptionChanged()V

    return-void
.end method

.method static c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/chat/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/instabug/library/Feature;->REPLIES:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/instabug/chat/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/instabug/chat/a;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private static c()Z
    .locals 2

    .line 5
    sget-object v0, Lcom/instabug/library/Feature;->IN_APP_MESSAGING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static d()V
    .locals 0

    .line 2
    invoke-static {}, Lcom/instabug/chat/a;->e()V

    .line 3
    invoke-static {}, Lcom/instabug/chat/cache/a;->b()V

    .line 4
    invoke-static {}, Lcom/instabug/chat/settings/a;->l()V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static e()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->release()V

    return-void
.end method

.method static e(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/chat/settings/a;->b(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/instabug/chat/cache/a;->a(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/instabug/chat/cache/a;->a()V

    .line 4
    invoke-static {p0}, Lcom/instabug/chat/a;->d(Landroid/content/Context;)V

    return-void
.end method
