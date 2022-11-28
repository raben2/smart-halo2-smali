.class public Lcom/instabug/chat/synchronization/SynchronizationManager;
.super Ljava/lang/Object;
.source "SynchronizationManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_NULLABLE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/chat/synchronization/SynchronizationManager$d;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/instabug/chat/synchronization/SynchronizationManager; = null

.field private static final MISSING_MESSAGES:Ljava/lang/String; = "missing_messages"

.field private static final STOP_PULLING:J = -0x1L

.field private static final TTL:Ljava/lang/String; = "ttl"


# instance fields
.field private chatTimeDisposable:Lio/reactivex/disposables/Disposable;

.field private chattingTimeUpdateAction:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isSyncing:Z

.field private shouldSync:Z

.field private syncAction:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private syncRunnable:Lcom/instabug/chat/synchronization/SynchronizationManager$d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->shouldSync:Z

    .line 3
    iput-boolean v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->isSyncing:Z

    .line 5
    new-instance v0, Lcom/instabug/chat/synchronization/SynchronizationManager$a;

    invoke-direct {v0, p0}, Lcom/instabug/chat/synchronization/SynchronizationManager$a;-><init>(Lcom/instabug/chat/synchronization/SynchronizationManager;)V

    iput-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->syncAction:Lio/reactivex/functions/Consumer;

    .line 15
    new-instance v0, Lcom/instabug/chat/synchronization/SynchronizationManager$b;

    invoke-direct {v0, p0}, Lcom/instabug/chat/synchronization/SynchronizationManager$b;-><init>(Lcom/instabug/chat/synchronization/SynchronizationManager;)V

    iput-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->chattingTimeUpdateAction:Lio/reactivex/functions/Consumer;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->handler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/instabug/chat/synchronization/SynchronizationManager$d;

    invoke-direct {v0, p0, p1}, Lcom/instabug/chat/synchronization/SynchronizationManager$d;-><init>(Lcom/instabug/chat/synchronization/SynchronizationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->syncRunnable:Lcom/instabug/chat/synchronization/SynchronizationManager$d;

    .line 25
    invoke-direct {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->subscribeToChatTimeUpdatedEvents()V

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/chat/synchronization/SynchronizationManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->shouldSync:Z

    return p0
.end method

.method static synthetic access$100(Lcom/instabug/chat/synchronization/SynchronizationManager;)Lcom/instabug/chat/synchronization/SynchronizationManager$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->syncRunnable:Lcom/instabug/chat/synchronization/SynchronizationManager$d;

    return-object p0
.end method

.method static synthetic access$200(Lcom/instabug/chat/synchronization/SynchronizationManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/instabug/chat/synchronization/SynchronizationManager;Lcom/instabug/library/network/RequestResponse;Landroid/content/Context;Lio/reactivex/functions/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/chat/synchronization/SynchronizationManager;->handleSuccessResponse(Lcom/instabug/library/network/RequestResponse;Landroid/content/Context;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/instabug/chat/synchronization/SynchronizationManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/synchronization/SynchronizationManager;->clearReadMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/instabug/chat/synchronization/SynchronizationManager;Lio/reactivex/functions/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/synchronization/SynchronizationManager;->handleFailureResponse(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/instabug/chat/synchronization/SynchronizationManager;)Lio/reactivex/functions/Consumer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->syncAction:Lio/reactivex/functions/Consumer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/instabug/chat/synchronization/SynchronizationManager;Landroid/content/Context;Lio/reactivex/functions/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/chat/synchronization/SynchronizationManager;->syncMessages(Landroid/content/Context;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private clearReadMessages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/chat/cache/ReadQueueCacheManager;->getInstance()Lcom/instabug/chat/cache/ReadQueueCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/chat/cache/ReadQueueCacheManager;->notify(Ljava/util/List;)V

    return-void
.end method

.method public static getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/synchronization/SynchronizationManager;->INSTANCE:Lcom/instabug/chat/synchronization/SynchronizationManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->init(Landroid/content/Context;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/chat/synchronization/SynchronizationManager;->INSTANCE:Lcom/instabug/chat/synchronization/SynchronizationManager;

    return-object v0
.end method

.method static getInstanceUnModified()Lcom/instabug/chat/synchronization/SynchronizationManager;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/chat/synchronization/SynchronizationManager;->INSTANCE:Lcom/instabug/chat/synchronization/SynchronizationManager;

    return-object v0
.end method

.method private handleFailureResponse(Lio/reactivex/functions/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Something went wrong while sync messages"

    .line 1
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->isSyncing:Z

    .line 4
    :try_start_0
    invoke-static {}, Lcom/instabug/chat/settings/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception was occurred,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleReceivedMessages(Landroid/content/Context;Lorg/json/JSONArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new messages received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messages count:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/instabug/chat/synchronization/a;->b()Lcom/instabug/chat/synchronization/a;

    move-result-object p2

    invoke-virtual {p2, p1, p3, v1}, Lcom/instabug/chat/synchronization/a;->a(Landroid/content/Context;Z[Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method private handleSuccessResponse(Lcom/instabug/library/network/RequestResponse;Landroid/content/Context;Lio/reactivex/functions/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/network/RequestResponse;",
            "Landroid/content/Context;",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Chats synced successfully"

    .line 1
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->isSyncing:Z

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 6
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/instabug/chat/synchronization/SynchronizationManager;->parseReceivedMessages(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseCode()I

    move-result p1

    const/16 v3, 0xcb

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p2, v2, v0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->handleReceivedMessages(Landroid/content/Context;Lorg/json/JSONArray;Z)V

    .line 8
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/instabug/chat/synchronization/SynchronizationManager;->parseTTL(Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/chat/synchronization/SynchronizationManager;->handleTTL(JLio/reactivex/functions/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :try_start_1
    invoke-static {}, Lcom/instabug/chat/settings/a;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception was occurred,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleTTL(JLio/reactivex/functions/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Next TTL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/instabug/chat/settings/a;->b(J)V

    .line 5
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception was occurred,"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/synchronization/SynchronizationManager;->INSTANCE:Lcom/instabug/chat/synchronization/SynchronizationManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/chat/synchronization/SynchronizationManager;

    invoke-direct {v0, p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instabug/chat/synchronization/SynchronizationManager;->INSTANCE:Lcom/instabug/chat/synchronization/SynchronizationManager;

    :cond_0
    return-void
.end method

.method private isFeaturesFetchedBefore()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isFeaturesFetchedBefore()Z

    move-result v0

    return v0
.end method

.method private isSyncing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->isSyncing:Z

    return v0
.end method

.method private parseReceivedMessages(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "missing_messages"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private parseTTL(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ttl"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private subscribeToChatTimeUpdatedEvents()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;->getInstance()Lcom/instabug/chat/eventbus/ChatTimeUpdatedEventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->chattingTimeUpdateAction:Lio/reactivex/functions/Consumer;

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->chatTimeDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private syncMessages(Landroid/content/Context;Lio/reactivex/functions/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->isFeaturesFetchedBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->isSyncing:Z

    .line 4
    invoke-static {}, Lcom/instabug/chat/cache/ReadQueueCacheManager;->getInstance()Lcom/instabug/chat/cache/ReadQueueCacheManager;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/instabug/chat/cache/ReadQueueCacheManager;->getAll()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/instabug/chat/network/c/a;->a()Lcom/instabug/chat/network/c/a;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getLastMessageMessagedAt()J

    move-result-wide v3

    .line 8
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getTotalMessagesCount()I

    move-result v5

    .line 9
    invoke-static {}, Lcom/instabug/chat/cache/ReadQueueCacheManager;->getInstance()Lcom/instabug/chat/cache/ReadQueueCacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/chat/cache/ReadQueueCacheManager;->getReadMessagesArray()Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Lcom/instabug/chat/synchronization/SynchronizationManager$c;

    invoke-direct {v7, p0, p1, p2, v0}, Lcom/instabug/chat/synchronization/SynchronizationManager$c;-><init>(Lcom/instabug/chat/synchronization/SynchronizationManager;Landroid/content/Context;Lio/reactivex/functions/Consumer;Ljava/util/List;)V

    move-object v2, p1

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/instabug/chat/network/c/a;->a(Landroid/content/Context;JILorg/json/JSONArray;Lcom/instabug/library/network/Request$Callbacks;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    invoke-direct {p0, p2}, Lcom/instabug/chat/synchronization/SynchronizationManager;->handleFailureResponse(Lio/reactivex/functions/Consumer;)V

    goto :goto_0

    :cond_0
    const-string p1, "device is offline, can\'t sync"

    .line 32
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_1
    invoke-static {}, Lcom/instabug/chat/settings/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception was occurred,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static tearDown()V
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
    sput-object v0, Lcom/instabug/chat/synchronization/SynchronizationManager;->INSTANCE:Lcom/instabug/chat/synchronization/SynchronizationManager;

    return-void
.end method

.method private unSubscribeToChatTimeUpdatedEvents()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->chatTimeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->chatTimeDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method isChatFeatureEnabled()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->IN_APP_MESSAGING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/instabug/library/Feature;->CHATS:Lcom/instabug/library/Feature;

    .line 2
    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/instabug/library/Feature;->REPLIES:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "ST_WRITE_TO_STATIC_FROM_INSTANCE_METHOD"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->stop()V

    .line 2
    invoke-direct {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->unSubscribeToChatTimeUpdatedEvents()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->handler:Landroid/os/Handler;

    .line 4
    iput-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->syncRunnable:Lcom/instabug/chat/synchronization/SynchronizationManager$d;

    .line 5
    sput-object v0, Lcom/instabug/chat/synchronization/SynchronizationManager;->INSTANCE:Lcom/instabug/chat/synchronization/SynchronizationManager;

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->shouldSync:Z

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->syncRunnable:Lcom/instabug/chat/synchronization/SynchronizationManager$d;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public sync()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->isChatFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/chat/synchronization/SynchronizationManager;->stop()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->shouldSync:Z

    .line 4
    iget-object v0, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instabug/chat/synchronization/SynchronizationManager;->syncRunnable:Lcom/instabug/chat/synchronization/SynchronizationManager$d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
