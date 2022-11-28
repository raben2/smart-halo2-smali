.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AnrEntry;
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
    name = "AnrEntry"
.end annotation


# static fields
.field public static final COLUMN_ANR_MAIN_THREAD_DATA:Ljava/lang/String; = "anr_main_thread_data"

.field public static final COLUMN_ANR_REST_OF_THREADS_DATA:Ljava/lang/String; = "anr_rest_of_threads_data"

.field public static final COLUMN_ANR_TEMPORARY_SERVER_TOKEN:Ljava/lang/String; = "temporary_server_token"

.field public static final COLUMN_ANR_UPLOAD_STATE:Ljava/lang/String; = "anr_upload_state"

.field public static final COLUMN_ID:Ljava/lang/String; = "anr_id"

.field public static final COLUMN_STATE:Ljava/lang/String; = "state"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS anrs_table ( anr_id TEXT, anr_main_thread_data TEXT, anr_rest_of_threads_data TEXT, anr_upload_state INTEGER, temporary_server_token TEXT, state TEXT )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS anrs_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "anrs_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
