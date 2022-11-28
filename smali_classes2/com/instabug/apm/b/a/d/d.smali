.class public Lcom/instabug/apm/b/a/d/d;
.super Ljava/lang/Object;
.source "SessionMetaDataCacheHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/b/a/d/c;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field private a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->p()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    return-void
.end method

.method private a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;)V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "session_id"

    .line 40
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "apm_session_meta_data"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, p2, v1, v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const-string v8, "session_id = ?"

    const/4 v0, 0x1

    .line 42
    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v9, v0

    const-string v1, "apm_session_meta_data"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, v8

    move-object v4, v9

    .line 43
    invoke-virtual/range {v0 .. v7}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    add-int/2addr v1, p4

    .line 53
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "session_id"

    .line 54
    invoke-virtual {p4, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "apm_session_meta_data"

    .line 56
    invoke-virtual {p1, p2, p4, v8, v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/instabug/apm/b/b/e;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const/4 v2, 0x1

    .line 20
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const-string v3, "apm_session_meta_data"

    const/4 v4, 0x0

    const-string v5, "session_id = ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    .line 21
    invoke-virtual/range {v2 .. v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    new-instance v1, Lcom/instabug/apm/b/b/e;

    invoke-direct {v1}, Lcom/instabug/apm/b/b/e;-><init>()V

    const-string v2, "app_launch_total_count"

    .line 27
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/e;->b(I)V

    const-string v2, "traces_total_count"

    .line 28
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/e;->d(I)V

    const-string v2, "network_logs_total_count"

    .line 29
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/e;->f(I)V

    const-string v2, "ui_traces_total_count"

    .line 30
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/e;->h(I)V

    const-string v2, "app_launch_dropped_count"

    .line 31
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/e;->a(I)V

    const-string v2, "traces_dropped_count"

    .line 32
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/e;->c(I)V

    const-string v2, "network_logs_dropped_count"

    .line 33
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/e;->e(I)V

    const-string v2, "ui_traces_dropped_count"

    .line 34
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/e;->g(I)V

    .line 36
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_2
    return-object v1
.end method

.method public a()V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 11
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ui_traces_total_count"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ui_traces_dropped_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "apm_session_meta_data"

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 15
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;)V

    const-string v1, "app_launch_total_count"

    .line 4
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 11
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "app_launch_total_count"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "app_launch_dropped_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "apm_session_meta_data"

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 15
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;)V

    const-string v1, "network_logs_total_count"

    .line 4
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "traces_total_count"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "traces_dropped_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "apm_session_meta_data"

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const-string v1, "ui_traces_dropped_count"

    .line 3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 11
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "network_logs_total_count"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "network_logs_dropped_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "apm_session_meta_data"

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 15
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;)V

    const-string v1, "ui_traces_total_count"

    .line 4
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;)V

    const-string v1, "traces_total_count"

    .line 4
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const-string v1, "app_launch_dropped_count"

    .line 3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const-string v1, "network_logs_dropped_count"

    .line 3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/d;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const-string v1, "traces_dropped_count"

    .line 3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/instabug/apm/b/a/d/d;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method
