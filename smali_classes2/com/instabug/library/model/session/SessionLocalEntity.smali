.class public Lcom/instabug/library/model/session/SessionLocalEntity;
.super Ljava/lang/Object;
.source "SessionLocalEntity.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/model/session/SessionLocalEntity$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionLocalEntity"


# instance fields
.field private final appToken:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private final crashReportingEnabled:Z

.field private final customAttributes:Ljava/lang/String;

.field private final customAttributesKeys:Ljava/lang/String;

.field private final device:Ljava/lang/String;

.field private final duration:J

.field private final id:Ljava/lang/String;

.field private final os:Ljava/lang/String;

.field private final sdkVersion:Ljava/lang/String;

.field private final startedAt:J

.field private final syncStatus:I

.field private final userEmail:Ljava/lang/String;

.field private final userEvents:Ljava/lang/String;

.field private final userEventsKeys:Ljava/lang/String;

.field private final userName:Ljava/lang/String;

.field private final usersPageEnabled:Z

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->id:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->os:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->device:Ljava/lang/String;

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->duration:J

    move-wide v1, p6

    .line 6
    iput-wide v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->startedAt:J

    move-object v1, p8

    .line 7
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->userName:Ljava/lang/String;

    move-object v1, p9

    .line 8
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->userEmail:Ljava/lang/String;

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->sdkVersion:Ljava/lang/String;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->appVersion:Ljava/lang/String;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->userEvents:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->customAttributes:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->userEventsKeys:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->customAttributesKeys:Ljava/lang/String;

    move/from16 v1, p16

    .line 15
    iput-boolean v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->crashReportingEnabled:Z

    move/from16 v1, p17

    .line 16
    iput v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->syncStatus:I

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->uuid:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->appToken:Ljava/lang/String;

    move/from16 v1, p20

    .line 19
    iput-boolean v1, v0, Lcom/instabug/library/model/session/SessionLocalEntity;->usersPageEnabled:Z

    return-void
.end method


# virtual methods
.method public getAppToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->appToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAttributes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->customAttributes:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAttributesKeys()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->customAttributesKeys:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->duration:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimestampMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->startedAt:J

    return-wide v0
.end method

.method public getSyncStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->syncStatus:I

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->userEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEvents()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->userEvents:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEventsKeys()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->userEventsKeys:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isCrashReportingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->crashReportingEnabled:Z

    return v0
.end method

.method public isUsersPageEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/model/session/SessionLocalEntity;->usersPageEnabled:Z

    return v0
.end method
