.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$ExecutionTracesEntry;
.super Ljava/lang/Object;
.source "InstabugDbContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecutionTracesEntry"
.end annotation


# static fields
.field public static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_ENDED_ON_BACKGROUND:Ljava/lang/String; = "ended_on_background"

.field public static final COLUMN_ID:Ljava/lang/String; = "trace_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final COLUMN_STARTED_ON_BACKGROUND:Ljava/lang/String; = "started_on_background"

.field public static final COLUMN_START_TIME:Ljava/lang/String; = "start_time"

.field public static final CREATE_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS execution_traces ( trace_id INTEGER PRIMARY KEY,name TEXT,session_id INTEGER,start_time INTEGER,started_on_background INTEGER,ended_on_background INTEGER,duration INTEGER default -1, CONSTRAINT session_id, FOREIGN KEY (session_id) REFERENCES apm_session_table(session_id) ON DELETE CASCADE )"

.field public static final DROP_TABLE_QUERY:Ljava/lang/String; = "DROP TABLE IF EXISTS execution_traces"

.field public static final DURATION_DEFAULT_VALUE:I = -0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "execution_traces"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
