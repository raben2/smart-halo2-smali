.class public final Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;
.super Ljava/lang/Object;
.source "NotificationPermissionPresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;",
        "Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "permissionsCoordinator",
        "Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "getAnalyticsManager",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "requestPermission",
        "",
        "skip",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permissionsCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    iput-object p2, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static final synthetic access$getPermissionsCoordinator$p(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;)Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;
    .locals 0

    .line 18
    iget-object p0, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    return-object p0
.end method


# virtual methods
.method public final getAnalyticsManager()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object v0
.end method

.method public onStart()V
    .locals 0

    .line 18
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStart(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 18
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStop(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public requestPermission()V
    .locals 1

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->hasAcceptedNotificationPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->showNext()V

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->requestNotificationPermission()V

    :goto_0
    return-void
.end method

.method public skip()V
    .locals 6

    .line 32
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    .line 36
    new-instance v1, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter$skip$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter$skip$1;-><init>(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 40
    new-instance v1, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter$skip$2;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter$skip$2;-><init>(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const v1, 0x7f110328

    const v2, 0x7f110329

    const v3, 0x7f110327

    .line 32
    invoke-interface/range {v0 .. v5}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->showConfirmation(IIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
