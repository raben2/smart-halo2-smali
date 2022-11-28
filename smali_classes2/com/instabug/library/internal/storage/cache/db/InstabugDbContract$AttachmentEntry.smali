.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AttachmentEntry;
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
    name = "AttachmentEntry"
.end annotation


# static fields
.field public static final COLUMN_ATTACHMENT_STATE:Ljava/lang/String; = "attachment_state"

.field public static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_ENCRYPTED:Ljava/lang/String; = "encrypted"

.field public static final COLUMN_LOCALE_PATH:Ljava/lang/String; = "local_path"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_REPORT_ID:Ljava/lang/String; = "report_id"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final COLUMN_VIDEO_ENCODED:Ljava/lang/String; = "video_encoded"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS attachments ( _id INTEGER PRIMARY KEY, name TEXT, local_path TEXT, url TEXT, type TEXT, attachment_state TEXT, video_encoded INTEGER, duration TEXT, encrypted INTEGER, report_id TEXT )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS attachments"

.field public static final TABLE_NAME:Ljava/lang/String; = "attachments"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
