.class Lcom/instabug/apm/b/a/d/b$c;
.super Ljava/lang/Object;
.source "SessionCacheHandlerImpl.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/b/a/d/b;->b(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable<",
        "Lcom/instabug/apm/b/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instabug/apm/b/a/d/b;


# direct methods
.method constructor <init>(Lcom/instabug/apm/b/a/d/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/b/a/d/b$c;->b:Lcom/instabug/apm/b/a/d/b;

    iput-object p2, p0, Lcom/instabug/apm/b/a/d/b$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/instabug/apm/b/b/d;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/b$c;->b:Lcom/instabug/apm/b/a/d/b;

    invoke-static {v0}, Lcom/instabug/apm/b/a/d/b;->a(Lcom/instabug/apm/b/a/d/b;)Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM apm_session_table where session_id < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/instabug/apm/b/a/d/b$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ORDER BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "started_at"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " DESC LIMIT 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 10
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget-object v1, p0, Lcom/instabug/apm/b/a/d/b$c;->b:Lcom/instabug/apm/b/a/d/b;

    invoke-static {v1, v2}, Lcom/instabug/apm/b/a/d/b;->a(Lcom/instabug/apm/b/a/d/b;Landroid/database/Cursor;)Lcom/instabug/apm/b/b/d;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 20
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_1
    move-exception v2

    :goto_0
    if-eqz v1, :cond_3

    .line 23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 25
    :cond_3
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 26
    throw v2
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/b/a/d/b$c;->execute()Lcom/instabug/apm/b/b/d;

    move-result-object v0

    return-object v0
.end method
