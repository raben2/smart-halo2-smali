.class public Lbike/smarthalo/app/helpers/SHAlarmHelper;
.super Ljava/lang/Object;
.source "SHAlarmHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarmStateChanged(ZZZZ)Lbike/smarthalo/app/models/AlarmState;
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 15
    sget-object p0, Lbike/smarthalo/app/models/AlarmState;->Armed:Lbike/smarthalo/app/models/AlarmState;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 17
    sget-object p0, Lbike/smarthalo/app/models/AlarmState;->Disarmed:Lbike/smarthalo/app/models/AlarmState;

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 19
    sget-object p0, Lbike/smarthalo/app/models/AlarmState;->Off:Lbike/smarthalo/app/models/AlarmState;

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 21
    sget-object p0, Lbike/smarthalo/app/models/AlarmState;->WillArm:Lbike/smarthalo/app/models/AlarmState;

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 23
    sget-object p0, Lbike/smarthalo/app/models/AlarmState;->WillDisarm:Lbike/smarthalo/app/models/AlarmState;

    goto :goto_0

    .line 25
    :cond_4
    sget-object p0, Lbike/smarthalo/app/models/AlarmState;->Invalid:Lbike/smarthalo/app/models/AlarmState;

    .line 29
    :goto_0
    sget-object p1, Lbike/smarthalo/app/models/AlarmState;->Armed:Lbike/smarthalo/app/models/AlarmState;

    if-ne p0, p1, :cond_5

    if-eqz p3, :cond_5

    .line 30
    sget-object p0, Lbike/smarthalo/app/models/AlarmState;->ArmedTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

    goto :goto_1

    .line 31
    :cond_5
    sget-object p1, Lbike/smarthalo/app/models/AlarmState;->WillArm:Lbike/smarthalo/app/models/AlarmState;

    if-ne p0, p1, :cond_6

    if-eqz p3, :cond_6

    .line 32
    sget-object p0, Lbike/smarthalo/app/models/AlarmState;->WillArmTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

    goto :goto_1

    .line 33
    :cond_6
    sget-object p1, Lbike/smarthalo/app/models/AlarmState;->WillDisarm:Lbike/smarthalo/app/models/AlarmState;

    if-ne p0, p1, :cond_7

    if-eqz p3, :cond_7

    .line 34
    sget-object p0, Lbike/smarthalo/app/models/AlarmState;->WillDisarmTapcodeChanged:Lbike/smarthalo/app/models/AlarmState;

    :cond_7
    :goto_1
    return-object p0
.end method
