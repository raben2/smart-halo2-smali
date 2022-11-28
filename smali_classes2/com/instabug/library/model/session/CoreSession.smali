.class public Lcom/instabug/library/model/session/CoreSession;
.super Ljava/lang/Object;
.source "CoreSession.java"

# interfaces
.implements Lcom/instabug/library/model/common/Session;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final appToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "application_token"
    .end annotation
.end field

.field private final appVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "app_version"
    .end annotation
.end field

.field private final crashReportingEnabled:Z
    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "crash_reporting_enabled"
    .end annotation
.end field

.field private final customAttributes:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        alternate = "custom_attribute_keys"
        name = "custom_attributes"
    .end annotation
.end field

.field private final device:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "device"
    .end annotation
.end field

.field private final duration:J
    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "duration"
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final os:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "os"
    .end annotation
.end field

.field private final sdkVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "sdk_version"
    .end annotation
.end field

.field private final startNanoTime:J

.field private final startTimestampMicros:J
    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "started_at"
    .end annotation
.end field

.field private final syncStatus:I

.field private final userEmail:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "email"
    .end annotation
.end field

.field private final userEvents:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        alternate = "user_event_keys"
        name = "user_events"
    .end annotation
.end field

.field private final userName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "name"
    .end annotation
.end field

.field private final usersPageEnabled:Z

.field private final uuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/b;
    .end annotation

    .annotation runtime Lcom/instabug/library/l/a/c;
        name = "uuid"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 21
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "null"

    const-string v13, "null"

    const-string v18, "null"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1
    invoke-direct/range {v0 .. v20}, Lcom/instabug/library/model/session/CoreSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 4
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->id:Ljava/lang/String;

    move-object v1, p2

    .line 5
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->os:Ljava/lang/String;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->device:Ljava/lang/String;

    move-wide v1, p4

    .line 7
    iput-wide v1, v0, Lcom/instabug/library/model/session/CoreSession;->duration:J

    move-wide v1, p6

    .line 8
    iput-wide v1, v0, Lcom/instabug/library/model/session/CoreSession;->startTimestampMicros:J

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->userName:Ljava/lang/String;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->userEmail:Ljava/lang/String;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->sdkVersion:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->appVersion:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->userEvents:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->customAttributes:Ljava/lang/String;

    move/from16 v1, p16

    .line 15
    iput-boolean v1, v0, Lcom/instabug/library/model/session/CoreSession;->crashReportingEnabled:Z

    move/from16 v1, p17

    .line 16
    iput v1, v0, Lcom/instabug/library/model/session/CoreSession;->syncStatus:I

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->uuid:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lcom/instabug/library/model/session/CoreSession;->appToken:Ljava/lang/String;

    move/from16 v1, p20

    .line 19
    iput-boolean v1, v0, Lcom/instabug/library/model/session/CoreSession;->usersPageEnabled:Z

    move-wide v1, p8

    .line 20
    iput-wide v1, v0, Lcom/instabug/library/model/session/CoreSession;->startNanoTime:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 21
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v18, p3

    move-object/from16 v13, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 2
    invoke-direct/range {v0 .. v20}, Lcom/instabug/library/model/session/CoreSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getAppToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->appToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAttributes()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->customAttributes:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/session/CoreSession;->duration:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStartNanoTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/session/CoreSession;->startNanoTime:J

    return-wide v0
.end method

.method public getStartTimestampMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/session/CoreSession;->startTimestampMicros:J

    return-wide v0
.end method

.method public getSyncStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/model/session/CoreSession;->syncStatus:I

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEvents()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->userEvents:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/CoreSession;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isCrashReportingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/model/session/CoreSession;->crashReportingEnabled:Z

    return v0
.end method

.method public isUsersPageEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/model/session/CoreSession;->usersPageEnabled:Z

    return v0
.end method
