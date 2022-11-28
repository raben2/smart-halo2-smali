.class Lcom/instabug/library/analytics/a;
.super Ljava/lang/Object;
.source "AnalyticsLogger.java"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "URF_UNREAD_FIELD",
        "DLS_DEAD_LOCAL_STORE",
        "DLS_DEAD_LOCAL_STORE"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/instabug/library/analytics/model/Api;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/analytics/model/Api;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/analytics/a;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/analytics/a;->b:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/instabug/library/analytics/a$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/analytics/a$a;-><init>(Lcom/instabug/library/analytics/a;)V

    .line 18
    invoke-static {}, Lcom/instabug/library/core/eventbus/SessionStateEventBus;->getInstance()Lcom/instabug/library/core/eventbus/SessionStateEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/analytics/a;->c:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static a(Landroid/content/Context;)J
    .locals 3

    const-string v0, "instabug"

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "analytics_last_uploaded"

    const-wide/16 v1, 0x0

    .line 16
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static a(JLandroid/content/Context;)V
    .locals 2

    const-string v0, "instabug"

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 19
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "analytics_last_uploaded"

    invoke-interface {p2, v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/analytics/a;Lcom/instabug/library/model/session/SessionState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/analytics/a;->a(Lcom/instabug/library/model/session/SessionState;)V

    return-void
.end method

.method private a(Lcom/instabug/library/model/session/SessionState;)V
    .locals 3

    .line 7
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getSessionStartedAt()J

    move-result-wide v0

    .line 8
    sget-object v2, Lcom/instabug/library/model/session/SessionState;->FINISH:Lcom/instabug/library/model/session/SessionState;

    if-ne p1, v2, :cond_0

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/instabug/library/analytics/a;->b:Ljava/util/List;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-static {p1, v0, v1}, Lcom/instabug/library/analytics/util/a;->a(Ljava/util/Collection;J)V

    .line 11
    iget-object p1, p0, Lcom/instabug/library/analytics/a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/instabug/library/analytics/util/a;->a(Ljava/util/Collection;J)V

    .line 12
    iget-object p1, p0, Lcom/instabug/library/analytics/a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    iget-object p1, p0, Lcom/instabug/library/analytics/a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method private varargs a(Ljava/lang/String;Z[Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/instabug/library/analytics/a;->b:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/analytics/a;->c(Ljava/lang/String;Z[Lcom/instabug/library/analytics/model/Api$Parameter;)Lcom/instabug/library/analytics/model/Api;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static a(ZLandroid/content/Context;)V
    .locals 2

    const-string v0, "instabug"

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "have_been_cleaned"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    .line 10
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs b(Ljava/lang/String;Z[Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/library/analytics/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/analytics/model/Api;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/instabug/library/analytics/model/Api;->incrementCount()V

    .line 6
    iget-object p2, p0, Lcom/instabug/library/analytics/a;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/analytics/a;->a:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/analytics/a;->c(Ljava/lang/String;Z[Lcom/instabug/library/analytics/model/Api$Parameter;)Lcom/instabug/library/analytics/model/Api;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method static b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "instabug"

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "have_been_cleaned"

    .line 13
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private varargs c(Ljava/lang/String;Z[Lcom/instabug/library/analytics/model/Api$Parameter;)Lcom/instabug/library/analytics/model/Api;
    .locals 1

    .line 3
    new-instance v0, Lcom/instabug/library/analytics/model/Api;

    invoke-direct {v0}, Lcom/instabug/library/analytics/model/Api;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/instabug/library/analytics/model/Api;->setApiName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api;

    .line 5
    invoke-virtual {v0, p2}, Lcom/instabug/library/analytics/model/Api;->setDeprecated(Z)Lcom/instabug/library/analytics/model/Api;

    if-eqz p3, :cond_0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Lcom/instabug/library/analytics/model/Api;->setParameters(Ljava/util/ArrayList;)Lcom/instabug/library/analytics/model/Api;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/analytics/a;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method varargs a([Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/instabug/library/analytics/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/instabug/library/analytics/a;->a(Ljava/lang/String;Z[Lcom/instabug/library/analytics/model/Api$Parameter;)V

    return-void
.end method

.method varargs b([Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/instabug/library/analytics/a;->a(Ljava/lang/String;Z[Lcom/instabug/library/analytics/model/Api$Parameter;)V

    return-void
.end method

.method varargs c([Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/instabug/library/analytics/a;->b(Ljava/lang/String;Z[Lcom/instabug/library/analytics/model/Api$Parameter;)V

    return-void
.end method

.method varargs d([Lcom/instabug/library/analytics/model/Api$Parameter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/analytics/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lcom/instabug/library/analytics/a;->b(Ljava/lang/String;Z[Lcom/instabug/library/analytics/model/Api$Parameter;)V

    return-void
.end method
