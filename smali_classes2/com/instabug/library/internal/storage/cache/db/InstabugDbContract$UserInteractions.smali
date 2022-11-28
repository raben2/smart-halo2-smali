.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserInteractions;
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
    name = "UserInteractions"
.end annotation


# static fields
.field public static final COLUMN_ALREADY_SHOWN:Ljava/lang/String; = "is_already_shown"

.field public static final COLUMN_ANSWERED:Ljava/lang/String; = "answered"

.field public static final COLUMN_ATTEMPT_COUNT:Ljava/lang/String; = "attemptCount"

.field public static final COLUMN_DISMISSED_AT:Ljava/lang/String; = "dismissed_at"

.field public static final COLUMN_EVENT_INDEX:Ljava/lang/String; = "eventIndex"

.field public static final COLUMN_IS_CANCELLED:Ljava/lang/String; = "isCancelled"

.field public static final COLUMN_SESSIONS_COUNT:Ljava/lang/String; = "sessionCounter"

.field public static final COLUMN_SHOULD_SHOW_AGAIN:Ljava/lang/String; = "shouldShowAgain"

.field public static final COLUMN_SHOWN_AT:Ljava/lang/String; = "shown_at"

.field public static final COLUMN_SURVEY_ID:Ljava/lang/String; = "survey_id"

.field public static final COLUMN_SURVEY_TARGET:Ljava/lang/String; = "surveyTargeting"

.field public static final COLUMN_USER_INTERACTION_ON_TYPE:Ljava/lang/String; = "action_on_type"

.field public static final COLUMN_UUID_TYPE:Ljava/lang/String; = "uuid"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user_interaction ( survey_id INTEGER,uuid TEXT,surveyTargeting TEXT,action_on_type INTEGER,answered INTEGER,dismissed_at INTEGER,shown_at INTEGER,isCancelled INTEGER,attemptCount INTEGER,eventIndex INTEGER,shouldShowAgain INTEGER,sessionCounter INTEGER,is_already_shown INTEGER,CONSTRAINT uuid     FOREIGN KEY (uuid)     REFERENCES user (uuid)     ON DELETE CASCADE,  PRIMARY KEY (survey_id,uuid,action_on_type))"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS user_interaction"

.field public static final TABLE_NAME:Ljava/lang/String; = "user_interaction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
