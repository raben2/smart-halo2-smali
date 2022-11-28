.class public Lcom/instabug/chat/ChatPlugin;
.super Lcom/instabug/library/core/plugin/Plugin;
.source "ChatPlugin.java"

# interfaces
.implements Lcom/instabug/chat/synchronization/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation


# instance fields
.field private coreEventsDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/plugin/Plugin;-><init>()V

    return-void
.end method

.method private sendPushNotificationToken()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isPushNotificationTokenSent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instabug/chat/network/InstabugPushNotificationTokenService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/instabug/chat/network/InstabugPushNotificationTokenService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private subscribeOnCoreEvents()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lcom/instabug/chat/a;->b(Landroid/content/Context;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/chat/a;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/chat/ChatPlugin;->coreEventsDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private unSubscribeFromCoreEvents()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ChatPlugin;->coreEventsDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/instabug/chat/a;->a(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public getLastActivityTime()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/chat/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPluginOptions(Z)Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/instabug/chat/a;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPromptOptions()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/chat/a;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/plugin/Plugin;->init(Landroid/content/Context;)V

    return-void
.end method

.method public initDefaultPromptOptionAvailabilityState()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/chat/a;->b()V

    return-void
.end method

.method public onNewMessagesReceived(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_INCONSISTENT_SUBCLASS_RETURN_ANNOTATION"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isAppOnForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object v1

    new-instance v2, Lcom/instabug/chat/ChatPlugin$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/instabug/chat/ChatPlugin$a;-><init>(Lcom/instabug/chat/ChatPlugin;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/instabug/library/PresentationManager;->show(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/instabug/chat/f/b;->a()Lcom/instabug/chat/f/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sleep()V
    .locals 0

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/ChatPlugin;->subscribeOnCoreEvents()V

    .line 2
    invoke-static {}, Lcom/instabug/chat/synchronization/a;->b()Lcom/instabug/chat/synchronization/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/synchronization/a;->a(Lcom/instabug/chat/synchronization/b;)V

    .line 3
    invoke-static {p1}, Lcom/instabug/chat/a;->e(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0}, Lcom/instabug/chat/ChatPlugin;->sendPushNotificationToken()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/ChatPlugin;->unSubscribeFromCoreEvents()V

    .line 2
    invoke-static {}, Lcom/instabug/chat/a;->d()V

    .line 3
    invoke-static {}, Lcom/instabug/chat/synchronization/a;->b()Lcom/instabug/chat/synchronization/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/synchronization/a;->b(Lcom/instabug/chat/synchronization/b;)V

    return-void
.end method

.method public wake()V
    .locals 0

    return-void
.end method
