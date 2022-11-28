.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$APMUiTraceEntry;
.super Ljava/lang/Object;
.source "InstabugDbContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APMUiTraceEntry"
.end annotation


# static fields
.field public static final COLUMN_BATTERY_LEVEL:Ljava/lang/String; = "batter_level"

.field public static final COLUMN_CONTAINER_NAME:Ljava/lang/String; = "container_name"

.field public static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_LARGE_DROPS_DURATION:Ljava/lang/String; = "large_drop_duration"

.field public static final COLUMN_MODULE_NAME:Ljava/lang/String; = "module_name"

.field public static final COLUMN_NAME:Ljava/lang/String; = "trace_name"

.field public static final COLUMN_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final COLUMN_POWER_SAVE_MODE:Ljava/lang/String; = "power_save_more_enabled"

.field public static final COLUMN_REFRESH_RATE:Ljava/lang/String; = "display_refresh_rate"

.field public static final COLUMN_SCREEN_TITLE:Ljava/lang/String; = "screen_title"

.field public static final COLUMN_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final COLUMN_SMALL_DROPS_DURATION:Ljava/lang/String; = "small_drops_duration"

.field public static final COLUMN_START_TIME:Ljava/lang/String; = "start_time"

.field public static final COLUMN_USER_DEFINED:Ljava/lang/String; = "user_defined"

.field public static final CREATE_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS apm_ui_traces (id INTEGER PRIMARY KEY AUTOINCREMENT,session_id INTEGER,trace_name TEXT,screen_title TEXT,duration INTEGER,small_drops_duration INTEGER,large_drop_duration INTEGER,batter_level INTEGER,power_save_more_enabled BOOLEAN,display_refresh_rate INTEGER,container_name TEXT,module_name TEXT,orientation TEXT,user_defined BOOLEAN,start_time INTEGER, CONSTRAINT session_id, FOREIGN KEY (session_id) REFERENCES apm_session_table(session_id) ON DELETE CASCADE )"

.field public static final DROP_TABLE_QUERY:Ljava/lang/String; = "DROP TABLE IF EXISTS apm_ui_traces"

.field public static final TABLE_NAME:Ljava/lang/String; = "apm_ui_traces"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
