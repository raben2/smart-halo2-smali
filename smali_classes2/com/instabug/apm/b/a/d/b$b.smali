.class Lcom/instabug/apm/b/a/d/b$b;
.super Ljava/lang/Object;
.source "SessionCacheHandlerImpl.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/b/a/d/b;->a(Lcom/instabug/apm/b/b/d;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/b/b/d;

.field final synthetic b:Lcom/instabug/apm/b/a/d/b;


# direct methods
.method constructor <init>(Lcom/instabug/apm/b/a/d/b;Lcom/instabug/apm/b/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/b/a/d/b$b;->b:Lcom/instabug/apm/b/a/d/b;

    iput-object p2, p0, Lcom/instabug/apm/b/a/d/b$b;->a:Lcom/instabug/apm/b/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Integer;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/b$b;->b:Lcom/instabug/apm/b/a/d/b;

    iget-object v1, p0, Lcom/instabug/apm/b/a/d/b$b;->a:Lcom/instabug/apm/b/b/d;

    invoke-static {v0, v1}, Lcom/instabug/apm/b/a/d/b;->a(Lcom/instabug/apm/b/a/d/b;Lcom/instabug/apm/b/b/d;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/b/a/d/b$b;->b:Lcom/instabug/apm/b/a/d/b;

    invoke-static {v1}, Lcom/instabug/apm/b/a/d/b;->a(Lcom/instabug/apm/b/a/d/b;)Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1

    const-string v2, "session_id = ?"

    const/4 v3, 0x1

    .line 6
    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instabug/apm/b/a/d/b$b;->a:Lcom/instabug/apm/b/b/d;

    invoke-virtual {v5}, Lcom/instabug/apm/b/b/d;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "apm_session_table"

    .line 7
    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 10
    throw v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/b/a/d/b$b;->execute()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
