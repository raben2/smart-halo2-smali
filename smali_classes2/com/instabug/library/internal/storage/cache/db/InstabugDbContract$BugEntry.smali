.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$BugEntry;
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
    name = "BugEntry"
.end annotation


# static fields
.field public static final COLUMN_BUG_STATE:Ljava/lang/String; = "bug_state"

.field public static final COLUMN_CATEGORIES_LIST:Ljava/lang/String; = "categories_list"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_MESSAGE:Ljava/lang/String; = "message"

.field public static final COLUMN_STATE:Ljava/lang/String; = "state"

.field public static final COLUMN_TEMPORARY_SERVER_TOKEN:Ljava/lang/String; = "temporary_server_token"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_VIEW_HIERARCHY:Ljava/lang/String; = "view_hierarchy"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS bugs_table ( id TEXT,temporary_server_token TEXT,type TEXT,message TEXT,state TEXT,bug_state TEXT,view_hierarchy TEXT,categories_list TEXT )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS bugs_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "bugs_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
