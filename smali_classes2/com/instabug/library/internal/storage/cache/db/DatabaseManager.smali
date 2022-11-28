.class public Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static databaseWrapper:Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

.field private static instance:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    .locals 4

    const-class v0, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->instance:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/library/internal/storage/cache/db/a;

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instabug/library/internal/storage/cache/db/a;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->init(Landroid/database/sqlite/SQLiteOpenHelper;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not initialized, call init(..) method first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v1, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->instance:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2

    const-class v0, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->instance:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-direct {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;-><init>()V

    sput-object v1, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->instance:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    .line 3
    new-instance v1, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    sput-object v1, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->databaseWrapper:Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized tearDown()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    const-class v0, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->databaseWrapper:Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 3
    sput-object v2, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->databaseWrapper:Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    .line 5
    :cond_0
    sput-object v2, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->instance:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->databaseWrapper:Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->open()V

    .line 2
    sget-object v0, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->databaseWrapper:Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
