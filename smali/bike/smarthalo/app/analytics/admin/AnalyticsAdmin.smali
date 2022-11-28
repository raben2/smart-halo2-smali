.class public final Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;
.super Ljava/lang/Object;
.source "AnalyticsAdmin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001b\u001a\u00020\u001cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;",
        "",
        "()V",
        "LOCATION_NOTIFICATION_SENT",
        "",
        "PERMISSION_BLUETOOTH",
        "PERMISSION_CALLS",
        "PERMISSION_LOCATION",
        "PERMISSION_NOTIFICATIONS",
        "PERMISSION_REFUSED",
        "PERMISSION_TYPE",
        "POWER_SAVING_NOTIFICATION_SENT",
        "SHOWCASE_VIEWED",
        "SHOWCASE_VIEWED_DURATION",
        "SHOWCASE_VIEWED_URL",
        "USER_FUNCTION_ACCESSED",
        "USER_FUNCTION_TYPE",
        "USER_FUNCTION_TYPE_LOGOUT",
        "getPermissionRefusedEvent",
        "Lbike/smarthalo/app/analytics/AnalyticsEvent;",
        "permissionType",
        "Lbike/smarthalo/app/analytics/admin/PermissionType;",
        "getShowCaseViewEvent",
        "duration",
        "",
        "url",
        "getUserFunctionAccessedEvent",
        "userFunctionType",
        "Lbike/smarthalo/app/analytics/admin/UserFunctionType;",
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
.field public static final INSTANCE:Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;

.field public static final LOCATION_NOTIFICATION_SENT:Ljava/lang/String; = "LocationNotification_Sent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PERMISSION_BLUETOOTH:Ljava/lang/String; = "Bluetooth"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PERMISSION_CALLS:Ljava/lang/String; = "Calls"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PERMISSION_LOCATION:Ljava/lang/String; = "Location"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PERMISSION_NOTIFICATIONS:Ljava/lang/String; = "Notifiations"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PERMISSION_REFUSED:Ljava/lang/String; = "Permission_Refused"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PERMISSION_TYPE:Ljava/lang/String; = "Permission"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POWER_SAVING_NOTIFICATION_SENT:Ljava/lang/String; = "PowerSavingNotification_Sent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOWCASE_VIEWED:Ljava/lang/String; = "Showcase_Viewed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOWCASE_VIEWED_DURATION:Ljava/lang/String; = "Duration"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHOWCASE_VIEWED_URL:Ljava/lang/String; = "ShowcaseUrl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_FUNCTION_ACCESSED:Ljava/lang/String; = "UserFunction_Accessed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_FUNCTION_TYPE:Ljava/lang/String; = "UserFunctionType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_FUNCTION_TYPE_LOGOUT:Ljava/lang/String; = "logout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;

    invoke-direct {v0}, Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;-><init>()V

    sput-object v0, Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;->INSTANCE:Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPermissionRefusedEvent(Lbike/smarthalo/app/analytics/admin/PermissionType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;
    .locals 2
    .param p0    # Lbike/smarthalo/app/analytics/admin/PermissionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "permissionType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Permission"

    .line 41
    invoke-virtual {p0}, Lbike/smarthalo/app/analytics/admin/PermissionType;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p0, Lbike/smarthalo/app/analytics/AnalyticsEvent;

    const-string v1, "Permission_Refused"

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static final getShowCaseViewEvent(JLjava/lang/String;)Lbike/smarthalo/app/analytics/AnalyticsEvent;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Duration"

    .line 48
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "ShowcaseUrl"

    .line 49
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance p0, Lbike/smarthalo/app/analytics/AnalyticsEvent;

    const-string p1, "Showcase_Viewed"

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static final getUserFunctionAccessedEvent(Lbike/smarthalo/app/analytics/admin/UserFunctionType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;
    .locals 2
    .param p0    # Lbike/smarthalo/app/analytics/admin/UserFunctionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "userFunctionType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UserFunctionType"

    .line 34
    invoke-virtual {p0}, Lbike/smarthalo/app/analytics/admin/UserFunctionType;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p0, Lbike/smarthalo/app/analytics/AnalyticsEvent;

    const-string v1, "UserFunction_Accessed"

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method
