.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserEntity;
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
    name = "UserEntity"
.end annotation


# static fields
.field public static final ALTER_TABLE_UPGRADE_12:Ljava/lang/String;

.field public static final COLUMN_LAST_SEEN:Ljava/lang/String; = "last_seen"

.field public static final COLUMN_SESSION_COUNT:Ljava/lang/String; = "session_count"

.field public static final COLUMN_UUID:Ljava/lang/String; = "uuid"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user ( uuid TEXT PRIMARY KEY,last_seen INTEGER,session_count INTEGER )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS user"

.field public static final TABLE_NAME:Ljava/lang/String; = "user"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "user"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "last_seen"

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

    sput-object v0, Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserEntity;->ALTER_TABLE_UPGRADE_12:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
