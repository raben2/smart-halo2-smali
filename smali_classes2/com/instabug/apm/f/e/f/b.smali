.class public Lcom/instabug/apm/f/e/f/b;
.super Ljava/lang/Object;
.source "CustomUiTraceHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/f/e/f/a;
.implements Lcom/instabug/apm/f/e/a;
.implements Lcom/instabug/apm/k/f/b;
.implements Lcom/instabug/apm/f/e/b;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x10
.end annotation


# instance fields
.field private final a:Lcom/instabug/apm/k/d/a;

.field private final b:Lcom/instabug/apm/c/c;

.field private c:Lcom/instabug/apm/logger/a/a;

.field private final d:Lcom/instabug/apm/j/a;

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

.field h:Lcom/instabug/apm/b/a/e/a;


# direct methods
.method public constructor <init>(Lcom/instabug/apm/k/d/a;Lcom/instabug/apm/c/c;Lcom/instabug/apm/logger/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/f/e/f/b;->a:Lcom/instabug/apm/k/d/a;

    .line 3
    iput-object p2, p0, Lcom/instabug/apm/f/e/f/b;->b:Lcom/instabug/apm/c/c;

    .line 4
    iput-object p3, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    new-instance p3, Lcom/instabug/apm/k/f/a;

    invoke-direct {p3, p0}, Lcom/instabug/apm/k/f/a;-><init>(Lcom/instabug/apm/k/f/b;)V

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/instabug/apm/f/e/f/b;->f:Ljava/lang/ref/WeakReference;

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_0

    .line 7
    new-instance p1, Ljava/lang/ref/WeakReference;

    new-instance p3, Lcom/instabug/apm/k/f/c;

    invoke-direct {p3, p0}, Lcom/instabug/apm/k/f/c;-><init>(Lcom/instabug/apm/k/f/b;)V

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/instabug/apm/f/e/f/b;->g:Ljava/lang/ref/WeakReference;

    .line 9
    :cond_0
    invoke-interface {p2}, Lcom/instabug/apm/c/c;->d()F

    move-result p1

    invoke-static {p0, p1}, Lcom/instabug/apm/e/a;->a(Lcom/instabug/apm/f/e/a;F)Lcom/instabug/apm/j/a;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/apm/f/e/f/b;->d:Lcom/instabug/apm/j/a;

    .line 10
    invoke-static {}, Lcom/instabug/apm/e/a;->J()Lcom/instabug/apm/b/a/e/a;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/apm/f/e/f/b;->h:Lcom/instabug/apm/b/a/e/a;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Lcom/instabug/library/model/common/Session;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/library/model/common/Session;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 57
    new-instance v0, Lcom/instabug/apm/b/b/f;

    invoke-direct {v0}, Lcom/instabug/apm/b/b/f;-><init>()V

    iput-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    .line 58
    invoke-interface {p3}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/instabug/apm/b/b/f;->f(Ljava/lang/String;)V

    .line 59
    iget-object p3, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {p3, p1}, Lcom/instabug/apm/b/b/f;->c(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/instabug/apm/b/b/f;->d(J)V

    .line 61
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/instabug/apm/b/b/f;->e(J)V

    .line 62
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    iget-object p3, p0, Lcom/instabug/apm/f/e/f/b;->a:Lcom/instabug/apm/k/d/a;

    invoke-interface {p3, p2}, Lcom/instabug/apm/k/d/a;->a(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/instabug/apm/b/b/f;->a(I)V

    .line 63
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    iget-object p3, p0, Lcom/instabug/apm/f/e/f/b;->a:Lcom/instabug/apm/k/d/a;

    invoke-interface {p3, p2}, Lcom/instabug/apm/k/d/a;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/instabug/apm/b/b/f;->a(Ljava/lang/Boolean;)V

    .line 64
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    iget-object p3, p0, Lcom/instabug/apm/f/e/f/b;->a:Lcom/instabug/apm/k/d/a;

    invoke-interface {p3, p2}, Lcom/instabug/apm/k/d/a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/apm/b/b/f;->d(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/instabug/apm/b/b/f;->a(Z)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/instabug/apm/k/f/a;

    invoke-direct {v1, p0}, Lcom/instabug/apm/k/f/a;-><init>(Lcom/instabug/apm/k/f/b;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/apm/f/e/f/b;->f:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/apm/k/f/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/instabug/apm/k/f/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/instabug/apm/k/f/c;

    invoke-direct {v1, p0}, Lcom/instabug/apm/k/f/c;-><init>(Lcom/instabug/apm/k/f/b;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/apm/f/e/f/b;->g:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/apm/k/f/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/instabug/apm/k/f/c;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/apm/k/f/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/instabug/apm/k/f/a;->b(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/instabug/apm/f/e/f/b;->f:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private e(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->g:Ljava/lang/ref/WeakReference;

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
    iput-object p1, p0, Lcom/instabug/apm/f/e/f/b;->g:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private f(Landroid/app/Activity;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {v4}, Lcom/instabug/apm/b/b/f;->n()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/apm/b/b/f;->a(J)V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/b/b/f;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/b/b/f;->e(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/apm/k/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/b/b/f;->b(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    iget-object v1, p0, Lcom/instabug/apm/f/e/f/b;->a:Lcom/instabug/apm/k/d/a;

    invoke-interface {v1, p1}, Lcom/instabug/apm/k/d/a;->b(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/b/b/f;->b(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/apm/b/b/f;)J
    .locals 3
    .param p1    # Lcom/instabug/apm/b/b/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/f;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/instabug/apm/b/b/f;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {v0, p1}, Lcom/instabug/apm/b/b/f;->a(I)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

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

    .line 46
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/instabug/apm/b/b/f;->l()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/apm/b/b/f;->c(J)V

    long-to-float v0, p1

    .line 48
    iget-object v1, p0, Lcom/instabug/apm/f/e/f/b;->b:Lcom/instabug/apm/c/c;

    invoke-interface {v1}, Lcom/instabug/apm/c/c;->o()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/f;->d()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/apm/b/b/f;->b(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ui trace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/f;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is ending in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->d:Lcom/instabug/apm/j/a;

    if-eqz v0, :cond_1

    .line 21
    invoke-interface {v0}, Lcom/instabug/apm/j/a;->b()V

    .line 23
    :cond_1
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/e/f/b;->e(Landroid/app/Activity;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/e/f/b;->d(Landroid/app/Activity;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/e/f/b;->f(Landroid/app/Activity;)V

    .line 27
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->k()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 29
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/f;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Custom UI Trace \"$name\" was ended from a non-main thread. Please make sure to end Custom UI Traces from the main thread."

    const-string v2, "$name"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->k(Ljava/lang/String;)V

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->h:Lcom/instabug/apm/b/a/e/a;

    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-interface {p1, v0}, Lcom/instabug/apm/b/a/e/a;->a(Lcom/instabug/apm/b/b/f;)J

    .line 32
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom UI Trace \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    invoke-virtual {v1}, Lcom/instabug/apm/b/b/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" has ended.\nTotal duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    .line 33
    invoke-virtual {p0, v1}, Lcom/instabug/apm/f/e/f/b;->a(Lcom/instabug/apm/b/b/f;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds\nTotal hang duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    .line 34
    invoke-virtual {p0, v1}, Lcom/instabug/apm/f/e/f/b;->b(Lcom/instabug/apm/b/b/f;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    const-string v0, "uiTraceModel or currentSession is null, can\'t insert to DB"

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 44
    iget-object p2, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/instabug/apm/f/e/f/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "App went background while ui Trace %s is running, ending the trace\u2026"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/instabug/apm/f/e/f/b;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing Ui trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/apm/f/e/f/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " need to be ended first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/apm/f/e/f/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    const-string v1, "Custom UI Trace \"$s1\" has started and \"$s2\" has been ended. Please make sure to end traces before starting a new one by following the instructions at this link: https://docs.instabug.com/reference#end-ui-trace"

    const-string v2, "$s1"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instabug/apm/f/e/f/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$s2"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->i(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lcom/instabug/apm/f/e/f/b;->a(Landroid/app/Activity;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/instabug/apm/e/a;->C()Lcom/instabug/apm/f/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/apm/f/d/c;->c()Lcom/instabug/library/model/common/Session;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/apm/f/e/f/b;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/instabug/library/model/common/Session;)V

    .line 13
    invoke-direct {p0, p2}, Lcom/instabug/apm/f/e/f/b;->b(Landroid/app/Activity;)V

    .line 14
    invoke-direct {p0, p2}, Lcom/instabug/apm/f/e/f/b;->c(Landroid/app/Activity;)V

    .line 15
    iget-object p2, p0, Lcom/instabug/apm/f/e/f/b;->d:Lcom/instabug/apm/j/a;

    if-eqz p2, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/instabug/apm/j/a;->a()V

    .line 18
    :cond_3
    iget-object p2, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom UI Trace  \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has started."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/instabug/apm/logger/a/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_0

    .line 56
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

    .line 5
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

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->e:Lcom/instabug/apm/b/b/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/e/f/b;->c:Lcom/instabug/apm/logger/a/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/instabug/apm/f/e/f/b;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "New activity resumed while ui Trace %s is running, registering broadcast receivers\u2026"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/e/f/b;->c(Landroid/app/Activity;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/apm/f/e/f/b;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
