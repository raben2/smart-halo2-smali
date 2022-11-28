.class Lcom/instabug/library/internal/storage/cache/db/b;
.super Ljava/lang/Object;
.source "MigrationEngine.java"


# direct methods
.method private static a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not migrate from v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to v"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Falling back to destructive migration"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MigrationEngine"

    invoke-static {p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/b;

    invoke-direct {p1}, Lcom/instabug/library/internal/storage/cache/db/c/b;-><init>()V

    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static b(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method static c(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/16 v0, 0x11

    if-ge p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MigrationEngine"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrating database from v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    .line 28
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 29
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->k(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 30
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->j(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 31
    :pswitch_3
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->i(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 32
    :pswitch_4
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->h(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 33
    :pswitch_5
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->g(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 34
    :pswitch_6
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->f(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 35
    :pswitch_7
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->e(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 36
    :pswitch_8
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->d(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MigrationEngine"

    invoke-static {v2, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/d;

    invoke-direct {p1}, Lcom/instabug/library/internal/storage/cache/db/c/d;-><init>()V

    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    :goto_0
    return-void
.end method

.method private static e(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {p1}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/d;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/d;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p2, v1

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void
.end method

.method private static f(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-eq p1, v3, :cond_2

    const/16 v3, 0xe

    if-eq p1, v3, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {p1}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v0, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v0, p2, v2

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v1

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v3, Lcom/instabug/library/internal/storage/cache/db/c/d;

    invoke-direct {v3}, Lcom/instabug/library/internal/storage/cache/db/c/d;-><init>()V

    aput-object v3, p2, v2

    new-instance v2, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v2}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v2, p2, v1

    new-instance v1, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v1}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v1, p2, v0

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 11
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void
.end method

.method private static g(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-eq p1, v4, :cond_3

    const/16 v4, 0x11

    if-eq p1, v4, :cond_2

    const/16 v4, 0xe

    if-eq p1, v4, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v1, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v2

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 5
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v0, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v2

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v1

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 10
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 19
    :cond_2
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {p1}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 20
    :cond_3
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v4, Lcom/instabug/library/internal/storage/cache/db/c/d;

    invoke-direct {v4}, Lcom/instabug/library/internal/storage/cache/db/c/d;-><init>()V

    aput-object v4, p2, v3

    new-instance v3, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v3}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v3, p2, v2

    new-instance v2, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v2}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v2, p2, v1

    new-instance v1, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v1}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v1, p2, v0

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 25
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void
.end method

.method private static h(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {p1}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/h;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v3

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 7
    :pswitch_3
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v1, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v2

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 11
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 12
    :pswitch_4
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v0, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v2

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v1

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 17
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 18
    :pswitch_5
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    const/4 p2, 0x5

    new-array p2, p2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v5, Lcom/instabug/library/internal/storage/cache/db/c/d;

    invoke-direct {v5}, Lcom/instabug/library/internal/storage/cache/db/c/d;-><init>()V

    aput-object v5, p2, v4

    new-instance v4, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v4}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v4, p2, v3

    new-instance v3, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v3}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v3, p2, v2

    new-instance v2, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v2}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v2, p2, v1

    new-instance v1, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v1}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v1, p2, v0

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 24
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static i(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {p1}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/i;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v3, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v4

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v3

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 11
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v1, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v2

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 17
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 18
    :pswitch_5
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v0, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v2

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v1

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 24
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 25
    :pswitch_6
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    const/4 p2, 0x6

    new-array p2, p2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v6, Lcom/instabug/library/internal/storage/cache/db/c/d;

    invoke-direct {v6}, Lcom/instabug/library/internal/storage/cache/db/c/d;-><init>()V

    aput-object v6, p2, v5

    new-instance v5, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v5}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v5, p2, v4

    new-instance v4, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v4}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v4, p2, v3

    new-instance v3, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v3}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v3, p2, v2

    new-instance v2, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v2}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v2, p2, v1

    new-instance v1, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v1}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v1, p2, v0

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 32
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static j(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {p1}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    .line 3
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v4, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v5

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 7
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 8
    :pswitch_3
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v3, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v4

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 12
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 13
    :pswitch_4
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v3

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 19
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 20
    :pswitch_5
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v1, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v2

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 26
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 27
    :pswitch_6
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v0, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v2

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v1

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 34
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 35
    :pswitch_7
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    const/4 p2, 0x7

    new-array p2, p2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v7, Lcom/instabug/library/internal/storage/cache/db/c/d;

    invoke-direct {v7}, Lcom/instabug/library/internal/storage/cache/db/c/d;-><init>()V

    aput-object v7, p2, v6

    new-instance v6, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v6}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v6, p2, v5

    new-instance v5, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v5}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v5, p2, v4

    new-instance v4, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v4}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v4, p2, v3

    new-instance v3, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v3}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v3, p2, v2

    new-instance v2, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v2}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v2, p2, v1

    new-instance v1, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v1}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v1, p2, v0

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 43
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static k(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/k;

    invoke-direct {p1}, Lcom/instabug/library/internal/storage/cache/db/c/k;-><init>()V

    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/k;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v5, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v7

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/k;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/k;-><init>()V

    aput-object v0, p2, v6

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 4
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v4, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v7

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/k;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/k;-><init>()V

    aput-object v0, p2, v5

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 9
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 10
    :pswitch_4
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v3, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v7

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/k;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/k;-><init>()V

    aput-object v0, p2, v4

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 15
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 16
    :pswitch_5
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v7

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/k;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/k;-><init>()V

    aput-object v0, p2, v3

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 22
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v1, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v7

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/k;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/k;-><init>()V

    aput-object v0, p2, v2

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 30
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 31
    :pswitch_7
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    new-array p2, v0, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v0, p2, v7

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v0, p2, v6

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v0, p2, v5

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v0, p2, v4

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v0, p2, v3

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v0, p2, v2

    new-instance v0, Lcom/instabug/library/internal/storage/cache/db/c/k;

    invoke-direct {v0}, Lcom/instabug/library/internal/storage/cache/db/c/k;-><init>()V

    aput-object v0, p2, v1

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 39
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 40
    :pswitch_8
    new-instance p1, Lcom/instabug/library/internal/storage/cache/db/c/a;

    const/16 p2, 0x8

    new-array p2, p2, [Lcom/instabug/library/internal/storage/cache/db/c/c;

    new-instance v8, Lcom/instabug/library/internal/storage/cache/db/c/d;

    invoke-direct {v8}, Lcom/instabug/library/internal/storage/cache/db/c/d;-><init>()V

    aput-object v8, p2, v7

    new-instance v7, Lcom/instabug/library/internal/storage/cache/db/c/e;

    invoke-direct {v7}, Lcom/instabug/library/internal/storage/cache/db/c/e;-><init>()V

    aput-object v7, p2, v6

    new-instance v6, Lcom/instabug/library/internal/storage/cache/db/c/f;

    invoke-direct {v6}, Lcom/instabug/library/internal/storage/cache/db/c/f;-><init>()V

    aput-object v6, p2, v5

    new-instance v5, Lcom/instabug/library/internal/storage/cache/db/c/g;

    invoke-direct {v5}, Lcom/instabug/library/internal/storage/cache/db/c/g;-><init>()V

    aput-object v5, p2, v4

    new-instance v4, Lcom/instabug/library/internal/storage/cache/db/c/h;

    invoke-direct {v4}, Lcom/instabug/library/internal/storage/cache/db/c/h;-><init>()V

    aput-object v4, p2, v3

    new-instance v3, Lcom/instabug/library/internal/storage/cache/db/c/i;

    invoke-direct {v3}, Lcom/instabug/library/internal/storage/cache/db/c/i;-><init>()V

    aput-object v3, p2, v2

    new-instance v2, Lcom/instabug/library/internal/storage/cache/db/c/j;

    invoke-direct {v2}, Lcom/instabug/library/internal/storage/cache/db/c/j;-><init>()V

    aput-object v2, p2, v1

    new-instance v1, Lcom/instabug/library/internal/storage/cache/db/c/k;

    invoke-direct {v1}, Lcom/instabug/library/internal/storage/cache/db/c/k;-><init>()V

    aput-object v1, p2, v0

    invoke-direct {p1, p2}, Lcom/instabug/library/internal/storage/cache/db/c/a;-><init>([Lcom/instabug/library/internal/storage/cache/db/c/c;)V

    .line 49
    invoke-virtual {p1, p0}, Lcom/instabug/library/internal/storage/cache/db/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
