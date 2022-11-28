.class public Lcom/instabug/library/visualusersteps/h;
.super Ljava/lang/Object;
.source "VisualUserStepsProvider.java"


# static fields
.field private static h:Lcom/instabug/library/visualusersteps/h;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/instabug/library/visualusersteps/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Lcom/instabug/library/visualusersteps/VisualUserStep;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:J


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/instabug/library/visualusersteps/h;->d:I

    .line 4
    iput-boolean v0, p0, Lcom/instabug/library/visualusersteps/h;->f:Z

    .line 10
    new-instance v0, Lcom/instabug/library/visualusersteps/g;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/g;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    .line 11
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Lcom/instabug/library/visualusersteps/h$a;

    invoke-direct {v1, p0, v0}, Lcom/instabug/library/visualusersteps/h$a;-><init>(Lcom/instabug/library/visualusersteps/h;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    .line 34
    :cond_0
    new-instance v0, Lcom/instabug/library/visualusersteps/h$b;

    invoke-direct {v0, p0}, Lcom/instabug/library/visualusersteps/h$b;-><init>(Lcom/instabug/library/visualusersteps/h;)V

    invoke-static {v0}, Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEventSubscriber;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instabug/library/visualusersteps/c;)V
    .locals 1

    .line 217
    new-instance v0, Lcom/instabug/library/visualusersteps/h$d;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/instabug/library/visualusersteps/h$d;-><init>(Lcom/instabug/library/visualusersteps/h;Landroid/graphics/Bitmap;Landroid/app/Activity;Lcom/instabug/library/visualusersteps/c;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/instabug/library/visualusersteps/c;)V
    .locals 5

    .line 209
    iget-boolean v0, p0, Lcom/instabug/library/visualusersteps/h;->f:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isReproStepsScreenshotEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    .line 216
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/instabug/library/visualusersteps/h$c;

    invoke-direct {v2, p0, v0, p1}, Lcom/instabug/library/visualusersteps/h$c;-><init>(Lcom/instabug/library/visualusersteps/h;Landroid/app/Activity;Lcom/instabug/library/visualusersteps/c;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/library/visualusersteps/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->g()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/visualusersteps/h;Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instabug/library/visualusersteps/c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/visualusersteps/h;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instabug/library/visualusersteps/c;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/visualusersteps/h;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/visualusersteps/h;->f:Z

    return p1
.end method

.method private b(Lcom/instabug/library/visualusersteps/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p0, p3, p2}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/h;->b()Lcom/instabug/library/visualusersteps/c;

    move-result-object p1

    :cond_1
    if-eqz p2, :cond_3

    const-string v0, "SCROLL"

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PINCH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SWIPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 p4, 0x0

    :cond_3
    if-nez p4, :cond_4

    const-string p4, ""

    :cond_4
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const-string v0, "SWIPE"

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SCROLL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    :cond_5
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 29
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAB_SELECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->e()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string p2, "SWIPE"

    move-object p1, v0

    :cond_6
    if-eqz p1, :cond_7

    .line 40
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-static {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->Builder(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p2

    .line 41
    invoke-virtual {p2, p3}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->d(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p2

    .line 42
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->b(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p2

    .line 43
    invoke-virtual {p2, p4}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->f(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p2

    .line 44
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(Z)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p2

    .line 45
    invoke-virtual {p2, p5}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object p2

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/visualusersteps/g;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/VisualUserStep;)V

    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/instabug/library/visualusersteps/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->j()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/instabug/library/visualusersteps/h;->b(Lcom/instabug/library/visualusersteps/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/instabug/library/visualusersteps/c;)Z
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/visualusersteps/VisualUserStep;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/visualusersteps/VisualUserStep;

    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APPLICATION_FOREGROUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic c(Lcom/instabug/library/visualusersteps/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->h()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->Builder(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->d(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->b(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    const-string v1, ""

    .line 5
    invoke-virtual {p1, v1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->f(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(Z)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/visualusersteps/h;->c:Lcom/instabug/library/visualusersteps/VisualUserStep;

    return-void
.end method

.method public static d()Lcom/instabug/library/visualusersteps/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/visualusersteps/h;->h:Lcom/instabug/library/visualusersteps/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/visualusersteps/h;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/h;-><init>()V

    sput-object v0, Lcom/instabug/library/visualusersteps/h;->h:Lcom/instabug/library/visualusersteps/h;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/visualusersteps/h;->h:Lcom/instabug/library/visualusersteps/h;

    return-object v0
.end method

.method private e()Lcom/instabug/library/visualusersteps/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->b()Ljava/util/Deque;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->b()Ljava/util/Deque;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/visualusersteps/c;

    return-object v0
.end method

.method private f()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

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

.method private g()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    const-string v1, "APPLICATION_BACKGROUND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "APPLICATION_FOREGROUND"

    .line 2
    invoke-direct {p0, v0}, Lcom/instabug/library/visualusersteps/h;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->b()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/visualusersteps/c;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/library/visualusersteps/VisualUserStep;

    .line 4
    invoke-virtual {v4}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ACTIVITY_PAUSED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6
    invoke-virtual {v4}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FRAGMENT_PAUSED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DIALOG_FRAGMENT_RESUMED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isReproStepsScreenshotEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->k()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->l()V

    .line 5
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->i()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->c()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->c()I

    move-result v0

    sub-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v1, v0}, Lcom/instabug/library/visualusersteps/g;->a(I)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->d()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 236
    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->decryptOnTheFly(Ljava/lang/String;)Lcom/instabug/library/internal/storage/ProcessedBytes;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/ProcessedBytes;->isProcessSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/ProcessedBytes;->getFileBytes()[B

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_0
    new-array p1, v1, [B

    .line 243
    :goto_0
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p1}, Landroid/widget/EditText;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    invoke-virtual {p1}, Landroid/widget/EditText;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "a text field"

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "a text field"

    return-object p1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/visualusersteps/VisualUserStep;",
            ">;"
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/h;->j()V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/g;->b()Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/visualusersteps/c;

    const/4 v3, 0x0

    .line 224
    invoke-static {v3}, Lcom/instabug/library/visualusersteps/VisualUserStep;->Builder(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object v4

    invoke-virtual {v2}, Lcom/instabug/library/visualusersteps/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->d(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object v4

    .line 225
    invoke-virtual {v4, v3}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->b(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object v3

    .line 226
    invoke-virtual {v2}, Lcom/instabug/library/visualusersteps/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->c(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object v3

    .line 228
    invoke-virtual {v2}, Lcom/instabug/library/visualusersteps/c;->d()Lcom/instabug/library/visualusersteps/c$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 229
    invoke-virtual {v2}, Lcom/instabug/library/visualusersteps/c;->d()Lcom/instabug/library/visualusersteps/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/library/visualusersteps/c$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->e(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object v4

    .line 230
    invoke-virtual {v2}, Lcom/instabug/library/visualusersteps/c;->d()Lcom/instabug/library/visualusersteps/c$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instabug/library/visualusersteps/c$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->g(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    .line 233
    :cond_0
    invoke-virtual {v3}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v2}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/instabug/library/visualusersteps/h;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p0, v2}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "END_EDITING"

    .line 246
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/instabug/library/visualusersteps/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 251
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/h;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0, v1}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "START_EDITING"

    .line 253
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/instabug/library/visualusersteps/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object p2, p0, Lcom/instabug/library/visualusersteps/h;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p0, v1}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "END_EDITING"

    .line 258
    invoke-direct {p0, v1, p2, p1, v0}, Lcom/instabug/library/visualusersteps/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/instabug/library/visualusersteps/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "SF_SWITCH_FALLTHROUGH"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "FRAGMENT_RESUMED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "FRAGMENT_ATTACHED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "DIALOG_FRAGMENT_RESUMED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "UNKNOWN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "ACTIVITY_PAUSED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "OPEN_DIALOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "ACTIVITY_STOPPED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "ACTIVITY_STARTED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "FRAGMENT_VISIBILITY_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "TAB_SELECT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_a
    const-string v1, "FRAGMENT_STOPPED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_b
    const-string v1, "FRAGMENT_STARTED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :sswitch_c
    const-string v1, "FRAGMENT_PAUSED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :sswitch_d
    const-string v1, "FRAGMENT_VIEW_CREATED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :sswitch_e
    const-string v1, "ACTIVITY_RESUMED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_f
    const-string v1, "ACTIVITY_CREATED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_10
    const-string v1, "APPLICATION_CREATED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_11
    const-string v1, "ACTIVITY_DESTROYED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_12
    const-string v1, "FRAGMENT_DETACHED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/instabug/library/visualusersteps/h;->b(Lcom/instabug/library/visualusersteps/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_0
    if-eqz p1, :cond_9

    .line 79
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->b()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 80
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->b()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object p2

    const-string p4, "START_EDITING"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 82
    invoke-virtual {p0, p1, v3}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/c;Z)V

    goto/16 :goto_3

    :pswitch_1
    if-eqz p3, :cond_9

    .line 83
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/h;->e:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 84
    invoke-virtual {p0, p3, p2}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/h;->b()Lcom/instabug/library/visualusersteps/c;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 87
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/c;)V

    goto :goto_3

    :pswitch_2
    if-eqz p1, :cond_4

    const-string p4, "DIALOG_FRAGMENT_RESUMED"

    .line 88
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iget-wide v0, p0, Lcom/instabug/library/visualusersteps/h;->g:J

    sub-long/2addr p4, v0

    const-wide/16 v0, 0x1f4

    cmp-long v3, p4, v0

    if-ltz v3, :cond_3

    iget-boolean p4, p0, Lcom/instabug/library/visualusersteps/h;->f:Z

    if-eqz p4, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/instabug/library/visualusersteps/h;->g:J

    goto :goto_2

    .line 95
    :cond_3
    :goto_1
    invoke-virtual {p1, p3}, Lcom/instabug/library/visualusersteps/c;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 99
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/h;->b(Lcom/instabug/library/visualusersteps/c;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 100
    invoke-virtual {p1, p3}, Lcom/instabug/library/visualusersteps/c;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 104
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->h()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 105
    :cond_6
    invoke-virtual {p0, p3, p2}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/h;->b()Lcom/instabug/library/visualusersteps/c;

    move-result-object p1

    :cond_7
    if-eqz p1, :cond_8

    .line 110
    invoke-virtual {p1, v2}, Lcom/instabug/library/visualusersteps/c;->a(Z)V

    :cond_8
    if-eqz p1, :cond_9

    .line 114
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->d()Lcom/instabug/library/visualusersteps/c$a;

    move-result-object p2

    if-nez p2, :cond_9

    .line 115
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/c;)V

    .line 154
    :cond_9
    :goto_3
    :pswitch_3
    iput-object p3, p0, Lcom/instabug/library/visualusersteps/h;->e:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x733b8b7f -> :sswitch_12
        -0x65a2c337 -> :sswitch_11
        -0x6232e547 -> :sswitch_10
        -0x61f4ea68 -> :sswitch_f
        -0x5dd82b79 -> :sswitch_e
        -0x5559b743 -> :sswitch_d
        -0x526b8203 -> :sswitch_c
        -0x3d000a8e -> :sswitch_b
        -0x3c3bb942 -> :sswitch_a
        -0x3776fafa -> :sswitch_9
        -0x2b891b4a -> :sswitch_8
        -0x105828cf -> :sswitch_7
        -0xf93d783 -> :sswitch_6
        0x3108dd -> :sswitch_5
        0x199e85e -> :sswitch_4
        0x19d1382a -> :sswitch_3
        0x68c41cdf -> :sswitch_2
        0x6e9e66b3 -> :sswitch_1
        0x757ff2c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/instabug/library/visualusersteps/c;Z)V
    .locals 6
    .param p1    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->b()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->b()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->b()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "START_EDITING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, v0}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->b()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->b()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenName()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->b()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v1

    const-string v2, "END_EDITING"

    const/4 v3, 0x0

    .line 184
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/instabug/library/visualusersteps/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const-string p2, "START_EDITING"

    goto :goto_1

    :cond_2
    const-string p2, "END_EDITING"

    :goto_1
    move-object v2, p2

    .line 193
    iget-object v3, p0, Lcom/instabug/library/visualusersteps/h;->e:Ljava/lang/String;

    iget-object p2, p0, Lcom/instabug/library/visualusersteps/h;->a:Ljava/lang/ref/WeakReference;

    .line 194
    invoke-virtual {p0, p2}, Lcom/instabug/library/visualusersteps/h;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 195
    invoke-direct/range {v0 .. v5}, Lcom/instabug/library/visualusersteps/h;->b(Lcom/instabug/library/visualusersteps/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    new-instance v1, Lcom/instabug/library/visualusersteps/c;

    iget v2, p0, Lcom/instabug/library/visualusersteps/h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/instabug/library/visualusersteps/h;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/instabug/library/visualusersteps/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/visualusersteps/g;->a(Lcom/instabug/library/visualusersteps/c;)V

    .line 156
    iget-object p2, p0, Lcom/instabug/library/visualusersteps/h;->c:Lcom/instabug/library/visualusersteps/VisualUserStep;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 157
    iget-object p2, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object p2

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->c:Lcom/instabug/library/visualusersteps/VisualUserStep;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->Builder(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->d(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    .line 159
    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->b(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    const-string v0, ""

    .line 160
    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->f(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(Z)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object p1

    .line 164
    invoke-virtual {p2, p1}, Lcom/instabug/library/visualusersteps/c;->a(Lcom/instabug/library/visualusersteps/VisualUserStep;)V

    .line 171
    iput-object v0, p0, Lcom/instabug/library/visualusersteps/h;->c:Lcom/instabug/library/visualusersteps/VisualUserStep;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/h;->b()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/c;Z)V

    return-void
.end method

.method public b()Lcom/instabug/library/visualusersteps/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->b()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/visualusersteps/c;

    .line 49
    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/c;->d()Lcom/instabug/library/visualusersteps/c$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/c;->d()Lcom/instabug/library/visualusersteps/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/visualusersteps/c$a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/c;->d()Lcom/instabug/library/visualusersteps/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/visualusersteps/c$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/c;->d()Lcom/instabug/library/visualusersteps/c$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/c$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h;->b:Lcom/instabug/library/visualusersteps/g;

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/g;->f()V

    return-void
.end method
