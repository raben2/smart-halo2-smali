.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$InstabugLogEntry;
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
    name = "InstabugLogEntry"
.end annotation


# static fields
.field public static final COLUMN_LOG_DATE:Ljava/lang/String; = "log_date"

.field public static final COLUMN_LOG_LEVEL:Ljava/lang/String; = "log_level"

.field public static final COLUMN_LOG_MESSAGE:Ljava/lang/String; = "log_message"

.field public static final DELETE_ALL_EXCEPT_THE_LATEST_1000_ENTRY:Ljava/lang/String; = "DELETE FROM instabug_logs WHERE log_date IN (SELECT log_date FROM instabug_logs ORDER BY log_date DESC LIMIT -1 OFFSET 1000)"

.field public static final DELETE_THE_OLDEST_INSERTED_ENTRY:Ljava/lang/String; = "DELETE FROM instabug_logs WHERE log_date = (SELECT MAX(log_date) FROM instabug_logs);"

.field public static final DROP_QUERY_INSTABUG_LOG:Ljava/lang/String; = "DROP TABLE IF EXISTS instabug_logs"

.field public static final INSTABUG_LOG_LIMIT:I = 0x3e8

.field public static final SELECT_LIMITED_INSTABUG_LOG:Ljava/lang/String; = "SELECT * FROM instabug_logs ORDER  BY log_date DESC LIMIT 1000"

.field public static final SQL_CREATE_INSTABUG_LOGS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS instabug_logs (log_message TEXT,log_level TEXT,log_date TEXT )"

.field public static final TABLE_NAME:Ljava/lang/String; = "instabug_logs"

.field public static final TRIM_INSTABUG_LOG_SQL_QUERY:Ljava/lang/String; = "DELETE FROM instabug_logs WHERE log_date NOT IN ( SELECT log_date FROM instabug_logs WHERE log_date ORDER BY log_date DESC LIMIT 1000 )"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
