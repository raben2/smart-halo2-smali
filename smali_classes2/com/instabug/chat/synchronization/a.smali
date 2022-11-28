.class public Lcom/instabug/chat/synchronization/a;
.super Ljava/lang/Object;
.source "NewMessagesHandler.java"


# static fields
.field private static b:Lcom/instabug/chat/synchronization/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/chat/synchronization/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/chat/synchronization/a;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/instabug/chat/e/d;Ljava/util/List;)Lcom/instabug/chat/e/d;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/chat/e/d;",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)",
            "Lcom/instabug/chat/e/d;"
        }
    .end annotation

    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/d;

    .line 38
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/d;

    .line 41
    invoke-direct {p0, v1}, Lcom/instabug/chat/synchronization/a;->g(Lcom/instabug/chat/e/d;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 42
    invoke-direct {p0, v1}, Lcom/instabug/chat/synchronization/a;->f(Lcom/instabug/chat/e/d;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-direct {p0, v1}, Lcom/instabug/chat/synchronization/a;->e(Lcom/instabug/chat/e/d;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " removed from list to be notified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/d;

    .line 30
    invoke-direct {p0, v1, p1}, Lcom/instabug/chat/synchronization/a;->b(Lcom/instabug/chat/e/d;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v2

    sget-object v3, Lcom/instabug/chat/e/d$c;->SENT:Lcom/instabug/chat/e/d$c;

    if-ne v2, v3, :cond_0

    .line 34
    invoke-direct {p0, v1, p1}, Lcom/instabug/chat/synchronization/a;->a(Lcom/instabug/chat/e/d;Ljava/util/List;)Lcom/instabug/chat/e/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 36
    invoke-direct {p0, v1, p1}, Lcom/instabug/chat/synchronization/a;->a(Lcom/instabug/chat/e/d;Ljava/util/List;)Lcom/instabug/chat/e/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private a()V
    .locals 2

    .line 141
    invoke-static {}, Lcom/instabug/chat/settings/a;->c()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    invoke-static {}, Lcom/instabug/chat/settings/a;->c()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "new message runnable failed to run."

    .line 146
    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "START Invalidate Cache"

    .line 17
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getNotSentMessages()Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->invalidate()V

    :cond_0
    const-string v1, "finish Invalidate Cache"

    .line 25
    invoke-static {p0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p2, v0}, Lcom/instabug/chat/synchronization/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/instabug/chat/synchronization/a;->b(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/instabug/chat/e/d;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_NULL_ON_SOME_PATH"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/instabug/chat/synchronization/a;->b(Lcom/instabug/chat/e/d;)Lcom/instabug/chat/e/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chat with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t exist, creating new one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/instabug/chat/e/b;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/chat/e/b;-><init>(Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/instabug/chat/e/b$a;->SENT:Lcom/instabug/chat/e/b$a;

    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " added to cached chat: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private b(Lcom/instabug/chat/e/d;)Lcom/instabug/chat/e/b;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 25
    :cond_0
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getCache()Lcom/instabug/library/internal/storage/cache/InMemoryCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/storage/cache/InMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/e/b;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, "No local chats match messages\'s chat"

    .line 32
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static b()Lcom/instabug/chat/synchronization/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/synchronization/a;->b:Lcom/instabug/chat/synchronization/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/chat/synchronization/a;

    invoke-direct {v0}, Lcom/instabug/chat/synchronization/a;-><init>()V

    sput-object v0, Lcom/instabug/chat/synchronization/a;->b:Lcom/instabug/chat/synchronization/a;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/chat/synchronization/a;->b:Lcom/instabug/chat/synchronization/a;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new messages count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/d;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new message to updating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/instabug/chat/synchronization/a;->h(Lcom/instabug/chat/e/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-direct {p0, v0}, Lcom/instabug/chat/synchronization/a;->a(Lcom/instabug/chat/e/d;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0, v0}, Lcom/instabug/chat/synchronization/a;->f(Lcom/instabug/chat/e/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is ready to be synced"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-static {p1, v0}, Lcom/instabug/chat/cache/ChatsCacheManager;->updateLocalMessageWithSyncedMessage(Landroid/content/Context;Lcom/instabug/chat/e/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update local message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p0, v0}, Lcom/instabug/chat/synchronization/a;->d(Lcom/instabug/chat/e/d;)Lcom/instabug/chat/e/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with synced message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p0, v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/instabug/chat/settings/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of listeners to notify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/chat/synchronization/a;->a:Ljava/util/List;

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/instabug/chat/synchronization/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 39
    iget-object v1, p0, Lcom/instabug/chat/synchronization/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/synchronization/b;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying listener with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {v1, p1}, Lcom/instabug/chat/synchronization/b;->onNewMessagesReceived(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notified listener remained "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " message(s) to be sent to next listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {p0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chat notification disabled, messages that would not be notified "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private b(Lcom/instabug/chat/e/d;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/chat/e/d;",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)Z"
        }
    .end annotation

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/d;

    .line 23
    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lcom/instabug/chat/e/d;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/chat/e/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/synchronization/a;->b(Lcom/instabug/chat/e/d;)Lcom/instabug/chat/e/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/instabug/chat/e/d;)Lcom/instabug/chat/e/d;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/synchronization/a;->c(Lcom/instabug/chat/e/d;)Ljava/util/List;

    move-result-object v0

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

    check-cast v1, Lcom/instabug/chat/e/d;

    .line 4
    invoke-virtual {v1}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Lcom/instabug/chat/e/d;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/synchronization/a;->d(Lcom/instabug/chat/e/d;)Lcom/instabug/chat/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v1

    sget-object v2, Lcom/instabug/chat/e/d$c;->SENT:Lcom/instabug/chat/e/d$c;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f(Lcom/instabug/chat/e/d;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/synchronization/a;->d(Lcom/instabug/chat/e/d;)Lcom/instabug/chat/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v1

    sget-object v2, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SYNCED:Lcom/instabug/chat/e/d$c;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g(Lcom/instabug/chat/e/d;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/synchronization/a;->d(Lcom/instabug/chat/e/d;)Lcom/instabug/chat/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->h()Lcom/instabug/chat/e/d$c;

    move-result-object v1

    sget-object v2, Lcom/instabug/chat/e/d$c;->SYNCED:Lcom/instabug/chat/e/d$c;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private h(Lcom/instabug/chat/e/d;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/synchronization/a;->d(Lcom/instabug/chat/e/d;)Lcom/instabug/chat/e/d;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a([Lorg/json/JSONObject;)Ljava/util/List;
    .locals 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_a

    .line 68
    :try_start_0
    aget-object v3, p1, v2

    const-string v4, "attachments"

    .line 69
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "actions"

    .line 70
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 71
    new-instance v6, Lcom/instabug/chat/e/d;

    const-string v7, "id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserEmail()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/instabug/chat/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "chat_number"

    .line 72
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/instabug/chat/e/d;->b(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object v6

    const-string v7, "body"

    .line 73
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/instabug/chat/e/d;->a(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object v6

    const-string v7, "from"

    .line 74
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/instabug/chat/e/d;->e(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object v6

    const-string v7, "avatar"

    .line 75
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/instabug/chat/e/d;->d(Ljava/lang/String;)Lcom/instabug/chat/e/d;

    move-result-object v6

    sget-object v7, Lcom/instabug/chat/e/d$c;->SYNCED:Lcom/instabug/chat/e/d$c;

    .line 76
    invoke-virtual {v6, v7}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$c;)Lcom/instabug/chat/e/d;

    move-result-object v6

    const-string v7, "messaged_at"

    .line 77
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    if-eqz v7, :cond_0

    const-string v7, "messaged_at"

    .line 78
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "messaged_at"

    .line 79
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "null"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "messaged_at"

    .line 80
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/instabug/library/util/InstabugDateFormatter;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v7, "messaged_at"

    .line 83
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-static {v7}, Lcom/instabug/library/util/InstabugDateFormatter;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 85
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    div-long/2addr v10, v8

    .line 86
    invoke-virtual {v6, v10, v11}, Lcom/instabug/chat/e/d;->a(J)Lcom/instabug/chat/e/d;

    :cond_0
    const-string v7, "read_at"

    .line 89
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v7, "read_at"

    .line 90
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "read_at"

    .line 91
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "null"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "read_at"

    .line 92
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/instabug/library/util/InstabugDateFormatter;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v7, "read_at"

    .line 95
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-static {v7}, Lcom/instabug/library/util/InstabugDateFormatter;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 97
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    div-long/2addr v10, v8

    .line 98
    invoke-virtual {v6, v10, v11}, Lcom/instabug/chat/e/d;->b(J)Lcom/instabug/chat/e/d;

    :cond_1
    const-string v7, "direction"

    .line 102
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    if-eqz v3, :cond_7

    .line 104
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x366eaf0

    if-eq v8, v9, :cond_3

    const v9, 0x73bc9b79

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    const-string v8, "inbound"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const-string v8, "outbound"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_6

    if-eq v3, v7, :cond_5

    goto :goto_3

    .line 109
    :cond_5
    sget-object v3, Lcom/instabug/chat/e/d$b;->OUTBOUND:Lcom/instabug/chat/e/d$b;

    invoke-virtual {v6, v3}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$b;)Lcom/instabug/chat/e/d;

    goto :goto_3

    .line 110
    :cond_6
    sget-object v3, Lcom/instabug/chat/e/d$b;->INBOUND:Lcom/instabug/chat/e/d$b;

    invoke-virtual {v6, v3}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/d$b;)Lcom/instabug/chat/e/d;

    .line 120
    :cond_7
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    sub-int/2addr v3, v7

    :goto_4
    if-ltz v3, :cond_8

    .line 121
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "metadata"

    .line 123
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 124
    new-instance v10, Lcom/instabug/chat/e/a;

    invoke-direct {v10}, Lcom/instabug/chat/e/a;-><init>()V

    const-string v11, "url"

    .line 125
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/instabug/chat/e/a;->f(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    const-string v8, "synced"

    .line 126
    invoke-virtual {v10, v8}, Lcom/instabug/chat/e/a;->d(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    const-string v8, "file_type"

    .line 127
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-virtual {v10, v8}, Lcom/instabug/chat/e/a;->e(Ljava/lang/String;)Lcom/instabug/chat/e/a;

    .line 129
    invoke-virtual {v6}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 132
    :cond_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    sub-int/2addr v3, v7

    :goto_5
    if-ltz v3, :cond_9

    .line 133
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 134
    new-instance v7, Lcom/instabug/chat/e/e;

    invoke-direct {v7}, Lcom/instabug/chat/e/e;-><init>()V

    .line 135
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/instabug/chat/e/e;->fromJson(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v6, v7}, Lcom/instabug/chat/e/d;->a(Lcom/instabug/chat/e/e;)Lcom/instabug/chat/e/d;

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 138
    :cond_9
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v3

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse message number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public varargs a(Landroid/content/Context;Z[Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lcom/instabug/chat/synchronization/a;->a([Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p3

    .line 2
    invoke-direct {p0, p3}, Lcom/instabug/chat/synchronization/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/instabug/chat/synchronization/a;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/instabug/chat/synchronization/a;->b(Landroid/content/Context;Ljava/util/List;)V

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/instabug/chat/synchronization/a;->a()V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/instabug/chat/synchronization/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 14
    invoke-direct {p0, v0}, Lcom/instabug/chat/synchronization/a;->b(Ljava/util/List;)V

    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No one is listening for unread messages"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/instabug/chat/synchronization/b;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/instabug/chat/synchronization/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/instabug/chat/synchronization/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/instabug/chat/synchronization/b;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/instabug/chat/synchronization/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
