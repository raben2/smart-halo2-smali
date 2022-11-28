.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserAttributesEntry;
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
    name = "UserAttributesEntry"
.end annotation


# static fields
.field public static final ALTER_TABLE_UPGRADE_14:Ljava/lang/String;

.field public static final COLUMN_IS_ANONYMOUS:Ljava/lang/String; = "is_anonymous"

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_UUID:Ljava/lang/String; = "uuid"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user_attributes_table ( uuid TEXT,key TEXT,value TEXT,type INTEGER,is_anonymous BOOLEAN,CONSTRAINT uuid     FOREIGN KEY (uuid)     REFERENCES user (uuid)     ON DELETE CASCADE, PRIMARY KEY (uuid,key ))"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS user_attributes_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "user_attributes_table"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "user_attributes_table"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "type"

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

    sput-object v0, Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserAttributesEntry;->ALTER_TABLE_UPGRADE_14:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
