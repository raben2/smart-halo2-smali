.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$FeatureRequestEntry;
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
    name = "FeatureRequestEntry"
.end annotation


# static fields
.field public static final COLUMN_COLOR_CODE:Ljava/lang/String; = "color_code"

.field public static final COLUMN_COMMENTS_COUNT:Ljava/lang/String; = "comments_count"

.field public static final COLUMN_CREATOR_NAME:Ljava/lang/String; = "creator_name"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_IS_LIKED:Ljava/lang/String; = "liked"

.field public static final COLUMN_LIKES_COUNT:Ljava/lang/String; = "likes_count"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_VOTE_UPDATED:Ljava/lang/String; = "ib_user_vote_status"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS feature_requests_table ( _id INTEGER PRIMARY KEY,title TEXT,description TEXT,status TEXT,likes_count INTEGER,comments_count INTEGER,liked INTEGER,date INTEGER,color_code TEXT,creator_name TEXT,ib_user_vote_status TEXT )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS feature_requests_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "feature_requests_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
