.class public Lcom/instabug/survey/announcements/cache/b;
.super Ljava/lang/Object;
.source "AnnouncementsDBHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;JLandroid/content/ContentValues;)J
    .locals 4
    .param p0    # Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    monitor-enter v0

    const/4 v1, 0x1

    .line 350
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "announcement_table"

    const-string v3, "announcement_id=? "

    .line 354
    invoke-virtual {p0, v2, p3, v3, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "announcement id: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " paused state has been updated in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "announcement_table"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/instabug/survey/announcements/cache/b;

    invoke-static {p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/instabug/survey/d/c/a;ZZ)J
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    monitor-enter v0

    .line 306
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    .line 308
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 311
    invoke-static {p0}, Lcom/instabug/survey/announcements/cache/b;->a(Lcom/instabug/survey/d/c/a;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "announcement_table"

    const/4 v6, 0x0

    .line 314
    invoke-virtual {v1, v5, v6, v4}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    if-eqz p1, :cond_0

    .line 317
    invoke-static {v1, p0}, Lcom/instabug/survey/announcements/cache/b;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/d/c/a;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 320
    invoke-static {v1, p0}, Lcom/instabug/survey/announcements/cache/b;->b(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/d/c/a;)V

    .line 323
    :cond_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V

    .line 324
    const-class p1, Lcom/instabug/survey/announcements/cache/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "announcement id: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " has been added to "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "announcement_table"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 326
    invoke-static {p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 335
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 336
    :try_start_3
    const-class p1, Lcom/instabug/survey/announcements/cache/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "announcement insertion failed due to "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-static {p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    :try_start_4
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 343
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-wide v2

    .line 344
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 345
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 346
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/instabug/survey/d/c/a;)Landroid/content/ContentValues;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "announcement_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "announcement_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "announcement_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "conditions_operator"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "answered"

    .line 6
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->r()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dismissed_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "shown_at"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "isCancelled"

    .line 9
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->s()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eventIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "shouldShowAgain"

    .line 11
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->x()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "paused"

    .line 12
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->t()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sessionCounter"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/d/c/c;->c(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "announcement"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/e/c/g;->a(Lcom/instabug/survey/e/c/g;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "targetAudiences"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/e/c/a;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "surveyEvents"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->d()Lcom/instabug/survey/e/c/f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "surveyState"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "announceAssetsStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "isAlreadyShown"

    .line 19
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->q()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/b;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isLocalized"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/survey/e/c/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "supportedLocales"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "currentLocale"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static a(I)Ljava/util/List;
    .locals 40
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const/4 v0, 0x1

    .line 62
    new-array v5, v0, [Ljava/lang/String;

    .line 73
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v5, v10

    const-string v2, "announcement_table"

    const-string v4, "announcement_type=? "

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    .line 74
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v2, "announcement_id"

    .line 101
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "announcement_type"

    .line 102
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "announcement_title"

    .line 103
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "conditions_operator"

    .line 104
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "answered"

    .line 105
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "dismissed_at"

    .line 106
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "shown_at"

    .line 107
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v11, "isCancelled"

    .line 108
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "eventIndex"

    .line 109
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "isAlreadyShown"

    .line 110
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "paused"

    .line 111
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "targetAudiences"

    .line 112
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v10, "announcement"

    .line 113
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "announceAssetsStatus"

    .line 114
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "supportedLocales"

    .line 115
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "isLocalized"

    .line 116
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "currentLocale"

    .line 117
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 121
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-nez v19, :cond_1

    .line 122
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 183
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_1
    move-object/from16 v19, v9

    .line 186
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 189
    :goto_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v21, v2

    .line 190
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v22, v3

    .line 191
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v23, v4

    .line 192
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v24, v5

    .line 193
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v25, v6

    .line 194
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v26, v7

    .line 195
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v27, v8

    .line 196
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v28, v11

    .line 197
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v29, v12

    .line 198
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v30, v13

    .line 199
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v31, v14

    .line 200
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v32, v15

    .line 201
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v33, v10

    move/from16 v10, v16

    move-object/from16 v16, v9

    .line 202
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v34, v10

    move/from16 v10, v17

    move-object/from16 v17, v14

    .line 203
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v35, v10

    move/from16 v10, v18

    move-object/from16 v18, v14

    .line 204
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v36, v10

    .line 205
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v37, v0

    .line 207
    new-instance v0, Lcom/instabug/survey/d/c/a;

    invoke-direct {v0}, Lcom/instabug/survey/d/c/a;-><init>()V

    move/from16 v38, v9

    move-object/from16 v39, v10

    .line 208
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/instabug/survey/d/c/a;->b(J)Lcom/instabug/survey/d/c/a;

    .line 209
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->c(I)V

    .line 210
    invoke-virtual {v0, v3}, Lcom/instabug/survey/d/c/a;->b(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v4}, Lcom/instabug/survey/d/c/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v5, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 212
    :goto_1
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->b(Z)V

    int-to-long v2, v6

    .line 213
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/d/c/a;->a(J)V

    int-to-long v2, v7

    .line 214
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/d/c/a;->c(J)V

    const/4 v2, 0x1

    if-ne v8, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 215
    :goto_2
    invoke-virtual {v0, v3}, Lcom/instabug/survey/d/c/a;->c(Z)V

    .line 216
    invoke-virtual {v0, v11}, Lcom/instabug/survey/d/c/a;->b(I)V

    if-ne v12, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 217
    :goto_3
    invoke-virtual {v0, v3}, Lcom/instabug/survey/d/c/a;->a(Z)V

    if-ne v13, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 218
    :goto_4
    invoke-virtual {v0, v3}, Lcom/instabug/survey/d/c/a;->d(Z)V

    if-ne v13, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 219
    :goto_5
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->d(Z)V

    .line 220
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v15}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/d/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->a(Ljava/util/ArrayList;)V

    move/from16 v2, v38

    .line 221
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->a(I)V

    .line 222
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 223
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    move-object/from16 v3, v39

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v14, v3, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v2, v4}, Lcom/instabug/survey/e/c/b;->a(Z)V

    .line 226
    new-instance v2, Lcom/instabug/survey/e/c/g;

    invoke-direct {v2}, Lcom/instabug/survey/e/c/g;-><init>()V

    move-object/from16 v4, v17

    .line 227
    invoke-virtual {v2, v4}, Lcom/instabug/survey/e/c/g;->fromJson(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->a(Lcom/instabug/survey/e/c/g;)V

    move-object/from16 v2, v16

    .line 229
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 232
    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " announcements have been retrieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "announcement_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-static {v0, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 247
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v2

    :cond_8
    move-object v9, v2

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v11, v28

    move/from16 v12, v29

    move/from16 v13, v30

    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v10, v33

    move/from16 v16, v34

    move/from16 v17, v35

    move/from16 v18, v36

    move/from16 v0, v37

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v19, v9

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v19, v9

    .line 248
    :goto_7
    :try_start_2
    const-class v2, Lcom/instabug/survey/announcements/cache/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "announcement conversion failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 258
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    .line 259
    :goto_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 261
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 262
    throw v0
.end method

.method public static declared-synchronized a()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    const-string v2, "announcement_table"

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v2, v3, v3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 57
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 58
    :try_start_3
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 59
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 60
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/d/c/a;)V
    .locals 3
    .param p0    # Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 347
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 348
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "paused"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 349
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lcom/instabug/survey/announcements/cache/b;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;JLandroid/content/ContentValues;)J

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1

    const-string v2, "announcement_id=? "

    const/4 v3, 0x1

    .line 39
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 40
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p0, "announcement_table"

    .line 42
    invoke-virtual {v1, p0, v2, v3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 43
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 46
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 47
    :try_start_3
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 48
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 49
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a(Ljava/util/List;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/d/c/a;

    .line 28
    invoke-static {v1, v2}, Lcom/instabug/survey/announcements/cache/b;->c(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/d/c/a;)J

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 33
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 34
    :try_start_3
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 35
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 36
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(J)Z
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 263
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v0

    const/4 v1, 0x1

    .line 265
    new-array v5, v1, [Ljava/lang/String;

    .line 276
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v5, p1

    const-string v2, "announcement_table"

    const-string v4, "announcement_id=? "

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 277
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    .line 303
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    .line 304
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 305
    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return p1
.end method

.method public static declared-synchronized b(Lcom/instabug/survey/d/c/a;)J
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    .line 3
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 6
    invoke-static {p0}, Lcom/instabug/survey/announcements/cache/b;->a(Lcom/instabug/survey/d/c/a;)Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "announcement_table"

    const/4 v6, 0x0

    .line 9
    invoke-virtual {v1, v5, v6, v4}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 11
    invoke-static {p0}, Lcom/instabug/survey/announcements/cache/b;->c(Lcom/instabug/survey/d/c/a;)J

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V

    .line 14
    const-class v6, Lcom/instabug/survey/announcements/cache/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "announcement id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " has been added to "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "announcement_table"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {v6, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 25
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    :try_start_3
    const-class v4, Lcom/instabug/survey/announcements/cache/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "announcement insertion failed due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {v4, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :try_start_4
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 33
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-wide v2

    .line 34
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 35
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 36
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(J)Lcom/instabug/survey/d/c/a;
    .locals 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 225
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const/4 v0, 0x1

    .line 227
    new-array v5, v0, [Ljava/lang/String;

    .line 238
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v5, v10

    const-string v2, "announcement_table"

    const-string v4, "announcement_id=? "

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    .line 239
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "announcement_id"

    .line 266
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "announcement_type"

    .line 267
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "announcement_title"

    .line 268
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "conditions_operator"

    .line 269
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "answered"

    .line 270
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "dismissed_at"

    .line 271
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v11, "shown_at"

    .line 272
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "isCancelled"

    .line 273
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "eventIndex"

    .line 274
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "isAlreadyShown"

    .line 275
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "paused"

    .line 276
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v10, "targetAudiences"

    .line 277
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "announcement"

    .line 278
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "announceAssetsStatus"

    .line 279
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "supportedLocales"

    .line 280
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "isLocalized"

    .line 281
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "currentLocale"

    .line 282
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 287
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-nez v19, :cond_1

    .line 288
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 342
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    const/4 v1, 0x0

    return-object v1

    .line 343
    :cond_1
    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 344
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 346
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 347
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 348
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 349
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 350
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 351
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 352
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 353
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 354
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 355
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v19, v9

    move/from16 v9, v16

    .line 356
    :try_start_2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v16, v10

    move/from16 v10, v17

    .line 357
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    move/from16 v10, v18

    .line 358
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 359
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v1

    .line 361
    :try_start_3
    new-instance v1, Lcom/instabug/survey/d/c/a;

    invoke-direct {v1}, Lcom/instabug/survey/d/c/a;-><init>()V

    move-object/from16 v20, v2

    .line 362
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instabug/survey/d/c/a;->b(J)Lcom/instabug/survey/d/c/a;

    .line 363
    invoke-virtual {v1, v4}, Lcom/instabug/survey/d/c/a;->c(I)V

    .line 364
    invoke-virtual {v1, v5}, Lcom/instabug/survey/d/c/a;->b(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, v6}, Lcom/instabug/survey/d/c/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v7, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 366
    :goto_0
    invoke-virtual {v1, v2}, Lcom/instabug/survey/d/c/a;->b(Z)V

    int-to-long v2, v8

    .line 367
    invoke-virtual {v1, v2, v3}, Lcom/instabug/survey/d/c/a;->a(J)V

    int-to-long v2, v11

    .line 368
    invoke-virtual {v1, v2, v3}, Lcom/instabug/survey/d/c/a;->c(J)V

    const/4 v2, 0x1

    if-ne v12, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 369
    :goto_1
    invoke-virtual {v1, v3}, Lcom/instabug/survey/d/c/a;->c(Z)V

    .line 370
    invoke-virtual {v1, v13}, Lcom/instabug/survey/d/c/a;->b(I)V

    if-ne v14, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 371
    :goto_2
    invoke-virtual {v1, v3}, Lcom/instabug/survey/d/c/a;->a(Z)V

    if-ne v15, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 372
    :goto_3
    invoke-virtual {v1, v2}, Lcom/instabug/survey/d/c/a;->d(Z)V

    .line 373
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/d/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/survey/d/c/a;->a(Ljava/util/ArrayList;)V

    .line 374
    invoke-virtual {v1, v9}, Lcom/instabug/survey/d/c/a;->a(I)V

    .line 375
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 376
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v0

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v10, v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Lcom/instabug/survey/e/c/b;->a(Z)V

    .line 379
    new-instance v0, Lcom/instabug/survey/e/c/g;

    invoke-direct {v0}, Lcom/instabug/survey/e/c/g;-><init>()V

    move-object/from16 v2, v16

    .line 380
    invoke-virtual {v0, v2}, Lcom/instabug/survey/e/c/g;->fromJson(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1, v0}, Lcom/instabug/survey/d/c/a;->a(Lcom/instabug/survey/e/c/g;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 390
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 392
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v18, v1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v18, v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v19, v9

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v19, v9

    .line 393
    :goto_5
    :try_start_4
    const-class v1, Lcom/instabug/survey/announcements/cache/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "announcement conversion failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 401
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 403
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    .line 404
    :goto_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 406
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 407
    throw v0
.end method

.method public static b()Ljava/util/List;
    .locals 40
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const-string v2, "announcement_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    .line 39
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "announcement_id"

    .line 66
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "announcement_type"

    .line 67
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "announcement_title"

    .line 68
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "conditions_operator"

    .line 69
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "answered"

    .line 70
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dismissed_at"

    .line 71
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "shown_at"

    .line 72
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "isCancelled"

    .line 73
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v10, "eventIndex"

    .line 74
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "isAlreadyShown"

    .line 75
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "paused"

    .line 76
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "targetAudiences"

    .line 77
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "announcement"

    .line 78
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "announceAssetsStatus"

    .line 79
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "supportedLocales"

    .line 80
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "isLocalized"

    .line 81
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "currentLocale"

    .line 82
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 85
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-nez v19, :cond_1

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 148
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_1
    move-object/from16 v19, v9

    .line 149
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 152
    :goto_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v21, v0

    .line 153
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v22, v3

    .line 154
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v23, v2

    .line 155
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v24, v4

    .line 156
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v25, v5

    .line 157
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v26, v6

    .line 158
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v27, v7

    .line 159
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v28, v8

    .line 160
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v29, v10

    .line 161
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v30, v11

    .line 162
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v31, v12

    .line 163
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v32, v13

    .line 164
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v33, v14

    move/from16 v14, v16

    move-object/from16 v16, v9

    .line 165
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v34, v14

    move/from16 v14, v17

    move-object/from16 v17, v12

    .line 166
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v35, v14

    move/from16 v14, v18

    move-object/from16 v18, v12

    .line 167
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v36, v14

    .line 168
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v37, v15

    .line 170
    new-instance v15, Lcom/instabug/survey/d/c/a;

    invoke-direct {v15}, Lcom/instabug/survey/d/c/a;-><init>()V

    move/from16 v39, v12

    move-object/from16 v38, v13

    .line 171
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v15, v12, v13}, Lcom/instabug/survey/d/c/a;->b(J)Lcom/instabug/survey/d/c/a;

    .line 172
    invoke-virtual {v15, v3}, Lcom/instabug/survey/d/c/a;->c(I)V

    .line 173
    invoke-virtual {v15, v0}, Lcom/instabug/survey/d/c/a;->b(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v15, v2}, Lcom/instabug/survey/d/c/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v4, v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 175
    :goto_1
    invoke-virtual {v15, v3}, Lcom/instabug/survey/d/c/a;->b(Z)V

    int-to-long v3, v5

    .line 176
    invoke-virtual {v15, v3, v4}, Lcom/instabug/survey/d/c/a;->a(J)V

    int-to-long v3, v6

    .line 177
    invoke-virtual {v15, v3, v4}, Lcom/instabug/survey/d/c/a;->c(J)V

    if-ne v7, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 178
    :goto_2
    invoke-virtual {v15, v3}, Lcom/instabug/survey/d/c/a;->c(Z)V

    .line 179
    invoke-virtual {v15, v8}, Lcom/instabug/survey/d/c/a;->b(I)V

    if-ne v10, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 180
    :goto_3
    invoke-virtual {v15, v3}, Lcom/instabug/survey/d/c/a;->a(Z)V

    if-ne v11, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 181
    :goto_4
    invoke-virtual {v15, v3}, Lcom/instabug/survey/d/c/a;->d(Z)V

    .line 182
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v38

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/d/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/d/c/a;->a(Ljava/util/ArrayList;)V

    .line 183
    invoke-virtual {v15, v9}, Lcom/instabug/survey/d/c/a;->a(I)V

    .line 184
    invoke-virtual {v15}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v5, v18

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 185
    invoke-virtual {v15}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v15}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    move/from16 v4, v39

    if-ne v4, v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {v3, v0}, Lcom/instabug/survey/e/c/b;->a(Z)V

    .line 188
    new-instance v0, Lcom/instabug/survey/e/c/g;

    invoke-direct {v0}, Lcom/instabug/survey/e/c/g;-><init>()V

    move-object/from16 v2, v17

    .line 189
    invoke-virtual {v0, v2}, Lcom/instabug/survey/e/c/g;->fromJson(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v15, v0}, Lcom/instabug/survey/d/c/a;->a(Lcom/instabug/survey/e/c/g;)V

    move-object/from16 v0, v16

    .line 191
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 194
    const-class v2, Lcom/instabug/survey/announcements/cache/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " announcements have been retrieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "announcement_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v2, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 209
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_7
    move-object v9, v0

    move/from16 v0, v21

    move/from16 v3, v22

    move/from16 v2, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v7, v27

    move/from16 v8, v28

    move/from16 v10, v29

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v13, v32

    move/from16 v14, v33

    move/from16 v16, v34

    move/from16 v17, v35

    move/from16 v18, v36

    move/from16 v15, v37

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v19, v9

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v19, v9

    .line 210
    :goto_5
    :try_start_2
    const-class v2, Lcom/instabug/survey/announcements/cache/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "announcement conversion failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    .line 221
    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 223
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 224
    throw v0
.end method

.method private static b(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/d/c/a;)V
    .locals 3
    .param p0    # Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 408
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentLocale"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 412
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/d/c/c;->c(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "announcement"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 414
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lcom/instabug/survey/announcements/cache/b;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;JLandroid/content/ContentValues;)J

    :cond_2
    return-void
.end method

.method private static declared-synchronized c(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/d/c/a;)J
    .locals 6
    .param p0    # Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    monitor-enter v0

    :try_start_0
    const-string v1, "announcement_id=? "

    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-static {p1}, Lcom/instabug/survey/announcements/cache/b;->a(Lcom/instabug/survey/d/c/a;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "announcement_table"

    .line 19
    invoke-virtual {p0, v4, v3, v1, v2}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    .line 20
    const-class p0, Lcom/instabug/survey/announcements/cache/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "announcement id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " has been updated in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "announcement_table"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "announcement updating failed due to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 28
    const-class p1, Lcom/instabug/survey/announcements/cache/b;

    invoke-static {p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 p0, -0x1

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Lcom/instabug/survey/d/c/a;)J
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 4
    invoke-static {v1, p0}, Lcom/instabug/survey/announcements/cache/b;->c(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/d/c/a;)J

    move-result-wide v2

    .line 5
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 9
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p0

    .line 10
    :try_start_3
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 11
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 12
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const/4 v0, 0x1

    .line 30
    new-array v5, v0, [Ljava/lang/String;

    sget-object v1, Lcom/instabug/survey/e/c/f;->READY_TO_SEND:Lcom/instabug/survey/e/c/f;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v5, v10

    const-string v2, "announcement_table"

    const-string v4, "surveyState=? "

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    .line 42
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v2, "announcement_id"

    .line 69
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "announcement_type"

    .line 70
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "announcement_title"

    .line 71
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "conditions_operator"

    .line 72
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "answered"

    .line 73
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "dismissed_at"

    .line 74
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "shown_at"

    .line 75
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v11, "isCancelled"

    .line 76
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "eventIndex"

    .line 77
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "isAlreadyShown"

    .line 78
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "paused"

    .line 79
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "targetAudiences"

    .line 80
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v10, "announcement"

    .line 81
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "announceAssetsStatus"

    .line 82
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "supportedLocales"

    .line 83
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "isLocalized"

    .line 84
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "currentLocale"

    .line 85
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 89
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-nez v19, :cond_1

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_1
    move-object/from16 v19, v9

    .line 153
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    :goto_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v21, v2

    .line 157
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v22, v4

    .line 158
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v23, v3

    .line 159
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v24, v5

    .line 160
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v25, v6

    .line 161
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v26, v7

    .line 162
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v27, v8

    .line 163
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v28, v11

    .line 164
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v29, v12

    .line 165
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v30, v13

    .line 166
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v31, v14

    .line 167
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v32, v15

    .line 168
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v33, v10

    move/from16 v10, v16

    move-object/from16 v16, v9

    .line 169
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v34, v10

    move/from16 v10, v17

    move-object/from16 v17, v14

    .line 170
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v35, v10

    move/from16 v10, v18

    move-object/from16 v18, v14

    .line 171
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v36, v10

    .line 172
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v37, v0

    .line 174
    new-instance v0, Lcom/instabug/survey/d/c/a;

    invoke-direct {v0}, Lcom/instabug/survey/d/c/a;-><init>()V

    move/from16 v38, v9

    move-object/from16 v39, v10

    .line 175
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/instabug/survey/d/c/a;->b(J)Lcom/instabug/survey/d/c/a;

    .line 176
    invoke-virtual {v0, v4}, Lcom/instabug/survey/d/c/a;->c(I)V

    .line 177
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->b(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, v3}, Lcom/instabug/survey/d/c/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v5, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 179
    :goto_1
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->b(Z)V

    int-to-long v2, v6

    .line 180
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/d/c/a;->a(J)V

    int-to-long v2, v7

    .line 181
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/d/c/a;->c(J)V

    const/4 v2, 0x1

    if-ne v8, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 182
    :goto_2
    invoke-virtual {v0, v3}, Lcom/instabug/survey/d/c/a;->c(Z)V

    .line 183
    invoke-virtual {v0, v11}, Lcom/instabug/survey/d/c/a;->b(I)V

    if-ne v12, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 184
    :goto_3
    invoke-virtual {v0, v3}, Lcom/instabug/survey/d/c/a;->a(Z)V

    if-ne v13, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 185
    :goto_4
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->d(Z)V

    .line 186
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v15}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/d/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->a(Ljava/util/ArrayList;)V

    move/from16 v2, v38

    .line 187
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->a(I)V

    .line 188
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 189
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    move-object/from16 v3, v39

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->j()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v14, v3, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2, v4}, Lcom/instabug/survey/e/c/b;->a(Z)V

    .line 192
    new-instance v2, Lcom/instabug/survey/e/c/g;

    invoke-direct {v2}, Lcom/instabug/survey/e/c/g;-><init>()V

    move-object/from16 v4, v17

    .line 193
    invoke-virtual {v2, v4}, Lcom/instabug/survey/e/c/g;->fromJson(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v2}, Lcom/instabug/survey/d/c/a;->a(Lcom/instabug/survey/e/c/g;)V

    move-object/from16 v2, v16

    .line 195
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 198
    const-class v0, Lcom/instabug/survey/announcements/cache/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " announcements have been retrieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "announcement_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v0, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 213
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v2

    :cond_7
    move-object v9, v2

    move/from16 v2, v21

    move/from16 v4, v22

    move/from16 v3, v23

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v11, v28

    move/from16 v12, v29

    move/from16 v13, v30

    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v10, v33

    move/from16 v16, v34

    move/from16 v17, v35

    move/from16 v18, v36

    move/from16 v0, v37

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v19, v9

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v19, v9

    .line 214
    :goto_6
    :try_start_2
    const-class v2, Lcom/instabug/survey/announcements/cache/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "announcement conversion failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    .line 225
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-virtual/range {v19 .. v19}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 228
    throw v0
.end method
