.class public Lcom/instabug/library/internal/storage/cache/db/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "InstabugDbHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    const-string v0, "instabug.db"

    const/4 v1, 0x0

    const/16 v2, 0x16

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS announcement_table"

    .line 38
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS announcement_assets_table"

    .line 39
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-le p3, p2, :cond_3

    const/16 v0, 0x10

    if-le p3, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AnnouncementEntry;->ALTER_TABLE_UPGRADE_16:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration of schema v. 16 failed with the error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/instabug/library/logging/InstabugLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/16 v0, 0xf

    if-lt p3, v0, :cond_3

    const/16 p3, 0xc

    if-ge p2, p3, :cond_1

    .line 15
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :cond_1
    if-ne p2, p3, :cond_2

    .line 19
    :try_start_1
    sget-object p2, Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserEntity;->ALTER_TABLE_UPGRADE_12:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    sget-object p2, Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserAttributesEntry;->ALTER_TABLE_UPGRADE_14:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 22
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Migration of schema v. 12 failed with the error: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/instabug/library/logging/InstabugLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 p3, 0xe

    if-ne p2, p3, :cond_3

    .line 31
    :try_start_2
    sget-object p2, Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserAttributesEntry;->ALTER_TABLE_UPGRADE_14:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 33
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Migration of schema v. 14 failed with the error: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/instabug/library/logging/InstabugLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS surveys_table"

    .line 18
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS user_interaction"

    .line 19
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS user_attributes_table"

    .line 20
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS user"

    .line 21
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/internal/storage/cache/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    const-string p2, "DROP TABLE IF EXISTS network_logs"

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS instabug_logs"

    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS user_events_logs"

    .line 4
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS sdk_event"

    .line 5
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS sdk_api"

    .line 6
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS attachments"

    .line 7
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS crashes_table"

    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS bugs_table"

    .line 9
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS feature_requests_table"

    .line 10
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS execution_traces"

    .line 11
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS execution_traces_attributes"

    .line 12
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS app_launch"

    .line 13
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS app_launch_attributes"

    .line 14
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS apm_network_log"

    .line 15
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS apm_ui_traces"

    .line 16
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/b;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/instabug/library/internal/storage/cache/db/c/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/internal/storage/cache/db/a;->b(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/instabug/library/internal/storage/cache/db/b;->b(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const-string v0, "PRAGMA foreign_keys=ON;"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/internal/storage/cache/db/a;->b(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/instabug/library/internal/storage/cache/db/b;->c(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
