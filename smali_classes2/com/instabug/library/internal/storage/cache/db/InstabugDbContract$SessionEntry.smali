.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$SessionEntry;
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
    name = "SessionEntry"
.end annotation


# static fields
.field public static final COLUMN_APP_TOKEN:Ljava/lang/String; = "app_token"

.field public static final COLUMN_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final COLUMN_CRASH_REPORTING_ENABLED:Ljava/lang/String; = "crash_reporting_enabled"

.field public static final COLUMN_DEVICE:Ljava/lang/String; = "device"

.field public static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_ID:Ljava/lang/String; = "session_id"

.field public static final COLUMN_OS:Ljava/lang/String; = "os"

.field public static final COLUMN_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field public static final COLUMN_STARTED_AT:Ljava/lang/String; = "started_at"

.field public static final COLUMN_SYNC_STATUS:Ljava/lang/String; = "sync_status"

.field public static final COLUMN_USERS_PAGE_ENABLED:Ljava/lang/String; = "users_page_enabled"

.field public static final COLUMN_USER_ATTRIBUTES:Ljava/lang/String; = "user_events"

.field public static final COLUMN_USER_ATTRIBUTES_KEYS:Ljava/lang/String; = "user_events_keys"

.field public static final COLUMN_USER_EMAIL:Ljava/lang/String; = "user_email"

.field public static final COLUMN_USER_EVENTS:Ljava/lang/String; = "user_attributes"

.field public static final COLUMN_USER_EVENTS_KEYS:Ljava/lang/String; = "user_attributes_keys"

.field public static final COLUMN_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final COLUMN_UUID:Ljava/lang/String; = "uuid"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS session_table ( session_id TEXT,started_at INTEGER,duration INTEGER,user_events TEXT,user_attributes TEXT,user_events_keys TEXT,user_attributes_keys TEXT,user_email TEXT,uuid TEXT,user_name TEXT,os TEXT,app_token TEXT,device TEXT,sdk_version TEXT,app_version TEXT,crash_reporting_enabled INTEGER,users_page_enabled INTEGER,sync_status INTEGER )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS session_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "session_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
