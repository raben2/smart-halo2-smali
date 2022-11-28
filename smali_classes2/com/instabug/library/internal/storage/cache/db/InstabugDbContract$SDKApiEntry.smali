.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$SDKApiEntry;
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
    name = "SDKApiEntry"
.end annotation


# static fields
.field public static final COLUMN_API_NAME:Ljava/lang/String; = "api_name"

.field public static final COLUMN_COUNT:Ljava/lang/String; = "count"

.field public static final COLUMN_IS_DEPRECATED:Ljava/lang/String; = "is_deprecated"

.field public static final COLUMN_PARAMETERS:Ljava/lang/String; = "parameters"

.field public static final COLUMN_TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sdk_api ( time_stamp TEXT, api_name TEXT, count INTEGER, is_deprecated TEXT, parameters TEXT )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS sdk_api"

.field public static final TABLE_NAME:Ljava/lang/String; = "sdk_api"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
