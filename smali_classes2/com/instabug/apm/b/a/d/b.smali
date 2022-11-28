.class public Lcom/instabug/apm/b/a/d/b;
.super Ljava/lang/Object;
.source "SessionCacheHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/b/a/d/a;


# instance fields
.field private final a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;Lcom/instabug/apm/logger/a/a;)V
    .locals 0
    .param p1    # Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/instabug/apm/logger/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/apm/b/a/d/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    .line 3
    iput-object p2, p0, Lcom/instabug/apm/b/a/d/b;->b:Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    return-void
.end method

.method static synthetic a(Lcom/instabug/apm/b/a/d/b;Lcom/instabug/apm/b/b/d;)Landroid/content/ContentValues;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/apm/b/a/d/b;->b(Lcom/instabug/apm/b/b/d;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/apm/b/a/d/b;Lcom/instabug/library/model/common/Session;)Landroid/content/ContentValues;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/apm/b/a/d/b;->b(Lcom/instabug/library/model/common/Session;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/database/Cursor;)Lcom/instabug/apm/b/b/d;
    .locals 25
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "session_id"

    .line 71
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "core_session_id"

    .line 72
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "os"

    .line 73
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "app_version"

    .line 74
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "uuid"

    .line 75
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "duration"

    .line 76
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "started_at"

    .line 77
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "termination_code"

    .line 78
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "sync_status"

    .line 79
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 80
    new-instance v24, Lcom/instabug/apm/b/b/d;

    .line 81
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 82
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 83
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 84
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 85
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 86
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 87
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 89
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 90
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const-wide/16 v20, 0x0

    move-object/from16 v10, v24

    invoke-direct/range {v10 .. v23}, Lcom/instabug/apm/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJII)V

    return-object v24
.end method

.method static synthetic a(Lcom/instabug/apm/b/a/d/b;Landroid/database/Cursor;)Lcom/instabug/apm/b/b/d;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/apm/b/a/d/b;->a(Landroid/database/Cursor;)Lcom/instabug/apm/b/b/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/apm/b/a/d/b;)Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/apm/b/a/d/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    return-object p0
.end method

.method private b(Lcom/instabug/apm/b/b/d;)Landroid/content/ContentValues;
    .locals 3
    .param p1    # Lcom/instabug/apm/b/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "core_session_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->getOs()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->getStartTimestampMicros()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "started_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "termination_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private b(Lcom/instabug/library/model/common/Session;)Landroid/content/ContentValues;
    .locals 3

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-interface {p1}, Lcom/instabug/library/model/common/Session;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "core_session_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lcom/instabug/library/model/common/Session;->getOs()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lcom/instabug/library/model/common/Session;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p1}, Lcom/instabug/library/model/common/Session;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lcom/instabug/library/model/common/Session;->getStartTimestampMicros()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "started_at"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/instabug/apm/b/b/d;)I
    .locals 2
    .param p1    # Lcom/instabug/apm/b/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/b;->b:Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    new-instance v1, Lcom/instabug/apm/b/a/d/b$b;

    invoke-direct {v1, p0, p1}, Lcom/instabug/apm/b/a/d/b$b;-><init>(Lcom/instabug/apm/b/a/d/b;Lcom/instabug/apm/b/b/d;)V

    const/4 p1, 0x0

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->executeAndGet(Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public a(Lcom/instabug/library/model/common/Session;)Lcom/instabug/apm/b/b/d;
    .locals 2
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/b;->b:Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    new-instance v1, Lcom/instabug/apm/b/a/d/b$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/apm/b/a/d/b$a;-><init>(Lcom/instabug/apm/b/a/d/b;Lcom/instabug/library/model/common/Session;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->executeAndGet(Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/apm/b/b/d;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;
    .locals 10

    .line 38
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const/4 v1, 0x1

    .line 42
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const-string v2, "apm_session_table"

    const-string v4, "session_id > ? and session_id not in (select MAX(session_id) from apm_session_table)"

    const-string v8, "session_id ASC"

    const-string v9, "1"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    .line 44
    invoke-virtual/range {v1 .. v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 48
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/instabug/apm/b/a/d/b;->a(Landroid/database/Cursor;)Lcom/instabug/apm/b/b/d;

    move-result-object v1

    .line 51
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v1
.end method

.method public a()Ljava/util/List;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/d;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/instabug/apm/b/a/d/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1

    const/4 v2, 0x1

    .line 24
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const-string v3, "apm_session_table"

    const-string v5, "sync_status = ?"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    .line 25
    invoke-virtual/range {v2 .. v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 29
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    :cond_0
    invoke-direct {p0, v2}, Lcom/instabug/apm/b/a/d/b;->a(Landroid/database/Cursor;)Lcom/instabug/apm/b/b/d;

    move-result-object v3

    .line 32
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const/4 v1, 0x1

    .line 64
    new-array v1, v1, [Ljava/lang/String;

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "apm_session_table"

    const-string v2, "sync_status = ?"

    .line 67
    invoke-virtual {v0, p1, v2, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "sync_status"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v2, 0x1

    .line 58
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "apm_session_table"

    const-string v3, "session_id in (?)"

    invoke-virtual {v0, p2, v1, v3, v2}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/d/b;->b:Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;

    new-instance v1, Lcom/instabug/apm/b/a/d/b$c;

    invoke-direct {v1, p0, p1}, Lcom/instabug/apm/b/a/d/b$c;-><init>(Lcom/instabug/apm/b/a/d/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/utils/stability/handler/exception/ExceptionHandler;->executeAndGet(Lcom/instabug/library/internal/utils/stability/execution/ReturnableExecutable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/apm/b/b/d;

    return-object p1
.end method
