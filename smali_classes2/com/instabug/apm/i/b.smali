.class public Lcom/instabug/apm/i/b;
.super Ljava/lang/Object;
.source "APMSyncManagerImpl.java"

# interfaces
.implements Lcom/instabug/apm/i/a;


# instance fields
.field private a:Lcom/instabug/apm/logger/a/a;

.field private b:Lcom/instabug/apm/c/c;

.field private c:Lcom/instabug/apm/f/d/c;

.field private d:Lcom/instabug/apm/b/a/d/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/instabug/apm/f/a/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/instabug/apm/f/c/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:Lcom/instabug/apm/f/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Lcom/instabug/apm/b/a/e/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field i:Lcom/instabug/apm/h/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public j:Lcom/instabug/library/networkv2/request/Request$Callbacks;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instabug/library/networkv2/request/Request$Callbacks<",
            "Lcom/instabug/library/network/RequestResponse;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/i/b;->a:Lcom/instabug/apm/logger/a/a;

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->C()Lcom/instabug/apm/f/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/i/b;->c:Lcom/instabug/apm/f/d/c;

    .line 157
    new-instance v0, Lcom/instabug/apm/i/b$b;

    invoke-direct {v0, p0}, Lcom/instabug/apm/i/b$b;-><init>(Lcom/instabug/apm/i/b;)V

    iput-object v0, p0, Lcom/instabug/apm/i/b;->j:Lcom/instabug/library/networkv2/request/Request$Callbacks;

    .line 158
    invoke-static {}, Lcom/instabug/apm/e/a;->E()Lcom/instabug/apm/b/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/i/b;->d:Lcom/instabug/apm/b/a/d/c;

    .line 159
    invoke-static {}, Lcom/instabug/apm/e/a;->i()Lcom/instabug/apm/f/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/i/b;->e:Lcom/instabug/apm/f/a/a;

    .line 160
    invoke-static {}, Lcom/instabug/apm/e/a;->y()Lcom/instabug/apm/f/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/i/b;->f:Lcom/instabug/apm/f/c/a;

    .line 161
    invoke-static {}, Lcom/instabug/apm/e/a;->u()Lcom/instabug/apm/f/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/i/b;->g:Lcom/instabug/apm/f/b/a;

    .line 162
    invoke-static {}, Lcom/instabug/apm/e/a;->J()Lcom/instabug/apm/b/a/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/i/b;->h:Lcom/instabug/apm/b/a/e/a;

    .line 163
    invoke-static {}, Lcom/instabug/apm/e/a;->H()Lcom/instabug/apm/h/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/i/b;->i:Lcom/instabug/apm/h/b/a;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/instabug/apm/i/b;->c:Lcom/instabug/apm/f/d/c;

    invoke-interface {v0, p1}, Lcom/instabug/apm/f/d/c;->a(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-direct {p0, p1}, Lcom/instabug/apm/i/b;->a(Lcom/instabug/apm/b/b/d;)V

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/instabug/apm/i/b;)Lcom/instabug/apm/logger/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/i/b;->a:Lcom/instabug/apm/logger/a/a;

    return-object p0
.end method

.method private a(Lcom/instabug/apm/b/b/d;)V
    .locals 2
    .param p1    # Lcom/instabug/apm/b/b/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->getId()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/instabug/apm/i/b;->d:Lcom/instabug/apm/b/a/d/c;

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v1, v0}, Lcom/instabug/apm/b/a/d/c;->a(Ljava/lang/String;)Lcom/instabug/apm/b/b/e;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instabug/apm/b/b/d;->a(Lcom/instabug/apm/b/b/e;)V

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/instabug/apm/i/b;->e:Lcom/instabug/apm/f/a/a;

    invoke-interface {v1, v0}, Lcom/instabug/apm/f/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instabug/apm/b/b/d;->a(Ljava/util/List;)V

    .line 13
    iget-object v1, p0, Lcom/instabug/apm/i/b;->f:Lcom/instabug/apm/f/c/a;

    invoke-interface {v1, v0}, Lcom/instabug/apm/f/c/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instabug/apm/b/b/d;->c(Ljava/util/List;)V

    .line 14
    iget-object v1, p0, Lcom/instabug/apm/i/b;->g:Lcom/instabug/apm/f/b/a;

    invoke-interface {v1, v0}, Lcom/instabug/apm/f/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/instabug/apm/b/b/d;->b(Ljava/util/List;)V

    .line 15
    iget-object v1, p0, Lcom/instabug/apm/i/b;->h:Lcom/instabug/apm/b/a/e/a;

    invoke-interface {v1, v0}, Lcom/instabug/apm/b/a/e/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/apm/b/b/d;->d(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/d;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/apm/b/b/d;

    .line 22
    invoke-virtual {v2}, Lcom/instabug/apm/b/b/d;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/instabug/apm/i/b;->c:Lcom/instabug/apm/f/d/c;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/instabug/apm/f/d/c;->a(Ljava/util/List;I)V

    .line 26
    iget-object v0, p0, Lcom/instabug/apm/i/b;->i:Lcom/instabug/apm/h/b/a;

    iget-object v1, p0, Lcom/instabug/apm/i/b;->j:Lcom/instabug/library/networkv2/request/Request$Callbacks;

    invoke-interface {v0, p1, v1}, Lcom/instabug/apm/h/b/a;->a(Ljava/util/List;Lcom/instabug/library/networkv2/request/Request$Callbacks;)V

    goto :goto_1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/instabug/apm/c/c;->j(J)V

    :goto_1
    return-void
.end method

.method private a(IIII)Z
    .locals 4

    int-to-long v0, p1

    .line 4
    iget-object p1, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    invoke-interface {p1}, Lcom/instabug/apm/c/c;->m()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    int-to-long p1, p2

    iget-object v0, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    .line 5
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->h()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    int-to-long p1, p3

    iget-object p3, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    .line 6
    invoke-interface {p3}, Lcom/instabug/apm/c/c;->n()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    int-to-long p1, p4

    iget-object p3, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    .line 7
    invoke-interface {p3}, Lcom/instabug/apm/c/c;->i()J

    move-result-wide p3

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic b(Lcom/instabug/apm/i/b;)Lcom/instabug/apm/f/d/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/apm/i/b;->c:Lcom/instabug/apm/f/d/c;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/apm/i/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/apm/i/b;->f()V

    return-void
.end method

.method private d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->q()Lcom/instabug/apm/k/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/apm/k/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    invoke-interface {v2}, Lcom/instabug/apm/c/c;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    .line 2
    invoke-interface {v2}, Lcom/instabug/apm/c/c;->q()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-1"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, v1}, Lcom/instabug/apm/i/b;->a(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 7
    invoke-virtual {v7}, Lcom/instabug/apm/b/b/d;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v3, v1

    .line 11
    invoke-virtual {v7}, Lcom/instabug/apm/b/b/d;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v4, v1

    .line 15
    invoke-virtual {v7}, Lcom/instabug/apm/b/b/d;->h()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v5, v1

    .line 19
    invoke-virtual {v7}, Lcom/instabug/apm/b/b/d;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v6, v1

    .line 22
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/instabug/apm/i/b;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 28
    :cond_5
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v7}, Lcom/instabug/apm/b/b/d;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-nez v7, :cond_0

    .line 33
    :goto_4
    invoke-direct {p0, v0}, Lcom/instabug/apm/i/b;->a(Ljava/util/List;)V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncNextSessionsChunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APMSyncManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "session_thread_executor"

    .line 2
    invoke-static {v0}, Lcom/instabug/apm/e/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/instabug/apm/i/b$a;

    invoke-direct {v1, p0}, Lcom/instabug/apm/i/b$a;-><init>(Lcom/instabug/apm/i/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/i/b;->b:Lcom/instabug/apm/c/c;

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/apm/i/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/instabug/apm/i/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/i/b;->c:Lcom/instabug/apm/f/d/c;

    invoke-interface {v0}, Lcom/instabug/apm/f/d/c;->a()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/apm/b/b/d;

    .line 5
    invoke-direct {p0, v2}, Lcom/instabug/apm/i/b;->a(Lcom/instabug/apm/b/b/d;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/instabug/apm/i/b;->a(Ljava/util/List;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/instabug/apm/i/b;->f()V

    :goto_1
    return-void
.end method
