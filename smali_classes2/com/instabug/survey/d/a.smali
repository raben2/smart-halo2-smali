.class public Lcom/instabug/survey/d/a;
.super Ljava/lang/Object;
.source "AnnouncementManager.java"


# static fields
.field private static d:Lcom/instabug/survey/d/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/instabug/survey/d/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 2
    iput v0, p0, Lcom/instabug/survey/d/a;->c:I

    .line 5
    iput-object p1, p0, Lcom/instabug/survey/d/a;->a:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->k()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/d/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/d/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/instabug/survey/d/a;
    .locals 1

    .line 5
    sget-object v0, Lcom/instabug/survey/d/a;->d:Lcom/instabug/survey/d/a;

    if-nez v0, :cond_0

    .line 6
    invoke-static {p0}, Lcom/instabug/survey/d/a;->b(Landroid/content/Context;)V

    .line 8
    :cond_0
    sget-object p0, Lcom/instabug/survey/d/a;->d:Lcom/instabug/survey/d/a;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/survey/d/a;Lcom/instabug/survey/d/c/a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/d/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/survey/d/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/d/a;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/survey/d/a;->f(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/instabug/survey/d/c/a;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 65
    invoke-static {}, Lcom/instabug/survey/e/a;->b()Lcom/instabug/survey/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/a;->a(Lcom/instabug/survey/d/c/a;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Announcement Fetching Failed due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/instabug/survey/d/a;

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->j()V

    return-void
.end method

.method static synthetic b(Lcom/instabug/survey/d/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/survey/d/a;->c:I

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/instabug/survey/d/a;

    invoke-direct {v0, p0}, Lcom/instabug/survey/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instabug/survey/d/a;->d:Lcom/instabug/survey/d/a;

    const-string p0, "AnnouncementManager"

    const-string v0, "Announcement Manager initialized"

    .line 4
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/survey/d/a;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/survey/d/a;->e(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/instabug/survey/d/a;)Lcom/instabug/survey/d/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->e()Lcom/instabug/survey/d/b;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/instabug/library/util/LocaleUtils;->getCurrentLocaleResolved(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/d/d/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()Lcom/instabug/survey/d/b;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/a;->b:Lcom/instabug/survey/d/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/survey/d/b;

    iget-object v1, p0, Lcom/instabug/survey/d/a;->a:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/d/a;->a:Landroid/content/Context;

    .line 4
    invoke-static {v2}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instabug/survey/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instabug/survey/d/a;->b:Lcom/instabug/survey/d/b;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/d/a;->b:Lcom/instabug/survey/d/b;

    return-object v0
.end method

.method private e(Ljava/util/List;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserUUID()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/survey/d/c/a;

    .line 11
    invoke-virtual {v3}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 12
    invoke-static {v4, v5, v0, v6}, Lcom/instabug/survey/common/userInteractions/UserInteractionCacheManager;->retrieveUserInteraction(JLjava/lang/String;I)Lcom/instabug/survey/e/c/i;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 17
    invoke-virtual {v3, v4}, Lcom/instabug/survey/d/c/a;->a(Lcom/instabug/survey/e/c/i;)V

    .line 18
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 23
    invoke-static {v1}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->updateBulk(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AnnouncementManager"

    const-string v1, "Announcement Fetching Passed"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    const-class p1, Lcom/instabug/survey/d/a;

    const-string v0, "Instabug SDK is disabled."

    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->d()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/a;->d(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/a;->a(Ljava/util/List;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/a;->b(Ljava/util/List;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/a;->c(Ljava/util/List;)V

    .line 12
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->j()V

    return-void
.end method

.method public static f()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->ANNOUNCEMENTS:Lcom/instabug/library/Feature;

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

.method private g()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isFeaturesFetchedBefore()Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->e()Lcom/instabug/survey/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/d/b;->a()Lcom/instabug/survey/d/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/survey/d/a$c;

    invoke-direct {v1, p0, v0}, Lcom/instabug/survey/d/a$c;-><init>(Lcom/instabug/survey/d/a;Lcom/instabug/survey/d/c/a;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_NULLABLE_DEREFERENCE"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/survey/d/a$d;

    invoke-direct {v0, p0}, Lcom/instabug/survey/d/a$d;-><init>(Lcom/instabug/survey/d/a;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/16 v0, 0x65

    .line 1
    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->getAnnouncementsByType(I)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x64

    .line 2
    invoke-static {v1}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->getAnnouncementsByType(I)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/d/c/a;

    .line 5
    invoke-virtual {v2}, Lcom/instabug/survey/d/c/a;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->h()V

    return-void

    .line 11
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->i()V

    :cond_2
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/survey/d/a$a;

    invoke-direct {v0, p0}, Lcom/instabug/survey/d/a$a;-><init>(Lcom/instabug/survey/d/a;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Context is null."

    .line 14
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 66
    new-instance v0, Lcom/instabug/survey/d/a$e;

    invoke-direct {v0, p0}, Lcom/instabug/survey/d/a$e;-><init>(Lcom/instabug/survey/d/a;)V

    invoke-static {v0}, Lcom/instabug/library/user/UserManagerWrapper;->getUUIDAsync(Lcom/instabug/library/internal/storage/cache/db/InstabugDBInsertionListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/instabug/survey/d/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instabug/survey/d/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/instabug/survey/d/d/a;->c()Lcom/instabug/survey/d/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/survey/d/d/a;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 13
    invoke-static {}, Lcom/instabug/survey/announcements/network/b;->a()Lcom/instabug/survey/announcements/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/d/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/instabug/survey/d/a$b;

    invoke-direct {v2, p0}, Lcom/instabug/survey/d/a$b;-><init>(Lcom/instabug/survey/d/a;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/instabug/survey/announcements/network/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/network/Request$Callbacks;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/d/a;->h()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-direct {p0, p1}, Lcom/instabug/survey/d/a;->a(Ljava/lang/Throwable;)V

    .line 40
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/instabug/survey/d/a;

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->getAllAnnouncement()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserUUID()Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/survey/d/c/a;

    .line 50
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    invoke-virtual {v3}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 53
    invoke-static {v3, v4, v1, v5}, Lcom/instabug/survey/common/userInteractions/UserInteractionCacheManager;->retrieveUserInteraction(JLjava/lang/String;I)Lcom/instabug/survey/e/c/i;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 64
    invoke-static {v2}, Lcom/instabug/survey/common/userInteractions/UserInteractionCacheManager;->deleteBulkOfUserInteractions(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method a(Lcom/instabug/survey/d/c/a;Lcom/instabug/survey/d/c/a;)Z
    .locals 2
    .param p2    # Lcom/instabug/survey/d/c/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public b()V
    .locals 1

    .line 10
    new-instance v0, Lcom/instabug/survey/d/a$f;

    invoke-direct {v0, p0}, Lcom/instabug/survey/d/a$f;-><init>(Lcom/instabug/survey/d/a;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->getAllAnnouncement()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/d/c/a;

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->deleteAnnouncement(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(Lcom/instabug/survey/d/c/a;Lcom/instabug/survey/d/c/a;)Z
    .locals 1
    .param p2    # Lcom/instabug/survey/d/c/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/instabug/survey/d/c/a;->t()Z

    move-result p2

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->t()Z

    move-result p1

    if-eq p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public c()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/d/a;->a:Landroid/content/Context;

    .line 17
    invoke-static {v1}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/survey/d/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/util/List;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/c/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->isAnnouncementExist(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->getAnnouncement(J)Lcom/instabug/survey/d/c/a;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/instabug/survey/d/a;->b(Lcom/instabug/survey/d/c/a;Lcom/instabug/survey/d/c/a;)Z

    move-result v2

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/c/a;Lcom/instabug/survey/d/c/a;)Z

    move-result v1

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    .line 9
    :cond_2
    invoke-static {v0, v2, v1}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->insertOrUpdatePausedOrLocale(Lcom/instabug/survey/d/c/a;ZZ)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->t()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/c;->a(Lcom/instabug/survey/d/c/a;)V

    .line 14
    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->addAnnouncement(Lcom/instabug/survey/d/c/a;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method d(Ljava/util/List;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/c/a;

    .line 4
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->p()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/survey/d/d/a;->c()Lcom/instabug/survey/d/d/a;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->f()Lcom/instabug/survey/e/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/h;->a()I

    move-result v0

    .line 7
    invoke-virtual {v1, v0}, Lcom/instabug/survey/d/d/a;->a(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->p()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 10
    invoke-static {}, Lcom/instabug/survey/d/d/a;->c()Lcom/instabug/survey/d/d/a;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->f()Lcom/instabug/survey/e/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/h;->a()I

    move-result v0

    .line 12
    invoke-virtual {v1, v0}, Lcom/instabug/survey/d/d/a;->b(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
