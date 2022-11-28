.class public Lcom/instabug/apm/f/b/b;
.super Ljava/lang/Object;
.source "ExecutionTracesHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/f/b/a;
.implements Lcom/instabug/apm/f/d/a;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field private a:Lcom/instabug/apm/b/a/b/c;

.field private b:Lcom/instabug/apm/b/a/b/a;

.field private c:Lcom/instabug/apm/logger/a/a;

.field private d:Lcom/instabug/apm/f/d/c;

.field private e:Lcom/instabug/apm/b/a/d/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/instabug/apm/c/c;

.field private g:Lcom/instabug/apm/b/a/b/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->t()Lcom/instabug/apm/b/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->n()Lcom/instabug/apm/b/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/b/b;->b:Lcom/instabug/apm/b/a/b/a;

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/b/b;->c:Lcom/instabug/apm/logger/a/a;

    .line 5
    invoke-static {}, Lcom/instabug/apm/e/a;->C()Lcom/instabug/apm/f/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/b/b;->d:Lcom/instabug/apm/f/d/c;

    .line 7
    invoke-static {}, Lcom/instabug/apm/e/a;->E()Lcom/instabug/apm/b/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/b/b;->e:Lcom/instabug/apm/b/a/d/c;

    .line 8
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/b/b;->f:Lcom/instabug/apm/c/c;

    .line 9
    invoke-static {}, Lcom/instabug/apm/e/a;->w()Lcom/instabug/apm/b/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/b/b;->g:Lcom/instabug/apm/b/a/b/e;

    .line 12
    invoke-static {p0}, Lcom/instabug/apm/f/d/e;->a(Lcom/instabug/apm/f/d/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/instabug/apm/b/a/b/c;->a(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method


# virtual methods
.method public declared-synchronized a(JJ)I
    .locals 9

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/b/c;->a(J)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->d:Lcom/instabug/apm/f/d/c;

    .line 24
    invoke-interface {v0}, Lcom/instabug/apm/f/d/c;->c()Lcom/instabug/library/model/common/Session;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v3 .. v8}, Lcom/instabug/apm/b/a/b/c;->a(JJZ)I

    move-result p1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->b:Lcom/instabug/apm/b/a/b/a;

    iget-object v3, p0, Lcom/instabug/apm/f/b/b;->d:Lcom/instabug/apm/f/d/c;

    .line 25
    invoke-interface {v3}, Lcom/instabug/apm/f/d/c;->c()Lcom/instabug/library/model/common/Session;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/instabug/apm/b/a/b/a;->a(JJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(JLjava/lang/String;J)J
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->d:Lcom/instabug/apm/f/d/c;

    invoke-interface {v0}, Lcom/instabug/apm/f/d/c;->c()Lcom/instabug/library/model/common/Session;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    invoke-interface {v0}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-wide v2, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v8}, Lcom/instabug/apm/b/a/b/c;->a(JLjava/lang/String;Ljava/lang/String;JZ)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 5
    iget-object p3, p0, Lcom/instabug/apm/f/b/b;->e:Lcom/instabug/apm/b/a/d/c;

    if-eqz p3, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    invoke-interface {p3, p4, p5}, Lcom/instabug/apm/b/a/d/c;->e(Ljava/lang/String;I)V

    .line 7
    invoke-interface {v0}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/instabug/apm/f/b/b;->f:Lcom/instabug/apm/c/c;

    .line 8
    invoke-interface {p4}, Lcom/instabug/apm/c/c;->i()J

    move-result-wide p4

    .line 9
    invoke-direct {p0, p3, p4, p5}, Lcom/instabug/apm/f/b/b;->a(Ljava/lang/String;J)I

    move-result p3

    if-lez p3, :cond_0

    .line 12
    iget-object p4, p0, Lcom/instabug/apm/f/b/b;->e:Lcom/instabug/apm/b/a/d/c;

    invoke-interface {v0}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5, p3}, Lcom/instabug/apm/b/a/d/c;->h(Ljava/lang/String;I)V

    .line 15
    :cond_0
    iget-object p3, p0, Lcom/instabug/apm/f/b/b;->f:Lcom/instabug/apm/c/c;

    invoke-interface {p3}, Lcom/instabug/apm/c/c;->v()J

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Lcom/instabug/apm/f/b/b;->a(J)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p4, p0, Lcom/instabug/apm/f/b/b;->c:Lcom/instabug/apm/logger/a/a;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session meta data was not updated. Failed to insert custom trace "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide p1

    .line 21
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->b:Lcom/instabug/apm/b/a/b/a;

    const/4 v6, 0x1

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/instabug/apm/b/a/b/a;->a(JLjava/lang/String;JZ)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 p1, -0x1

    :goto_1
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/c;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    invoke-interface {v0, p1}, Lcom/instabug/apm/b/a/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/b/c;->a()V

    .line 32
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->b:Lcom/instabug/apm/b/a/b/a;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/b/a;->a()V

    .line 33
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->e:Lcom/instabug/apm/b/a/d/c;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/instabug/apm/b/a/d/c;->c()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/b/c;->b(J)V

    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/b/c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/instabug/apm/b/a/b/c;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->b:Lcom/instabug/apm/b/a/b/a;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/b/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v1, p0, Lcom/instabug/apm/f/b/b;->b:Lcom/instabug/apm/b/a/b/a;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/instabug/apm/b/a/b/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

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

    if-eqz p2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->g:Lcom/instabug/apm/b/a/b/e;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/b/e;->a(Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->a:Lcom/instabug/apm/b/a/b/c;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/b/c;->b()V

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/b/b;->b:Lcom/instabug/apm/b/a/b/a;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/b/a;->b()V

    return-void
.end method
