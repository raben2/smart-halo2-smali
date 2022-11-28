.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$APMNetworkLogEntry;
.super Ljava/lang/Object;
.source "InstabugDbContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APMNetworkLogEntry"
.end annotation


# static fields
.field public static final COLUMN_CARRIER:Ljava/lang/String; = "carrier"

.field public static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_ERROR_MESSAGE:Ljava/lang/String; = "error_message"

.field public static final COLUMN_EXECUTED_ON_BACKGROUND:Ljava/lang/String; = "executed_on_background"

.field public static final COLUMN_ID:Ljava/lang/String; = "log_id"

.field public static final COLUMN_METHOD:Ljava/lang/String; = "method"

.field public static final COLUMN_RADIO:Ljava/lang/String; = "radio"

.field public static final COLUMN_REQUEST_BODY_SIZE:Ljava/lang/String; = "request_body_size"

.field public static final COLUMN_REQUEST_CONTENT_TYPE:Ljava/lang/String; = "request_content_type"

.field public static final COLUMN_REQUEST_HEADERS:Ljava/lang/String; = "request_headers"

.field public static final COLUMN_RESPONSE_BODY_SIZE:Ljava/lang/String; = "response_body_size"

.field public static final COLUMN_RESPONSE_CODE:Ljava/lang/String; = "response_code"

.field public static final COLUMN_RESPONSE_CONTENT_TYPE:Ljava/lang/String; = "response_content_type"

.field public static final COLUMN_RESPONSE_HEADERS:Ljava/lang/String; = "response_headers"

.field public static final COLUMN_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final COLUMN_START_TIME:Ljava/lang/String; = "start_time"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final CREATE_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS apm_network_log ( log_id INTEGER PRIMARY KEY AUTOINCREMENT,session_id INTEGER,start_time INTEGER,executed_on_background INTEGER,url TEXT,method TEXT,request_headers TEXT,response_headers TEXT,request_content_type TEXT,response_content_type TEXT,duration INTEGER,response_code INTEGER,request_body_size INTEGER,response_body_size INTEGER,radio TEXT,error_message TEXT,carrier TEXT, CONSTRAINT session_id, FOREIGN KEY (session_id) REFERENCES apm_session_table(session_id) ON DELETE CASCADE )"

.field public static final DROP_TABLE_QUERY:Ljava/lang/String; = "DROP TABLE IF EXISTS apm_network_log"

.field public static final TABLE_NAME:Ljava/lang/String; = "apm_network_log"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
