.class public Lcom/instabug/apm/b/a/a/b;
.super Ljava/lang/Object;
.source "AppLaunchCacheHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/b/a/a/a;


# instance fields
.field private a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/apm/logger/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->p()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    .line 5
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/b/a/a/b;->b:Lcom/instabug/apm/logger/a/a;

    return-void
.end method

.method private a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 4
    .param p2    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/apm/b/b/b;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 30
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v1, Lcom/instabug/apm/b/b/b;

    invoke-direct {v1}, Lcom/instabug/apm/b/b/b;-><init>()V

    const-string v2, "app_launch_id"

    .line 32
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instabug/apm/b/b/b;->b(J)V

    const-string v2, "name"

    .line 33
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/b;->b(Ljava/lang/String;)V

    const-string v2, "screen_name"

    .line 34
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/b;->a(Ljava/lang/String;)V

    const-string v2, "start_time"

    .line 35
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instabug/apm/b/b/b;->c(J)V

    const-string v2, "duration"

    .line 36
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instabug/apm/b/b/b;->a(J)V

    .line 37
    invoke-virtual {v1}, Lcom/instabug/apm/b/b/b;->b()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p1}, Lcom/instabug/apm/b/a/a/b;->a(JLcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/apm/b/b/b;->a(Ljava/util/Map;)V

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)I
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session_id = ? AND app_launch_id NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SELECT app_launch_id FROM app_launch where session_id = ? ORDER BY app_launch_id DESC LIMIT ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 114
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 115
    iget-object p1, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object p1

    const-string p2, "app_launch"

    .line 116
    invoke-virtual {p1, p2, v0, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 117
    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return p2

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/instabug/apm/b/b/b;)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/b/a/a/b;->b:Lcom/instabug/apm/logger/a/a;

    const-string v1, "inserting app launch"

    invoke-virtual {v0, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "session_id"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/instabug/apm/b/b/b;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/instabug/apm/b/b/b;->f()Ljava/lang/String;

    move-result-object p1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/instabug/apm/b/b/b;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p2}, Lcom/instabug/apm/b/b/b;->c()Ljava/lang/String;

    move-result-object p1

    const-string v2, "screen_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/instabug/apm/b/b/b;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "start_time"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    invoke-virtual {p2}, Lcom/instabug/apm/b/b/b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "duration"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "app_launch"

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, p1, v2, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 15
    invoke-virtual {p2}, Lcom/instabug/apm/b/b/b;->d()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p2}, Lcom/instabug/apm/b/b/b;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 17
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "app_launch_id"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "attribute_key"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v5, "attribute_value"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "app_launch_attributes"

    .line 21
    invoke-virtual {v0, p2, v2, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 27
    iget-object p1, p0, Lcom/instabug/apm/b/a/a/b;->b:Lcom/instabug/apm/logger/a/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inserting app launch done with id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    return-wide v3

    :cond_3
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/b;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const/4 v1, 0x1

    .line 76
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const-string v2, "app_launch"

    const/4 v3, 0x0

    const-string v4, "session_id = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 77
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 80
    invoke-direct {p0, v0, p1}, Lcom/instabug/apm/b/a/a/b;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    .line 81
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JLcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;)Ljava/util/Map;
    .locals 5
    .param p3    # Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 46
    iget-object p3, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-virtual {p3}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object p3

    .line 48
    :cond_1
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from app_launch_attributes where app_launch_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 52
    invoke-virtual {p3, p1, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 54
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "attribute_key"

    .line 55
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "attribute_value"

    .line 56
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    .line 65
    invoke-virtual {p3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_4
    return-object v2

    :cond_5
    return-object v1
.end method

.method public a()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const-string v1, "delete from app_launch_attributes"

    .line 70
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from app_launch"

    .line 71
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_launch_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SELECT app_launch_id FROM app_launch ORDER BY app_launch_id DESC LIMIT ? OFFSET ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 89
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-1"

    aput-object v3, v1, v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 91
    iget-object p1, p0, Lcom/instabug/apm/b/a/a/b;->a:Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object p1

    :try_start_0
    const-string p2, "app_launch"

    .line 93
    invoke-virtual {p1, p2, v0, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/instabug/apm/b/a/a/b;->b:Lcom/instabug/apm/logger/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB execution a sql failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/instabug/apm/logger/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 98
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    goto :goto_2

    :goto_1
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 104
    :cond_0
    throw p2

    :cond_1
    :goto_2
    return-void
.end method
