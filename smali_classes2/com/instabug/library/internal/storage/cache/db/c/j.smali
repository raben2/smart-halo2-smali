.class public Lcom/instabug/library/internal/storage/cache/db/c/j;
.super Ljava/lang/Object;
.source "Migration_20_21.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/db/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "IBG_MIGRATION"

    const-string v1, "clearInstabugAttachmentDirectory started"

    .line 7
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/instabug/library/internal/storage/AttachmentManager;->getAttachmentDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/instabug/library/internal/storage/AttachmentManager;->deleteRecursive(Ljava/io/File;)V

    const-string p1, "IBG_MIGRATION"

    const-string v0, "clearInstabugAttachmentDirectory finished"

    .line 14
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "IBG_MIGRATION"

    const-string v1, "clearBugsAndCrashesTables"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DELETE FROM crashes_table"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM bugs_table"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "IBG_MIGRATION"

    const-string v1, "migration 20_21"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/c/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/library/internal/storage/cache/db/c/j;->a(Landroid/content/Context;)V

    return-void
.end method
