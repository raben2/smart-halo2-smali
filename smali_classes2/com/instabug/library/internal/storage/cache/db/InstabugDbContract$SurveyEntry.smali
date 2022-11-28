.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$SurveyEntry;
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
    name = "SurveyEntry"
.end annotation


# static fields
.field public static final COLUMN_ANSWERED:Ljava/lang/String; = "answered"

.field public static final COLUMN_ATTEMPT_COUNT:Ljava/lang/String; = "attemptCount"

.field public static final COLUMN_CONDITIONS_OPERATOR:Ljava/lang/String; = "conditions_operator"

.field public static final COLUMN_CUSTOM_ATTRIBUTES:Ljava/lang/String; = "customAttributes"

.field public static final COLUMN_DISMISSED_AT:Ljava/lang/String; = "dismissed_at"

.field public static final COLUMN_EVENT_INDEX:Ljava/lang/String; = "eventIndex"

.field public static final COLUMN_ID:Ljava/lang/String; = "survey_id"

.field public static final COLUMN_IS_CANCELLED:Ljava/lang/String; = "isCancelled"

.field public static final COLUMN_PAUSED:Ljava/lang/String; = "paused"

.field public static final COLUMN_QUESTIONS:Ljava/lang/String; = "questions"

.field public static final COLUMN_SESSIONS_COUNT:Ljava/lang/String; = "sessionCounter"

.field public static final COLUMN_SHOULD_SHOW_AGAIN:Ljava/lang/String; = "shouldShowAgain"

.field public static final COLUMN_SHOWN_AT:Ljava/lang/String; = "shown_at"

.field public static final COLUMN_SURVEY_CURRENT_LOCALE:Ljava/lang/String; = "currentLocale"

.field public static final COLUMN_SURVEY_IS_LOCALIZED:Ljava/lang/String; = "isLocalized"

.field public static final COLUMN_SURVEY_LOCALES:Ljava/lang/String; = "supportedLocales"

.field public static final COLUMN_SURVEY_STATE:Ljava/lang/String; = "surveyState"

.field public static final COLUMN_SURVEY_TARGET:Ljava/lang/String; = "surveyTargeting"

.field public static final COLUMN_SURVEY_TRIGGER_EVENT:Ljava/lang/String; = "surveyTriggerEvent"

.field public static final COLUMN_TARGET_AUDIENCES:Ljava/lang/String; = "targetAudiences"

.field public static final COLUMN_THANKS_LIST:Ljava/lang/String; = "thanks_list"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "survey_title"

.field public static final COLUMN_TOKEN:Ljava/lang/String; = "survey_token"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "survey_type"

.field public static final COLUMN_USER_EVENTS:Ljava/lang/String; = "userEvents"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS surveys_table ( survey_id INTEGER PRIMARY KEY,survey_type INTEGER,survey_title TEXT,survey_token TEXT,conditions_operator TEXT,answered INTEGER,dismissed_at INTEGER,shown_at INTEGER,isCancelled INTEGER,attemptCount INTEGER,eventIndex INTEGER,shouldShowAgain INTEGER,paused INTEGER,sessionCounter INTEGER,questions TEXT,thanks_list TEXT,targetAudiences TEXT,customAttributes TEXT,userEvents TEXT,surveyState TEXT,surveyTargeting TEXT,surveyTriggerEvent TEXT,isLocalized BOOLEAN,currentLocale TEXT,supportedLocales TEXT)"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS surveys_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "surveys_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
