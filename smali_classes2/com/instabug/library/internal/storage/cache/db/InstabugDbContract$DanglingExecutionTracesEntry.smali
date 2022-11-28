.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$DanglingExecutionTracesEntry;
.super Ljava/lang/Object;
.source "InstabugDbContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DanglingExecutionTracesEntry"
.end annotation


# static fields
.field public static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_ENDED_ON_BACKGROUND:Ljava/lang/String; = "ended_on_background"

.field public static final COLUMN_ID:Ljava/lang/String; = "trace_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_STARTED_ON_BACKGROUND:Ljava/lang/String; = "started_on_background"

.field public static final COLUMN_START_TIME:Ljava/lang/String; = "start_time"

.field public static final CREATE_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS dangling_execution_traces ( trace_id INTEGER PRIMARY KEY,name TEXT,start_time INTEGER,started_on_background INTEGER,ended_on_background INTEGER,duration INTEGER default -1 )"

.field public static final DROP_TABLE_QUERY:Ljava/lang/String; = "DROP TABLE IF EXISTS dangling_execution_traces"

.field public static final DURATION_DEFAULT_VALUE:I = -0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "dangling_execution_traces"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
