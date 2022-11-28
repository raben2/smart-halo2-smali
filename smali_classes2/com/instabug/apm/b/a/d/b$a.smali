.class Lcom/instabug/apm/b/a/d/b$a;
.super Ljava/lang/Object;
.source "SessionCacheHandlerImpl.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/b/a/d/b;->a(Lcom/instabug/library/model/common/Session;)Lcom/instabug/apm/b/b/d;
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
.field final synthetic a:Lcom/instabug/library/model/common/Session;

.field final synthetic b:Lcom/instabug/apm/b/a/d/b;


# direct methods
.method constructor <init>(Lcom/instabug/apm/b/a/d/b;Lcom/instabug/library/model/common/Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/b/a/d/b$a;->b:Lcom/instabug/apm/b/a/d/b;

    iput-object p2, p0, Lcom/instabug/apm/b/a/d/b$a;->a:Lcom/instabug/library/model/common/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Lcom/instabug/apm/b/b/d;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/b$a;->b:Lcom/instabug/apm/b/a/d/b;

    iget-object v1, p0, Lcom/instabug/apm/b/a/d/b$a;->a:Lcom/instabug/library/model/common/Session;

    invoke-static {v0, v1}, Lcom/instabug/apm/b/a/d/b;->a(Lcom/instabug/apm/b/a/d/b;Lcom/instabug/library/model/common/Session;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/instabug/apm/b/a/d/b$a;->b:Lcom/instabug/apm/b/a/d/b;

    invoke-static {v1}, Lcom/instabug/apm/b/a/d/b;->a(Lcom/instabug/apm/b/a/d/b;)Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1

    :try_start_0
    const-string v2, "apm_session_table"

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3, v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 6
    new-instance v0, Lcom/instabug/apm/b/b/d;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/apm/b/a/d/b$a;->a:Lcom/instabug/library/model/common/Session;

    invoke-direct {v0, v2, v3}, Lcom/instabug/apm/b/b/d;-><init>(Ljava/lang/String;Lcom/instabug/library/model/common/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 9
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
    invoke-virtual {p0}, Lcom/instabug/apm/b/a/d/b$a;->execute()Lcom/instabug/apm/b/b/d;

    move-result-object v0

    return-object v0
.end method
