.class Lcom/instabug/apm/b/a/b/d$a;
.super Ljava/lang/Object;
.source "ExecutionTracesCacheHandlerImpl.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/b/a/b/d;->a(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/instabug/apm/b/a/b/d;


# direct methods
.method constructor <init>(Lcom/instabug/apm/b/a/b/d;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/b/a/b/d$a;->b:Lcom/instabug/apm/b/a/b/d;

    iput-wide p2, p0, Lcom/instabug/apm/b/a/b/d$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Boolean;
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/b/a/b/d$a;->b:Lcom/instabug/apm/b/a/b/d;

    invoke-static {v0}, Lcom/instabug/apm/b/a/b/d;->a(Lcom/instabug/apm/b/a/b/d;)Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v5, "trace_id = ? "

    const/4 v0, 0x1

    .line 4
    new-array v6, v0, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/instabug/apm/b/a/b/d$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 5
    iget-object v2, p0, Lcom/instabug/apm/b/a/b/d$a;->b:Lcom/instabug/apm/b/a/b/d;

    invoke-static {v2}, Lcom/instabug/apm/b/a/b/d;->a(Lcom/instabug/apm/b/a/b/d;)Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v10

    const/4 v11, 0x0

    :try_start_0
    const-string v3, "execution_traces"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    .line 8
    invoke-virtual/range {v2 .. v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 9
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_0

    .line 14
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 16
    :cond_0
    invoke-virtual {v10}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_1
    if-eqz v11, :cond_2

    .line 17
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_2
    invoke-virtual {v10}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 22
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_3
    invoke-virtual {v10}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 25
    throw v0

    .line 28
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/b/a/b/d$a;->execute()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
