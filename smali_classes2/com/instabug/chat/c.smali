.class Lcom/instabug/chat/c;
.super Ljava/lang/Object;
.source "CoreEventsHandler.java"


# direct methods
.method private static a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 35
    invoke-static {v0, v1}, Lcom/instabug/chat/settings/a;->a(J)V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/instabug/chat/cache/a;->b()V

    .line 33
    invoke-static {p0}, Lcom/instabug/chat/c;->d(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->sync()V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/chat/c;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x36ebcb

    if-eq v2, v3, :cond_3

    const v3, 0x67a27890

    if-eq v2, v3, :cond_2

    const v3, 0x6de15a2e

    if-eq v2, v3, :cond_1

    const v3, 0x76508296

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "session"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string v2, "invocation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 20
    :pswitch_0
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "activated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    invoke-static {p0}, Lcom/instabug/chat/c;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 22
    :pswitch_1
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "logged_in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 23
    invoke-static {}, Lcom/instabug/chat/c;->c()V

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "logged_out"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 25
    invoke-static {}, Lcom/instabug/chat/c;->d()V

    goto :goto_1

    .line 26
    :pswitch_2
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "started"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    invoke-static {p0}, Lcom/instabug/chat/c;->c(Landroid/content/Context;)V

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "finished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    invoke-static {p0}, Lcom/instabug/chat/c;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 30
    :pswitch_3
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "invoked"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 31
    invoke-static {}, Lcom/instabug/chat/c;->b()V

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/chat/cache/a;->b()V

    .line 2
    invoke-static {p0}, Lcom/instabug/chat/c;->d(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->stop()V

    return-void
.end method

.method private static c()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->sync()V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/chat/cache/a;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->sync()V

    return-void
.end method

.method private static d()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/chat/c;->a()V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/chat/c$a;

    invoke-direct {v0, p0}, Lcom/instabug/chat/c$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "Chats/CoreEventsHandler"

    const-string v0, "Context was null during Chats retrieval from DB."

    .line 15
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static e()Z
    .locals 2

    .line 1
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
