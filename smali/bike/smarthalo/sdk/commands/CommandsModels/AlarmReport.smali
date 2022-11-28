.class public Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;
.super Ljava/lang/Object;
.source "AlarmReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;
    }
.end annotation


# instance fields
.field public hasValue:Z

.field public isArmed:Z

.field public isVigilant:Z

.field public triggerCount:I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;->hasValue:Z

    .line 16
    array-length v1, p1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;->hasValue:Z

    .line 18
    aget-byte v2, p1, v1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;->isArmed:Z

    const/4 v2, 0x2

    .line 19
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;->triggerCount:I

    const/4 v2, 0x3

    .line 20
    aget-byte p1, p1, v2

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;->isVigilant:Z

    :cond_2
    return-void
.end method
