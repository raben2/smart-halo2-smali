.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$APMSessionEntry;
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
    name = "APMSessionEntry"
.end annotation


# static fields
.field public static final COLUMN_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final COLUMN_CORE_ID:Ljava/lang/String; = "core_session_id"

.field public static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_ID:Ljava/lang/String; = "session_id"

.field public static final COLUMN_OS:Ljava/lang/String; = "os"

.field public static final COLUMN_STARTED_AT:Ljava/lang/String; = "started_at"

.field public static final COLUMN_SYNC_STATUS:Ljava/lang/String; = "sync_status"

.field public static final COLUMN_TERMINATION_CODE:Ljava/lang/String; = "termination_code"

.field public static final COLUMN_UUID:Ljava/lang/String; = "uuid"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS apm_session_table ( session_id INTEGER PRIMARY KEY AUTOINCREMENT,core_session_id TEXT,os TEXT,uuid TEXT,app_version TEXT,started_at INTEGER,duration INTEGER,termination_code INTEGER,sync_status INTEGER default -1 )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS apm_session_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "apm_session_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
