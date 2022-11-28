.class public Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract;
.super Ljava/lang/Object;
.source "InstabugDbContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$DanglingAPMNetworkLogEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$DanglingExecutionTracesAttributesEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$DanglingExecutionTracesEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$APMSessionMetaDataEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$APMSessionEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$APMUiTraceEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$APMNetworkLogEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AppLaunchAttributesEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AppLaunchEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$ExecutionTracesAttributesEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$ExecutionTracesEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserEntity;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserAttributesEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AnnouncementAssetsEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AnnouncementEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserInteractions;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$SurveyEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$BugEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$FeatureRequestEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$SessionEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AnrEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$CrashEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$AttachmentEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$SDKApiEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$SDKEventEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$UserEventEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$InstabugLogEntry;,
        Lcom/instabug/library/internal/storage/cache/db/InstabugDbContract$NetworkLogEntry;
    }
.end annotation


# static fields
.field public static final BOOLEAN_TYPE:Ljava/lang/String; = " BOOLEAN"

.field public static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final CONSTRAINT:Ljava/lang/String; = " CONSTRAINT "

.field private static final FOREIGN_KEY:Ljava/lang/String; = " FOREIGN KEY "

.field public static final INTEGER_TYPE:Ljava/lang/String; = " INTEGER"

.field public static final TEXT_TYPE:Ljava/lang/String; = " TEXT"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
