.class public Lcom/instabug/library/internal/storage/cache/db/c/e;
.super Ljava/lang/Object;
.source "Migration_14_15.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/db/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE user_attributes_table ADD COLUMN type INTEGER DEFAULT 0"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
