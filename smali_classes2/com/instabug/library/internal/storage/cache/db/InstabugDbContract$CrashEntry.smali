.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$CrashEntry;
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
    name = "CrashEntry"
.end annotation


# static fields
.field public static final COLUMN_CRASH_MESSAGE:Ljava/lang/String; = "crash_message"

.field public static final COLUMN_CRASH_STATE:Ljava/lang/String; = "crash_state"

.field public static final COLUMN_HANDLED:Ljava/lang/String; = "handled"

.field public static final COLUMN_ID:Ljava/lang/String; = "crash_id"

.field public static final COLUMN_RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field public static final COLUMN_STATE:Ljava/lang/String; = "state"

.field public static final COLUMN_TEMPORARY_SERVER_TOKEN:Ljava/lang/String; = "temporary_server_token"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS crashes_table ( crash_id TEXT, temporary_server_token TEXT, crash_message TEXT, crash_state TEXT, state TEXT, handled INTEGER, retry_count INTEGER )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS crashes_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "crashes_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
