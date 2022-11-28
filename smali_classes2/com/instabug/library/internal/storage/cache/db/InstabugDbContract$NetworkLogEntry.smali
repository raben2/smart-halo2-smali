.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$NetworkLogEntry;
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
    name = "NetworkLogEntry"
.end annotation


# static fields
.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_HEADERS:Ljava/lang/String; = "headers"

.field public static final COLUMN_METHOD:Ljava/lang/String; = "method"

.field public static final COLUMN_NETWORK_TIME:Ljava/lang/String; = "response_time"

.field public static final COLUMN_REQUEST:Ljava/lang/String; = "request"

.field public static final COLUMN_RESPONSE:Ljava/lang/String; = "response"

.field public static final COLUMN_RESPONSE_CODE:Ljava/lang/String; = "status"

.field public static final COLUMN_RESPONSE_HEADERS:Ljava/lang/String; = "response_headers"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final DELETE_ALL_EXCEPT_THE_LATEST_100_ENTRY:Ljava/lang/String; = "DELETE FROM network_logs WHERE date IN (SELECT date FROM network_logs ORDER BY date DESC LIMIT -1 OFFSET 100)"

.field public static final NETWORK_LOG_LIMIT:I = 0x64

.field public static final SQL_CREATE_NETWORK_LOGS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS network_logs (_id INTEGER PRIMARY KEY,url TEXT,request TEXT,method TEXT,response TEXT,status INTEGER,headers TEXT,response_headers TEXT,date TEXT,response_time INTEGER )"

.field public static final SQL_DELETE_ENTRIES:Ljava/lang/String; = "DROP TABLE IF EXISTS network_logs"

.field public static final TABLE_NAME:Ljava/lang/String; = "network_logs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
