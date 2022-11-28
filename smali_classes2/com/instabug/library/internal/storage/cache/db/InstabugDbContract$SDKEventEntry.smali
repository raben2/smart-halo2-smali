.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$SDKEventEntry;
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
    name = "SDKEventEntry"
.end annotation


# static fields
.field public static final COLUMN_EVENT_IDENTIFIER:Ljava/lang/String; = "event_identifier"

.field public static final COLUMN_EXTRA_ATTRIBUTES:Ljava/lang/String; = "extra_attributes"

.field public static final COLUMN_TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field public static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sdk_event ( event_identifier TEXT,time_stamp TEXT,extra_attributes TEXT )"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS sdk_event"

.field public static final TABLE_NAME:Ljava/lang/String; = "sdk_event"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
