.class public Lcom/instabug/apm/f/c/b;
.super Ljava/lang/Object;
.source "NetworkLogHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/f/c/a;
.implements Lcom/instabug/apm/f/d/a;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field private a:Lcom/instabug/apm/b/a/c/c;

.field private b:Lcom/instabug/apm/b/a/c/a;

.field private c:Lcom/instabug/apm/logger/a/a;

.field private d:Lcom/instabug/apm/f/d/c;

.field private e:Lcom/instabug/apm/b/a/d/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/instabug/apm/b/a/c/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->x()Lcom/instabug/apm/b/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/c/b;->a:Lcom/instabug/apm/b/a/c/c;

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->o()Lcom/instabug/apm/b/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/c/b;->b:Lcom/instabug/apm/b/a/c/a;

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/c/b;->c:Lcom/instabug/apm/logger/a/a;

    .line 5
    invoke-static {}, Lcom/instabug/apm/e/a;->C()Lcom/instabug/apm/f/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/c/b;->d:Lcom/instabug/apm/f/d/c;

    .line 7
    invoke-static {}, Lcom/instabug/apm/e/a;->E()Lcom/instabug/apm/b/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/c/b;->e:Lcom/instabug/apm/b/a/d/c;

    .line 8
    invoke-static {}, Lcom/instabug/apm/e/a;->A()Lcom/instabug/apm/b/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/c/b;->f:Lcom/instabug/apm/b/a/c/e;

    .line 11
    invoke-static {p0}, Lcom/instabug/apm/f/d/e;->a(Lcom/instabug/apm/f/d/a;)V

    return-void
.end method


# virtual methods
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
            "Lcom/instabug/apm/b/b/a;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->a:Lcom/instabug/apm/b/a/c/c;

    invoke-interface {v0, p1}, Lcom/instabug/apm/b/a/c/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->c:Lcom/instabug/apm/logger/a/a;

    const-string v1, "Clearing cached APM network logs"

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->d(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->a:Lcom/instabug/apm/b/a/c/c;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/c/c;->a()V

    .line 10
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->b:Lcom/instabug/apm/b/a/c/a;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/c/a;->a()V

    .line 11
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->e:Lcom/instabug/apm/b/a/d/c;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/instabug/apm/b/a/d/c;->d()V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/apm/model/APMNetworkLog;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/instabug/apm/model/APMNetworkLog;->executedInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->b:Lcom/instabug/apm/b/a/c/a;

    invoke-interface {v0, p1}, Lcom/instabug/apm/b/a/c/a;->a(Lcom/instabug/apm/model/APMNetworkLog;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->a:Lcom/instabug/apm/b/a/c/c;

    invoke-interface {v0, p1}, Lcom/instabug/apm/b/a/c/c;->a(Lcom/instabug/apm/model/APMNetworkLog;)V

    :cond_1
    :goto_0
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

    .line 13
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->f:Lcom/instabug/apm/b/a/c/e;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/c/e;->a(Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/instabug/apm/model/APMNetworkLog;)J
    .locals 9

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lcom/instabug/apm/f/c/b;->d:Lcom/instabug/apm/f/d/c;

    invoke-interface {v3}, Lcom/instabug/apm/f/d/c;->c()Lcom/instabug/library/model/common/Session;

    move-result-object v3

    .line 4
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->p()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5
    invoke-static {}, Lcom/instabug/apm/k/b/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/instabug/apm/model/APMNetworkLog;->setRadio(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/instabug/apm/k/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/instabug/apm/model/APMNetworkLog;->setCarrier(Ljava/lang/String;)V

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 8
    invoke-virtual {p1, v4}, Lcom/instabug/apm/model/APMNetworkLog;->setExecutedInBackground(Z)V

    .line 9
    iget-object v3, p0, Lcom/instabug/apm/f/c/b;->b:Lcom/instabug/apm/b/a/c/a;

    invoke-interface {v3, p1}, Lcom/instabug/apm/b/a/c/a;->b(Lcom/instabug/apm/model/APMNetworkLog;)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/instabug/apm/f/c/b;->b:Lcom/instabug/apm/b/a/c/a;

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->r()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/instabug/apm/b/a/c/a;->a(J)V

    :cond_0
    move-wide v1, v3

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 14
    invoke-virtual {p1, v5}, Lcom/instabug/apm/model/APMNetworkLog;->setExecutedInBackground(Z)V

    .line 15
    iget-object v5, p0, Lcom/instabug/apm/f/c/b;->a:Lcom/instabug/apm/b/a/c/c;

    invoke-interface {v3}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Lcom/instabug/apm/b/a/c/c;->a(Ljava/lang/String;Lcom/instabug/apm/model/APMNetworkLog;)J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/instabug/apm/f/c/b;->e:Lcom/instabug/apm/b/a/d/c;

    if-eqz p1, :cond_2

    .line 18
    invoke-interface {v3}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v4}, Lcom/instabug/apm/b/a/d/c;->b(Ljava/lang/String;I)V

    .line 19
    iget-object p1, p0, Lcom/instabug/apm/f/c/b;->a:Lcom/instabug/apm/b/a/c/c;

    .line 20
    invoke-interface {v3}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {v0}, Lcom/instabug/apm/c/c;->h()J

    move-result-wide v7

    .line 22
    invoke-interface {p1, v1, v7, v8}, Lcom/instabug/apm/b/a/c/c;->a(Ljava/lang/String;J)I

    move-result p1

    if-lez p1, :cond_2

    .line 25
    iget-object v1, p0, Lcom/instabug/apm/f/c/b;->e:Lcom/instabug/apm/b/a/d/c;

    invoke-interface {v3}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/instabug/apm/b/a/d/c;->g(Ljava/lang/String;I)V

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/instabug/apm/f/c/b;->a:Lcom/instabug/apm/b/a/c/c;

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->r()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/instabug/apm/b/a/c/c;->a(J)V

    :cond_3
    move-wide v1, v5

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public b()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->a:Lcom/instabug/apm/b/a/c/c;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/c/c;->b()V

    .line 31
    iget-object v0, p0, Lcom/instabug/apm/f/c/b;->b:Lcom/instabug/apm/b/a/c/a;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/c/a;->b()V

    return-void
.end method
