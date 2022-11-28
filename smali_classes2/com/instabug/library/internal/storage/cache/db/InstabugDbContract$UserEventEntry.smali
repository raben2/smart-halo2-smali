.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserEventEntry;
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
    name = "UserEventEntry"
.end annotation


# static fields
.field public static final COLUMN_EVENT_IDENTIFIER:Ljava/lang/String; = "event_identifier"

.field public static final COLUMN_EVENT_LOGGING_COUNT:Ljava/lang/String; = "event_logging_count"

.field public static final COLUMN_IS_ANONYMOUS:Ljava/lang/String; = "is_anonymous"

.field public static final COLUMN_UUID:Ljava/lang/String; = "uuid"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user_events_logs ( uuid TEXT,is_anonymous BOOLEAN,event_identifier TEXT,event_logging_count INTEGER, CONSTRAINT uuid     FOREIGN KEY (uuid)     REFERENCES user (uuid)     ON DELETE CASCADE, PRIMARY KEY (uuid,event_identifier))"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS user_events_logs"

.field public static final TABLE_NAME:Ljava/lang/String; = "user_events_logs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
