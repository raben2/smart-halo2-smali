.class public final Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;
.super Ljava/lang/Object;
.source "AnalyticsAlarm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;",
        "",
        "()V",
        "ALARM_ARMED",
        "",
        "ALARM_CONFIG_CHANGED",
        "ALARM_CONFIG_TYPE",
        "ALARM_CONFIG_TYPE_SENSITIVITY",
        "ALARM_CONFIG_TYPE_SETTING",
        "ALARM_CONFIG_TYPE_TAPCODE",
        "ALARM_SOUNDED",
        "ALARM_SOUNDED_NUMBER",
        "getAlarmConfigEvent",
        "Lbike/smarthalo/app/analytics/AnalyticsEvent;",
        "alarmConfigType",
        "Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;",
        "getAlarmSoundedEvent",
        "triggerCount",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ALARM_ARMED:Ljava/lang/String; = "Alarm_Armed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ALARM_CONFIG_CHANGED:Ljava/lang/String; = "AlarmConfig_Changed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ALARM_CONFIG_TYPE:Ljava/lang/String; = "AlarmConfigType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ALARM_CONFIG_TYPE_SENSITIVITY:Ljava/lang/String; = "sensitivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ALARM_CONFIG_TYPE_SETTING:Ljava/lang/String; = "setting"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ALARM_CONFIG_TYPE_TAPCODE:Ljava/lang/String; = "tapcode"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ALARM_SOUNDED:Ljava/lang/String; = "Alarm_Sounded"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ALARM_SOUNDED_NUMBER:Ljava/lang/String; = "SoundedNum"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;

    invoke-direct {v0}, Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;-><init>()V

    sput-object v0, Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;->INSTANCE:Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAlarmConfigEvent(Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;
    .locals 2
    .param p0    # Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "alarmConfigType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "AlarmConfigType"

    .line 25
    invoke-virtual {p0}, Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p0, Lbike/smarthalo/app/analytics/AnalyticsEvent;

    const-string v1, "AlarmConfig_Changed"

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static final getAlarmSoundedEvent(I)Lbike/smarthalo/app/analytics/AnalyticsEvent;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SoundedNum"

    .line 32
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    new-instance p0, Lbike/smarthalo/app/analytics/AnalyticsEvent;

    const-string v1, "Alarm_Sounded"

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method
