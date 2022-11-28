.class public Lcom/instabug/library/l/b/b;
.super Ljava/lang/Object;
.source "DisposableData.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/l/b/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/l/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/l/b/c;

    .line 2
    invoke-virtual {p0, v1}, Lcom/instabug/library/l/b/b;->a(Lcom/instabug/library/l/b/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/instabug/library/l/b/c;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/l/b/c;->c()Lcom/instabug/library/l/b/h;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/instabug/library/l/b/c;->b()Lcom/instabug/library/l/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/l/b/f;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/instabug/library/l/b/c;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/instabug/library/l/b/b;->a(Lcom/instabug/library/l/b/h;JLjava/util/List;)V

    return-void
.end method

.method a(Lcom/instabug/library/l/b/h;JLjava/util/List;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/l/b/h;",
            "J",
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/g;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/instabug/library/l/b/h;->b()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/instabug/library/l/b/h;->a()Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move-wide v3, p2

    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/instabug/library/l/b/b;->a(Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/instabug/library/l/b/e;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 11
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/instabug/library/l/b/e;->a()Lcom/instabug/library/l/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/l/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p2}, Lcom/instabug/library/l/b/e;->b()Lcom/instabug/library/l/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/l/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/instabug/library/l/b/e;->a()Lcom/instabug/library/l/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instabug/library/l/b/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/instabug/library/l/b/e;->b()Lcom/instabug/library/l/b/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/l/b/d;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 16
    :try_start_0
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 21
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 23
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 24
    throw p1
.end method

.method a(Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/e;",
            ">;J",
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/g;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/l/b/e;

    .line 9
    invoke-virtual {p0, v0, p3, p4}, Lcom/instabug/library/l/b/b;->a(Lcom/instabug/library/l/b/e;J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p5}, Lcom/instabug/library/l/b/b;->a(Lcom/instabug/library/l/b/e;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/instabug/library/l/b/b;->a(Ljava/lang/String;Lcom/instabug/library/l/b/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Lcom/instabug/library/l/b/e;J)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/instabug/library/l/b/e;->b()Lcom/instabug/library/l/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/l/b/d;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long p1, v0, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method a(Lcom/instabug/library/l/b/e;Ljava/util/List;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/l/b/e;",
            "Ljava/util/List<",
            "Lcom/instabug/library/l/b/g;",
            ">;)Z"
        }
    .end annotation

    .line 26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/l/b/g;

    .line 27
    invoke-interface {v0, p1}, Lcom/instabug/library/l/b/g;->a(Lcom/instabug/library/l/b/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/b$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/l/b/b$a;-><init>(Lcom/instabug/library/l/b/b;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method
