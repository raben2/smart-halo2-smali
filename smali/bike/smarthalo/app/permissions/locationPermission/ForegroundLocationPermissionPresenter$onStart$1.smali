.class final Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter$onStart$1;
.super Ljava/lang/Object;
.source "ForegroundLocationPermissionPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lbike/smarthalo/app/permissions/PermissionResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "permissionResult",
        "Lbike/smarthalo/app/permissions/PermissionResult;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter$onStart$1;->this$0:Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lbike/smarthalo/app/permissions/PermissionResult;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Lbike/smarthalo/app/permissions/PermissionResult;->getPermissionRequestCode()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 39
    invoke-virtual {p1}, Lbike/smarthalo/app/permissions/PermissionResult;->getPermissionSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 40
    iget-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter$onStart$1;->this$0:Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;

    invoke-virtual {p1}, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;->getAnalyticsManager()Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/analytics/admin/PermissionType;->Bluetooth:Lbike/smarthalo/app/analytics/admin/PermissionType;

    invoke-static {v0}, Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;->getPermissionRefusedEvent(Lbike/smarthalo/app/analytics/admin/PermissionType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 43
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter$onStart$1;->this$0:Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;->access$getPermissionsCoordinatorContract$p(Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;)Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->showNext()V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lbike/smarthalo/app/permissions/PermissionResult;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter$onStart$1;->accept(Lbike/smarthalo/app/permissions/PermissionResult;)V

    return-void
.end method
