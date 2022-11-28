.class public final Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;
.super Ljava/lang/Object;
.source "BackgroundLocationPermissionPresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenterContract;
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\"B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001fH\u0016J\u0008\u0010!\u001a\u00020\u001fH\u0016R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006#"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;",
        "Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenterContract;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "permissionsCoordinator",
        "Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;",
        "permissionResultObservable",
        "Lio/reactivex/Flowable;",
        "Lbike/smarthalo/app/permissions/PermissionResult;",
        "isOnboarding",
        "",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lio/reactivex/Flowable;ZLbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "getAnalyticsManager",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "()Z",
        "permissionRequestState",
        "Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;",
        "getPermissionRequestState",
        "()Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;",
        "setPermissionRequestState",
        "(Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;)V",
        "getPermissionResultObservable",
        "()Lio/reactivex/Flowable;",
        "subscription",
        "Lio/reactivex/disposables/Disposable;",
        "getSubscription",
        "()Lio/reactivex/disposables/Disposable;",
        "setSubscription",
        "(Lio/reactivex/disposables/Disposable;)V",
        "onStart",
        "",
        "onStop",
        "requestPermission",
        "PermissionRequestState",
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

.field private final isOnboarding:Z

.field private permissionRequestState:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final permissionResultObservable:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/permissions/PermissionResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

.field private subscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lio/reactivex/Flowable;ZLbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/Flowable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/permissions/PermissionResult;",
            ">;Z",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ")V"
        }
    .end annotation

    const-string v0, "permissionsCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionResultObservable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    iput-object p2, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionResultObservable:Lio/reactivex/Flowable;

    iput-boolean p3, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->isOnboarding:Z

    iput-object p4, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 25
    sget-object p1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->NotRequested:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    iput-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionRequestState:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    return-void
.end method

.method public static final synthetic access$getPermissionsCoordinator$p(Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;)Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;
    .locals 0

    .line 18
    iget-object p0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    return-object p0
.end method


# virtual methods
.method public final getAnalyticsManager()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object v0
.end method

.method public final getPermissionRequestState()Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionRequestState:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    return-object v0
.end method

.method public final getPermissionResultObservable()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/permissions/PermissionResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionResultObservable:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public final getSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->subscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final isOnboarding()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->isOnboarding:Z

    return v0
.end method

.method public onStart()V
    .locals 2

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionRequestState:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    sget-object v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->RequestedSystemPage:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->showNext()V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->subscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 43
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionResultObservable:Lio/reactivex/Flowable;

    new-instance v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$onStart$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$onStart$1;-><init>(Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->subscription:Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->subscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionRequestState:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    sget-object v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->RequestedDialog:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    if-ne v0, v1, :cond_1

    .line 62
    sget-object v0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->RequestedSystemPage:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    iput-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionRequestState:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    :cond_1
    return-void
.end method

.method public requestPermission()V
    .locals 1

    .line 34
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionsCoordinator:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->requestBackgroundLocationPermission()V

    .line 35
    sget-object v0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->RequestedDialog:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    iput-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionRequestState:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    return-void
.end method

.method public final setPermissionRequestState(Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->permissionRequestState:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    return-void
.end method

.method public final setSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 24
    iput-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;->subscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method
