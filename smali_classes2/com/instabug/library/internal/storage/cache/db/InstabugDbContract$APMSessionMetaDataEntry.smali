.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$APMSessionMetaDataEntry;
.super Ljava/lang/Object;
.source "InstabugDbContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APMSessionMetaDataEntry"
.end annotation


# static fields
.field public static final COLUMN_APP_LAUNCH_DROPPED_COUNT:Ljava/lang/String; = "app_launch_dropped_count"

.field public static final COLUMN_APP_LAUNCH_TOTAL_COUNT:Ljava/lang/String; = "app_launch_total_count"

.field public static final COLUMN_EXECUTION_TRACES_DROPPED_COUNT:Ljava/lang/String; = "traces_dropped_count"

.field public static final COLUMN_EXECUTION_TRACES_TOTAL_COUNT:Ljava/lang/String; = "traces_total_count"

.field public static final COLUMN_NETWORK_LOGS_DROPPED_COUNT:Ljava/lang/String; = "network_logs_dropped_count"

.field public static final COLUMN_NETWORK_LOGS_TOTAL_COUNT:Ljava/lang/String; = "network_logs_total_count"

.field public static final COLUMN_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final COLUMN_UI_TRACES_DROPPED_COUNT:Ljava/lang/String; = "ui_traces_dropped_count"

.field public static final COLUMN_UI_TRACES_TOTAL_COUNT:Ljava/lang/String; = "ui_traces_total_count"

.field public static final COUNT_DEFAULT_VALUE:I = 0x0

.field public static final CREATE_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS apm_session_meta_data ( session_id INTEGER NOT NULL UNIQUE,traces_total_count INTEGER default 0,app_launch_total_count INTEGER default 0,network_logs_total_count INTEGER default 0,ui_traces_total_count INTEGER default 0,traces_dropped_count INTEGER default 0,app_launch_dropped_count INTEGER default 0,network_logs_dropped_count INTEGER default 0,ui_traces_dropped_count INTEGER default 0, CONSTRAINT session_id, FOREIGN KEY (session_id) REFERENCES apm_session_table(session_id) ON DELETE CASCADE )"

.field public static final DROP_TABLE_QUERY:Ljava/lang/String; = "DROP TABLE IF EXISTS apm_session_meta_data"

.field public static final TABLE_NAME:Ljava/lang/String; = "apm_session_meta_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
