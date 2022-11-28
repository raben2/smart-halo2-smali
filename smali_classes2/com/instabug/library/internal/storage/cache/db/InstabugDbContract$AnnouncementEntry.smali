.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AnnouncementEntry;
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
    name = "AnnouncementEntry"
.end annotation


# static fields
.field static final ALTER_TABLE_UPGRADE_16:Ljava/lang/String;

.field public static final COLUMN_ANNOUNCEMENT:Ljava/lang/String; = "announcement"

.field public static final COLUMN_ANNOUNCE_CURRENT_LOCALE:Ljava/lang/String; = "currentLocale"

.field public static final COLUMN_ANNOUNCE_EVENTS:Ljava/lang/String; = "surveyEvents"

.field public static final COLUMN_ANNOUNCE_IS_LOCALIZED:Ljava/lang/String; = "isLocalized"

.field public static final COLUMN_ANNOUNCE_LOCALES:Ljava/lang/String; = "supportedLocales"

.field public static final COLUMN_ANNOUNCE_STATE:Ljava/lang/String; = "surveyState"

.field public static final COLUMN_ANSWERED:Ljava/lang/String; = "answered"

.field public static final COLUMN_ASSETS_STATUS:Ljava/lang/String; = "announceAssetsStatus"

.field public static final COLUMN_CONDITIONS_OPERATOR:Ljava/lang/String; = "conditions_operator"

.field public static final COLUMN_DISMISSED_AT:Ljava/lang/String; = "dismissed_at"

.field public static final COLUMN_EVENT_INDEX:Ljava/lang/String; = "eventIndex"

.field public static final COLUMN_ID:Ljava/lang/String; = "announcement_id"

.field public static final COLUMN_IS_CANCELLED:Ljava/lang/String; = "isCancelled"

.field public static final COLUMN_IS_SHOWN:Ljava/lang/String; = "isAlreadyShown"

.field public static final COLUMN_PAUSED:Ljava/lang/String; = "paused"

.field public static final COLUMN_SESSIONS_COUNT:Ljava/lang/String; = "sessionCounter"

.field public static final COLUMN_SHOULD_SHOW_AGAIN:Ljava/lang/String; = "shouldShowAgain"

.field public static final COLUMN_SHOWN_AT:Ljava/lang/String; = "shown_at"

.field public static final COLUMN_TARGET:Ljava/lang/String; = "targetAudiences"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "announcement_title"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "announcement_type"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS announcement_table ( announcement_id INTEGER PRIMARY KEY,announcement_title TEXT,announcement_type INTEGER,conditions_operator TEXT,answered INTEGER,dismissed_at INTEGER,shown_at INTEGER,isCancelled INTEGER,eventIndex INTEGER,shouldShowAgain INTEGER,paused INTEGER,sessionCounter INTEGER,announcement TEXT,isAlreadyShown INTEGER,targetAudiences TEXT,surveyEvents TEXT,announceAssetsStatus INTEGER,surveyState TEXT,isLocalized BOOLEAN,supportedLocales TEXT,currentLocale TEXT)"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS announcement_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "announcement_table"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "announcement_table"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "shown_at"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, " INTEGER"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "0"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE %s ADD COLUMN %s %s DEFAULT %s"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AnnouncementEntry;->ALTER_TABLE_UPGRADE_16:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
