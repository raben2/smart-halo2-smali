.class public Lcom/instabug/apm/g/a;
.super Ljava/lang/Object;
.source "ActivityCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/instabug/apm/f/d/a;


# static fields
.field private static q:Z = false


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Lcom/instabug/apm/logger/a/a;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:Lcom/instabug/apm/f/e/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/instabug/apm/f/e/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/instabug/apm/b/b/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "app_launch_thread_executor"

    .line 2
    invoke-static {v0}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/g/a;->a:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/g/a;->b:Lcom/instabug/apm/logger/a/a;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/instabug/apm/g/a;->e:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/instabug/apm/g/a;->f:Z

    .line 14
    iput v0, p0, Lcom/instabug/apm/g/a;->m:I

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/instabug/apm/g/a;->o:Ljava/util/Map;

    .line 22
    invoke-static {}, Lcom/instabug/apm/g/a;->c()V

    .line 23
    invoke-static {p0}, Lcom/instabug/apm/f/d/e;->a(Lcom/instabug/apm/f/d/a;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/instabug/apm/g/a;->g:J

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/instabug/apm/g/a;->h:J

    .line 26
    iput-object p1, p0, Lcom/instabug/apm/g/a;->c:Landroid/content/Context;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/instabug/apm/g/a;->d:Z

    .line 28
    invoke-direct {p0}, Lcom/instabug/apm/g/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    iput-boolean v0, p0, Lcom/instabug/apm/g/a;->e:Z

    .line 31
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_1

    .line 32
    invoke-static {}, Lcom/instabug/apm/e/a;->K()Lcom/instabug/apm/f/e/c;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/apm/g/a;->n:Lcom/instabug/apm/f/e/c;

    :cond_1
    return-void
.end method

.method private a(J)J
    .locals 1

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    return-wide p1
.end method

.method static synthetic a(Lcom/instabug/apm/g/a;)Lcom/instabug/apm/b/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/g/a;->p:Lcom/instabug/apm/b/b/b;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/apm/g/a;Lcom/instabug/apm/b/b/b;)Lcom/instabug/apm/b/b/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/g/a;->p:Lcom/instabug/apm/b/b/b;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/instabug/apm/g/a;->n:Lcom/instabug/apm/f/e/c;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1}, Lcom/instabug/apm/f/e/c;->onActivityStarted(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;J)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 20
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/apm/g/a;->n:Lcom/instabug/apm/f/e/c;

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/instabug/apm/g/a;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/instabug/apm/f/e/c;->a(Landroid/app/Activity;JLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;JJ)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 17
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/apm/g/a;->n:Lcom/instabug/apm/f/e/c;

    if-eqz v1, :cond_0

    .line 19
    iget-object v7, p0, Lcom/instabug/apm/g/a;->o:Ljava/util/Map;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/instabug/apm/f/e/c;->a(Landroid/app/Activity;JJLjava/util/Map;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/instabug/apm/g/a;->n:Lcom/instabug/apm/f/e/c;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/f/e/c;->a(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/g/a;->c:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-string v2, "activity"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_3

    .line 10
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/instabug/apm/g/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 15
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/instabug/apm/g/a;->q:Z

    return v0
.end method

.method private static c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/instabug/apm/g/a;->q:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V
    .locals 1
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    iget-object p2, p0, Lcom/instabug/apm/g/a;->p:Lcom/instabug/apm/b/b/b;

    if-eqz p2, :cond_0

    .line 24
    iget-object p2, p0, Lcom/instabug/apm/g/a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/instabug/apm/g/a$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/apm/g/a$a;-><init>(Lcom/instabug/apm/g/a;Lcom/instabug/library/model/common/Session;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/instabug/apm/g/a;->j:J

    iput-wide p1, p0, Lcom/instabug/apm/g/a;->i:J

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Lcom/instabug/apm/k/h/a;->a(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/instabug/apm/g/a;->a(Landroid/app/Activity;J)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 5
    invoke-static {p1}, Lcom/instabug/apm/k/h/a;->a(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p0

    move-object v3, p1

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/instabug/apm/g/a;->a(Landroid/app/Activity;JJ)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Lcom/instabug/apm/c/c;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/instabug/apm/g/a;->f:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/instabug/apm/g/a;->d:Z

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-boolean v2, p0, Lcom/instabug/apm/g/a;->e:Z

    if-eqz v2, :cond_1

    .line 15
    new-instance v2, Lcom/instabug/apm/b/b/b;

    invoke-direct {v2}, Lcom/instabug/apm/b/b/b;-><init>()V

    iput-object v2, p0, Lcom/instabug/apm/g/a;->p:Lcom/instabug/apm/b/b/b;

    const-string v3, "cold"

    .line 16
    invoke-virtual {v2, v3}, Lcom/instabug/apm/b/b/b;->b(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/instabug/apm/g/a;->p:Lcom/instabug/apm/b/b/b;

    invoke-virtual {v2, p1}, Lcom/instabug/apm/b/b/b;->a(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/instabug/apm/g/a;->p:Lcom/instabug/apm/b/b/b;

    iget-wide v2, p0, Lcom/instabug/apm/g/a;->g:J

    invoke-virtual {p1, v2, v3}, Lcom/instabug/apm/b/b/b;->c(J)V

    .line 19
    iget-object p1, p0, Lcom/instabug/apm/g/a;->p:Lcom/instabug/apm/b/b/b;

    iget-wide v2, p0, Lcom/instabug/apm/g/a;->h:J

    sub-long v2, v0, v2

    invoke-virtual {p1, v2, v3}, Lcom/instabug/apm/b/b/b;->a(J)V

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    iget-wide v2, p0, Lcom/instabug/apm/g/a;->i:J

    iget-wide v4, p0, Lcom/instabug/apm/g/a;->h:J

    sub-long/2addr v2, v4

    .line 22
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ap_on_c_mus"

    .line 23
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-wide v2, p0, Lcom/instabug/apm/g/a;->k:J

    iget-wide v4, p0, Lcom/instabug/apm/g/a;->j:J

    sub-long/2addr v2, v4

    .line 26
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ac_on_c_mus"

    .line 27
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-wide v2, p0, Lcom/instabug/apm/g/a;->l:J

    sub-long v2, v0, v2

    .line 30
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ac_on_st_mus"

    .line 31
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v2, p0, Lcom/instabug/apm/g/a;->p:Lcom/instabug/apm/b/b/b;

    invoke-virtual {v2, p1}, Lcom/instabug/apm/b/b/b;->a(Ljava/util/Map;)V

    .line 34
    iget-object p1, p0, Lcom/instabug/apm/g/a;->b:Lcom/instabug/apm/logger/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/instabug/apm/g/a;->h:J

    sub-long v3, v0, v3

    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/g/a;->a(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms to launch.\nApp onCreate(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/instabug/apm/g/a;->j:J

    iget-wide v5, p0, Lcom/instabug/apm/g/a;->h:J

    sub-long/2addr v3, v5

    .line 35
    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/g/a;->a(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  ms\nActivity onCreate(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/instabug/apm/g/a;->k:J

    iget-wide v5, p0, Lcom/instabug/apm/g/a;->j:J

    sub-long/2addr v3, v5

    .line 36
    invoke-direct {p0, v3, v4}, Lcom/instabug/apm/g/a;->a(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms\nActivity onStart(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/instabug/apm/g/a;->l:J

    sub-long/2addr v0, v3

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/instabug/apm/g/a;->a(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->d(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/instabug/apm/g/a;->e:Z

    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instabug/apm/g/a;->l:J

    iput-wide v0, p0, Lcom/instabug/apm/g/a;->k:J

    .line 2
    iget v0, p0, Lcom/instabug/apm/g/a;->m:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/instabug/apm/g/a;->f:Z

    .line 3
    iget v0, p0, Lcom/instabug/apm/g/a;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/instabug/apm/g/a;->m:I

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/instabug/apm/g/a;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/instabug/apm/g/a;->m:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/instabug/apm/g/a;->m:I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcom/instabug/apm/g/a;->e:Z

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    invoke-static {p1}, Lcom/instabug/apm/k/h/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget v0, p0, Lcom/instabug/apm/g/a;->m:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/instabug/apm/g/a;->a(Landroid/app/Activity;Z)V

    :cond_2
    return-void
.end method
