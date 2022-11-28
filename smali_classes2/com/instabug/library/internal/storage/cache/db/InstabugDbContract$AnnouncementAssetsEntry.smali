.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AnnouncementAssetsEntry;
.super Ljava/lang/Object;
.source "InstabugDbContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnouncementAssetsEntry"
.end annotation


# static fields
.field public static final COLUMN_ANNOUNCE_ID:Ljava/lang/String; = "announcement_item_id"

.field public static final COLUMN_FILE_PATH:Ljava/lang/String; = "asset_path"

.field public static final COLUMN_ID:Ljava/lang/String; = "asset_id"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS announcement_assets_table ( asset_id INTEGER PRIMARY KEY,announcement_item_id INTEGER,asset_path TEXT)"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS announcement_assets_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "announcement_assets_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
