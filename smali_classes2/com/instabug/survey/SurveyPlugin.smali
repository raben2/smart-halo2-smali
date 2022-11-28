.class public Lcom/instabug/survey/SurveyPlugin;
.super Lcom/instabug/library/core/plugin/Plugin;
.source "SurveyPlugin.java"


# instance fields
.field private announcementManager:Lcom/instabug/survey/d/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private subscribe:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userTypeDisposable:Lio/reactivex/disposables/Disposable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/plugin/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/survey/SurveyPlugin;->clearUserActivities()V

    return-void
.end method

.method static synthetic access$500(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/SurveyPlugin;->getLocaleResolved()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/instabug/survey/SurveyPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/SurveyPlugin;->startSubmittingPendingSurveys()V

    return-void
.end method

.method static synthetic access$700(Lcom/instabug/survey/SurveyPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/SurveyPlugin;->startSubmittingPendingAnnouncements()V

    return-void
.end method

.method static synthetic access$800(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private checkAppStatus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/instabug/survey/h/d;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static clearUserActivities()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/g/b;->d(J)V

    .line 4
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/g/b;->a(J)V

    return-void
.end method

.method private getLocaleResolved()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "default"

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/LocaleUtils;->getCurrentLocaleResolved(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAnnouncementSettings(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/instabug/survey/d/a;->a(Landroid/content/Context;)Lcom/instabug/survey/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/survey/SurveyPlugin;->announcementManager:Lcom/instabug/survey/d/a;

    .line 2
    invoke-static {p1}, Lcom/instabug/survey/d/d/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private migrateOldSurveysCacheToDb()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/survey/SurveyPlugin$e;

    invoke-direct {v0, p0}, Lcom/instabug/survey/SurveyPlugin$e;-><init>(Lcom/instabug/survey/SurveyPlugin;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startSubmittingPendingAnnouncements()V
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->ANNOUNCEMENTS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/instabug/survey/SurveyPlugin$c;

    invoke-direct {v1, p0, v0}, Lcom/instabug/survey/SurveyPlugin$c;-><init>(Lcom/instabug/survey/SurveyPlugin;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Context is null."

    .line 18
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Context WeakReference is null."

    .line 21
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startSubmittingPendingSurveys()V
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->SURVEYS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/instabug/survey/SurveyPlugin$d;

    invoke-direct {v1, p0, v0}, Lcom/instabug/survey/SurveyPlugin$d;-><init>(Lcom/instabug/survey/SurveyPlugin;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Context is null."

    .line 19
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Context WeakReference is null."

    .line 22
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private unSubscribeOnSDKEvents()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/SurveyPlugin;->subscribe:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/SurveyPlugin;->subscribe:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLastActivityTime()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/plugin/Plugin;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/library/core/plugin/Plugin;->onLocaleChanged(Ljava/util/Locale;Ljava/util/Locale;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/survey/SurveyPlugin;->shouldReFetch()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/plugin/Plugin;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/instabug/library/util/LocaleUtils;->resolveLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/instabug/survey/SurveyPlugin;->startFetchingAnnouncements(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/instabug/survey/SurveyPlugin;->startFetchingSurveys(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method resolveCountryInfo(Lcom/instabug/survey/models/a;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/h/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Getting Country Code..."

    .line 5
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/survey/c;->b(Lcom/instabug/survey/models/a;)V

    :cond_0
    return-void
.end method

.method shouldReFetch()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/SurveyPlugin;->getLocaleResolved()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instabug/survey/g/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public sleep()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/SurveyPlugin;->announcementManager:Lcom/instabug/survey/d/a;

    invoke-virtual {v0}, Lcom/instabug/survey/d/a;->c()V

    .line 2
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/c;->f()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/SurveyPlugin;->userTypeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/instabug/survey/g/b;->a(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/survey/SurveyPlugin;->initAnnouncementSettings(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/survey/SurveyPlugin;->subscribeOnSDKEvents()V

    return-void
.end method

.method startFetchingAnnouncements(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instabug/library/Feature;->ANNOUNCEMENTS:Lcom/instabug/library/Feature;

    .line 2
    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const-string v0, "initialize Instabug Announcement Manager"

    .line 3
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/survey/d/a;->a(Landroid/content/Context;)Lcom/instabug/survey/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/survey/d/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method startFetchingSurveys(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isAppOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isFeaturesFetchedBefore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instabug/survey/h/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/plugin/Plugin;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "initialize Instabug Surveys Manager"

    .line 5
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/survey/c;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/b;->k()V

    .line 2
    invoke-static {}, Lcom/instabug/survey/g/a;->m()V

    .line 3
    invoke-direct {p0}, Lcom/instabug/survey/SurveyPlugin;->unSubscribeOnSDKEvents()V

    return-void
.end method

.method subscribeOnSDKEvents()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/SurveyPlugin;->subscribe:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/survey/SurveyPlugin$b;

    invoke-direct {v0, p0}, Lcom/instabug/survey/SurveyPlugin$b;-><init>(Lcom/instabug/survey/SurveyPlugin;)V

    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/survey/SurveyPlugin;->subscribe:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public wake()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/SurveyPlugin;->migrateOldSurveysCacheToDb()V

    .line 2
    invoke-static {}, Lcom/instabug/survey/c;->l()V

    .line 3
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/c;->i()V

    .line 5
    :cond_0
    new-instance v0, Lcom/instabug/survey/models/a;

    invoke-direct {v0}, Lcom/instabug/survey/models/a;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/instabug/survey/SurveyPlugin;->resolveCountryInfo(Lcom/instabug/survey/models/a;)V

    .line 7
    invoke-direct {p0}, Lcom/instabug/survey/SurveyPlugin;->getLocaleResolved()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/survey/SurveyPlugin;->startFetchingAnnouncements(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/instabug/survey/SurveyPlugin;->getLocaleResolved()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/survey/SurveyPlugin;->startFetchingSurveys(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/instabug/survey/SurveyPlugin;->checkAppStatus()V

    .line 10
    new-instance v0, Lcom/instabug/survey/SurveyPlugin$a;

    invoke-direct {v0, p0}, Lcom/instabug/survey/SurveyPlugin$a;-><init>(Lcom/instabug/survey/SurveyPlugin;)V

    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/survey/SurveyPlugin;->userTypeDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
