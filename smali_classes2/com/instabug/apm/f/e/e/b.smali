.class public Lcom/instabug/apm/f/e/e/b;
.super Ljava/lang/Object;
.source "AutomaticUiTraceHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/f/e/e/a;
.implements Lcom/instabug/apm/f/e/a;
.implements Lcom/instabug/apm/k/f/b;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x10
.end annotation


# instance fields
.field private a:Lcom/instabug/apm/k/d/a;

.field private b:Lcom/instabug/apm/c/c;

.field private c:Lcom/instabug/apm/j/a;

.field private d:Lcom/instabug/apm/logger/a/a;

.field private e:Lcom/instabug/apm/b/b/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/instabug/apm/k/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/instabug/apm/k/f/c;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/instabug/apm/f/d/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field i:Lcom/instabug/apm/b/a/d/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field j:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lcom/instabug/apm/e/a;->r()Lcom/instabug/apm/k/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/e/e/b;->a:Lcom/instabug/apm/k/d/a;

    .line 8
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/e/e/b;->b:Lcom/instabug/apm/c/c;

    .line 11
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->d()F

    move-result v0

    .line 12
    invoke-static {p0, v0}, Lcom/instabug/apm/e/a;->a(Lcom/instabug/apm/f/e/a;F)Lcom/instabug/apm/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/e/e/b;->c:Lcom/instabug/apm/j/a;

    .line 14
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/e/e/b;->d:Lcom/instabug/apm/logger/a/a;

    .line 23
    invoke-static {}, Lcom/instabug/apm/e/a;->C()Lcom/instabug/apm/f/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/e/e/b;->h:Lcom/instabug/apm/f/d/c;

    .line 25
    invoke-static {}, Lcom/instabug/apm/e/a;->E()Lcom/instabug/apm/b/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/e/e/b;->i:Lcom/instabug/apm/b/a/d/c;

    const-string v0, "ui_trace_thread_executor"

    .line 27
    invoke-static {v0}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/e/e/b;->j:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/instabug/apm/f/e/e/b;)Lcom/instabug/apm/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/f/e/e/b;->b:Lcom/instabug/apm/c/c;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/instabug/apm/k/f/a;

    invoke-direct {v0, p0}, Lcom/instabug/apm/k/f/a;-><init>(Lcom/instabug/apm/k/f/b;)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/instabug/apm/k/f/a;->a(Landroid/content/Context;)V

    .line 34
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/instabug/apm/f/e/e/b;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/app/Activity;JLcom/instabug/apm/b/b/f;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-eqz p4, :cond_2

    .line 21
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->a:Lcom/instabug/apm/k/d/a;

    invoke-interface {v0, p1}, Lcom/instabug/apm/k/d/a;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/instabug/apm/b/b/f;->b(I)V

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4}, Lcom/instabug/apm/b/b/f;->n()J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p2

    invoke-virtual {p4, p2, p3}, Lcom/instabug/apm/b/b/f;->a(J)V

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p4}, Lcom/instabug/apm/b/b/f;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/instabug/apm/b/b/f;->a(Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/apm/k/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/instabug/apm/b/b/f;->b(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p4, p1}, Lcom/instabug/apm/b/b/f;->a(Z)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/instabug/apm/f/e/e/b;->d:Lcom/instabug/apm/logger/a/a;

    const-string p2, "uiTraceModel is null, can\'t update"

    invoke-virtual {p1, p2}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/instabug/apm/b/b/f;
    .locals 2

    .line 2
    new-instance v0, Lcom/instabug/apm/b/b/f;

    invoke-direct {v0}, Lcom/instabug/apm/b/b/f;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/f/e/e/b;->a:Lcom/instabug/apm/k/d/a;

    invoke-interface {v1, p1}, Lcom/instabug/apm/k/d/a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/b/b/f;->a(I)V

    .line 4
    iget-object v1, p0, Lcom/instabug/apm/f/e/e/b;->a:Lcom/instabug/apm/k/d/a;

    invoke-interface {v1, p1}, Lcom/instabug/apm/k/d/a;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/b/b/f;->a(Ljava/lang/Boolean;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/instabug/apm/b/b/f;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p3}, Lcom/instabug/apm/b/b/f;->e(Ljava/lang/String;)V

    .line 7
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/instabug/apm/b/b/f;->d(J)V

    .line 8
    invoke-virtual {v0, p6, p7}, Lcom/instabug/apm/b/b/f;->e(J)V

    .line 9
    iget-object p2, p0, Lcom/instabug/apm/f/e/e/b;->a:Lcom/instabug/apm/k/d/a;

    invoke-interface {p2, p1}, Lcom/instabug/apm/k/d/a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/b/b/f;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/instabug/apm/f/e/e/b;)Lcom/instabug/apm/logger/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/f/e/e/b;->d:Lcom/instabug/apm/logger/a/a;

    return-object p0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 2

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 11
    new-instance v0, Lcom/instabug/apm/k/f/c;

    invoke-direct {v0, p0}, Lcom/instabug/apm/k/f/c;-><init>(Lcom/instabug/apm/k/f/b;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/instabug/apm/k/f/c;->a(Landroid/content/Context;)V

    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/instabug/apm/f/e/e/b;->g:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/apm/k/f/a;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/instabug/apm/k/f/a;->b(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/instabug/apm/f/e/e/b;->f:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private c(Lcom/instabug/apm/b/b/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instabug/apm/f/e/e/b$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/apm/f/e/e/b$a;-><init>(Lcom/instabug/apm/f/e/e/b;Lcom/instabug/apm/b/b/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/apm/k/f/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/instabug/apm/k/f/c;->b(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/instabug/apm/f/e/e/b;->g:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/apm/b/b/f;)J
    .locals 3
    .param p1    # Lcom/instabug/apm/b/b/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/instabug/apm/b/b/f;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {v0, p1}, Lcom/instabug/apm/b/b/f;->a(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/f;->a()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/b/b/f;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/instabug/apm/b/b/f;->l()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/apm/b/b/f;->c(J)V

    long-to-float v0, p1

    .line 37
    iget-object v1, p0, Lcom/instabug/apm/f/e/e/b;->b:Lcom/instabug/apm/c/c;

    invoke-interface {v1}, Lcom/instabug/apm/c/c;->o()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/f;->d()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/apm/b/b/f;->b(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;J)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/e/e/b;->d(Landroid/app/Activity;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/e/e/b;->c(Landroid/app/Activity;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->c:Lcom/instabug/apm/j/a;

    invoke-interface {v0}, Lcom/instabug/apm/j/a;->b()V

    .line 10
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/instabug/apm/f/e/e/b;->a(Landroid/app/Activity;JLcom/instabug/apm/b/b/f;)V

    .line 12
    iget-object p2, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-direct {p0, p2}, Lcom/instabug/apm/f/e/e/b;->c(Lcom/instabug/apm/b/b/f;)V

    .line 13
    iget-object p2, p0, Lcom/instabug/apm/f/e/e/b;->d:Lcom/instabug/apm/logger/a/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ended Auto UI Trace for screen with name \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\".\nTotal duration: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    .line 14
    invoke-virtual {p0, p1}, Lcom/instabug/apm/f/e/e/b;->a(Lcom/instabug/apm/b/b/f;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds\nTotal hang duration: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    .line 15
    invoke-virtual {p0, p1}, Lcom/instabug/apm/f/e/e/b;->b(Lcom/instabug/apm/b/b/f;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Lcom/instabug/apm/logger/a/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/instabug/apm/f/e/e/b;->d:Lcom/instabug/apm/logger/a/a;

    const-string p2, "uiTraceModel is null, can\'t insert to DB"

    invoke-virtual {p1, p2}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/e/e/b;->a(Landroid/app/Activity;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/e/e/b;->b(Landroid/app/Activity;)V

    .line 4
    invoke-direct/range {p0 .. p7}, Lcom/instabug/apm/f/e/e/b;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/instabug/apm/b/b/f;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    .line 5
    iget-object p2, p0, Lcom/instabug/apm/f/e/e/b;->c:Lcom/instabug/apm/j/a;

    invoke-interface {p2}, Lcom/instabug/apm/j/a;->a()V

    .line 6
    iget-object p2, p0, Lcom/instabug/apm/f/e/e/b;->d:Lcom/instabug/apm/logger/a/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Started Auto UI Trace for screen with name \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/instabug/apm/logger/a/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/instabug/apm/f/e/e/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/b/b/f;->a(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/instabug/apm/b/b/f;)J
    .locals 5
    .param p1    # Lcom/instabug/apm/b/b/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->l()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->d()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method
