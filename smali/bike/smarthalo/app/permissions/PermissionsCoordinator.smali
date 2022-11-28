.class public final Lbike/smarthalo/app/permissions/PermissionsCoordinator;
.super Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;
.source "PermissionsCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/permissions/PermissionsCoordinator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 ;2\u00020\u00012\u00020\u0002:\u0001;BI\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010 \u001a\u00020!H\u0002J\u0008\u0010\"\u001a\u00020\u000eH\u0016J\u0008\u0010#\u001a\u00020\u000eH\u0016J\u0008\u0010$\u001a\u00020\u000eH\u0016J\u0008\u0010%\u001a\u00020\u000eH\u0016J\u0008\u0010&\u001a\u00020\u000eH\u0016J\u0008\u0010\'\u001a\u00020\u000eH\u0016J\u0016\u0010(\u001a\u00020!2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020!0*H\u0016J\u0008\u0010+\u001a\u00020!H\u0002J\u0008\u0010,\u001a\u00020!H\u0016J\u0008\u0010-\u001a\u00020!H\u0016J\u0008\u0010.\u001a\u00020!H\u0016J\u0008\u0010/\u001a\u00020!H\u0016J\u0008\u00100\u001a\u00020!H\u0016J<\u00101\u001a\u00020!2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u0002032\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020!0*2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020!0*H\u0016J\u0008\u00108\u001a\u00020!H\u0016J\u0008\u00109\u001a\u00020!H\u0016J\u0008\u0010:\u001a\u0004\u0018\u00010\u001dR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006<"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/PermissionsCoordinator;",
        "Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;",
        "context",
        "Landroid/content/Context;",
        "flowCompletionContract",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "viewGenerator",
        "Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;",
        "permissionContract",
        "Lbike/smarthalo/app/permissions/PermissionActivityContract;",
        "viewProgressListContract",
        "Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;",
        "allowBackButton",
        "",
        "isOnboarding",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/permissions/PermissionActivityContract;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;ZZLbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "getAllowBackButton",
        "()Z",
        "parentActivity",
        "Landroid/content/Intent;",
        "getPermissionContract",
        "()Lbike/smarthalo/app/permissions/PermissionActivityContract;",
        "permissionSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "permissionsFlow",
        "Ljava/util/Queue;",
        "",
        "getViewProgressListContract",
        "()Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;",
        "clearSubscriptions",
        "",
        "hasAcceptedBackgroundLocationPermissions",
        "hasAcceptedLocationPermission",
        "hasAcceptedNotificationPermission",
        "hasAcceptedPhonePermission",
        "hasAcceptedStoragePermission",
        "hasCompletedLocationIntro",
        "navigateBack",
        "onNavigationCompleted",
        "Lkotlin/Function0;",
        "observeHasAcceptedBackgroundPermissions",
        "requestBackgroundLocationPermission",
        "requestLocationPermission",
        "requestNotificationPermission",
        "requestPhonePermission",
        "requestStoragePermission",
        "showConfirmation",
        "description",
        "",
        "affirmative",
        "negative",
        "onConfirm",
        "onCancel",
        "showNext",
        "showSystemAppSettings",
        "start",
        "Companion",
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
.field public static final Companion:Lbike/smarthalo/app/permissions/PermissionsCoordinator$Companion;

# The value of this static final field might be set in the static constructor
.field private static final NOTIFICATION_PERMISSION_SYSTEM_PAGE:Ljava/lang/String; = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final allowBackButton:Z

.field private final isOnboarding:Z

.field private final parentActivity:Landroid/content/Intent;

.field private final permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private permissionSubscription:Lio/reactivex/disposables/Disposable;

.field private final permissionsFlow:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/permissions/PermissionsCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/permissions/PermissionsCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->Companion:Lbike/smarthalo/app/permissions/PermissionsCoordinator$Companion;

    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    .line 46
    sput-object v0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->NOTIFICATION_PERMISSION_SYSTEM_PAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/permissions/PermissionActivityContract;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;ZZLbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/permissions/PermissionActivityContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flowCompletionContract"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewGenerator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionContract"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;)V

    iput-object p4, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    iput-object p5, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    iput-boolean p6, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->allowBackButton:Z

    iput-boolean p7, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->isOnboarding:Z

    .line 49
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    check-cast p2, Ljava/util/Queue;

    iput-object p2, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    .line 54
    iget-boolean p2, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->isOnboarding:Z

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-class p4, Lbike/smarthalo/app/onboarding/OnboardingActivity;

    invoke-direct {p2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class p4, Lbike/smarthalo/app/permissions/PermissionsActivity;

    invoke-direct {p2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iput-object p2, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->parentActivity:Landroid/content/Intent;

    .line 56
    new-instance p1, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionPresenter;

    move-object p2, p0

    check-cast p2, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    iget-object p4, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    invoke-interface {p4}, Lbike/smarthalo/app/permissions/PermissionActivityContract;->getPermissionResultObservable()Lio/reactivex/Flowable;

    move-result-object p4

    invoke-direct {p1, p2, p4, p8}, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionPresenter;-><init>(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lio/reactivex/Flowable;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 57
    new-instance p4, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionView;

    move-object p5, p1

    check-cast p5, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionPresenterContract;

    const p6, 0x7f0d0100

    invoke-interface {p3, p6}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object p6

    invoke-direct {p4, p5, p6}, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionView;-><init>(Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionPresenterContract;Landroid/view/View;)V

    .line 58
    new-instance p5, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    move-object p6, p4

    check-cast p6, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {p5, p1, p6}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 60
    new-instance p1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;

    iget-object p6, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    invoke-interface {p6}, Lbike/smarthalo/app/permissions/PermissionActivityContract;->getPermissionResultObservable()Lio/reactivex/Flowable;

    move-result-object p6

    iget-boolean p7, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->isOnboarding:Z

    invoke-direct {p1, p2, p6, p7, p8}, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;-><init>(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lio/reactivex/Flowable;ZLbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 61
    new-instance p6, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionView;

    move-object p7, p1

    check-cast p7, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenterContract;

    const v0, 0x7f0d0101

    invoke-interface {p3, v0}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p6, p7, v0}, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionView;-><init>(Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenterContract;Landroid/view/View;)V

    .line 62
    new-instance p7, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p6, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {p7, p1, p6}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 64
    new-instance p1, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;

    iget-object p6, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    invoke-interface {p6}, Lbike/smarthalo/app/permissions/PermissionActivityContract;->getPermissionResultObservable()Lio/reactivex/Flowable;

    move-result-object p6

    invoke-direct {p1, p2, p6, p8}, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenter;-><init>(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lio/reactivex/Flowable;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 65
    new-instance p6, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionView;

    move-object v0, p1

    check-cast v0, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenterContract;

    const v1, 0x7f0d0102

    invoke-interface {p3, v1}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p6, v0, v1}, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionView;-><init>(Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionPresenterContract;Landroid/view/View;)V

    .line 66
    new-instance v0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p6, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v0, p1, p6}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 68
    new-instance p1, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;

    iget-object p6, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    invoke-interface {p6}, Lbike/smarthalo/app/permissions/PermissionActivityContract;->getPermissionResultObservable()Lio/reactivex/Flowable;

    move-result-object p6

    invoke-direct {p1, p2, p6}, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;-><init>(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lio/reactivex/Flowable;)V

    .line 69
    new-instance p6, Lbike/smarthalo/app/permissions/storage/StoragePermissionView;

    move-object v1, p1

    check-cast v1, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenterContract;

    const v2, 0x7f0d0105

    invoke-interface {p3, v2}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p6, v1, v2}, Lbike/smarthalo/app/permissions/storage/StoragePermissionView;-><init>(Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenterContract;Landroid/view/View;)V

    .line 70
    new-instance v1, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p6, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v1, p1, p6}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 72
    new-instance p1, Lbike/smarthalo/app/permissions/locationPermission/PhonePermissionPresenter;

    iget-object p6, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    invoke-interface {p6}, Lbike/smarthalo/app/permissions/PermissionActivityContract;->getPermissionResultObservable()Lio/reactivex/Flowable;

    move-result-object p6

    invoke-direct {p1, p2, p6, p8}, Lbike/smarthalo/app/permissions/locationPermission/PhonePermissionPresenter;-><init>(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lio/reactivex/Flowable;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 73
    new-instance p6, Lbike/smarthalo/app/permissions/locationPermission/PhonePermissionView;

    move-object v2, p1

    check-cast v2, Lbike/smarthalo/app/permissions/locationPermission/PhonePermissionPresenterContract;

    const v3, 0x7f0d0104

    invoke-interface {p3, v3}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p6, v2, v3}, Lbike/smarthalo/app/permissions/locationPermission/PhonePermissionView;-><init>(Lbike/smarthalo/app/permissions/locationPermission/PhonePermissionPresenterContract;Landroid/view/View;)V

    .line 74
    new-instance v2, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p6, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v2, p1, p6}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 76
    new-instance p1, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;

    invoke-direct {p1, p2, p8}, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenter;-><init>(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 77
    new-instance p2, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;

    move-object p6, p1

    check-cast p6, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;

    const p8, 0x7f0d0103

    invoke-interface {p3, p8}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->addView(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p2, p6, p3}, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;-><init>(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;Landroid/view/View;)V

    .line 78
    new-instance p3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    check-cast p1, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    check-cast p2, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {p3, p1, p2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 81
    invoke-virtual {p4}, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionView;->getTag()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    new-array p2, p2, [Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    const/4 p4, 0x0

    .line 82
    check-cast p5, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    aput-object p5, p2, p4

    const/4 p4, 0x1

    .line 83
    check-cast v0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    aput-object v0, p2, p4

    const/4 p4, 0x2

    .line 84
    check-cast p7, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    aput-object p7, p2, p4

    const/4 p4, 0x3

    .line 85
    check-cast v1, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    aput-object v1, p2, p4

    const/4 p4, 0x4

    .line 86
    check-cast v2, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    aput-object v2, p2, p4

    const/4 p4, 0x5

    .line 87
    check-cast p3, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    aput-object p3, p2, p4

    .line 80
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->injectItems(Ljava/lang/String;[Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/permissions/PermissionActivityContract;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;ZZLbike/smarthalo/app/analytics/AnalyticsContract;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move/from16 v7, p6

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 40
    invoke-direct/range {v1 .. v9}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;Lbike/smarthalo/app/permissions/PermissionActivityContract;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;ZZLbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method

.method public static final synthetic access$clearSubscriptions(Lbike/smarthalo/app/permissions/PermissionsCoordinator;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->clearSubscriptions()V

    return-void
.end method

.method public static final synthetic access$getNOTIFICATION_PERMISSION_SYSTEM_PAGE$cp()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->NOTIFICATION_PERMISSION_SYSTEM_PAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getParentActivity$p(Lbike/smarthalo/app/permissions/PermissionsCoordinator;)Landroid/content/Intent;
    .locals 0

    .line 35
    iget-object p0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->parentActivity:Landroid/content/Intent;

    return-object p0
.end method

.method private final clearSubscriptions()V
    .locals 1

    .line 121
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final observeHasAcceptedBackgroundPermissions()V
    .locals 9

    .line 160
    invoke-direct {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->clearSubscriptions()V

    .line 162
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-static/range {v0 .. v8}, Lio/reactivex/Flowable;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 163
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 164
    new-instance v1, Lbike/smarthalo/app/permissions/PermissionsCoordinator$observeHasAcceptedBackgroundPermissions$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator$observeHasAcceptedBackgroundPermissions$1;-><init>(Lbike/smarthalo/app/permissions/PermissionsCoordinator;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final getAllowBackButton()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->allowBackButton:Z

    return v0
.end method

.method public final getPermissionContract()Lbike/smarthalo/app/permissions/PermissionActivityContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    return-object v0
.end method

.method public final getViewProgressListContract()Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    return-object v0
.end method

.method public hasAcceptedBackgroundLocationPermissions()Z
    .locals 2

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasAcceptedLocationPermission()Z
    .locals 2

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_2

    .line 217
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAcceptedNotificationPermission()Z
    .locals 1

    .line 226
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->hasAcceptedNotificationsPermissions(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public hasAcceptedPhonePermission()Z
    .locals 2

    .line 222
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->CALLS_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasAcceptedStoragePermission()Z
    .locals 2

    .line 230
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/SHSdkHelpers;->storagePermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCompletedLocationIntro()Z
    .locals 2

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->hasAcceptedLocationPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isOnboarding()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->isOnboarding:Z

    return v0
.end method

.method public navigateBack(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onNavigationCompleted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-boolean p1, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->allowBackButton:Z

    if-eqz p1, :cond_0

    .line 143
    invoke-direct {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->clearSubscriptions()V

    .line 144
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getFlowCompletionContract()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;->onBackwardFinish()V

    :cond_0
    return-void
.end method

.method public requestBackgroundLocationPermission()V
    .locals 3

    .line 173
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 175
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    .line 173
    invoke-interface {v0, v2, v1}, Lbike/smarthalo/app/permissions/PermissionActivityContract;->requestPermissions(I[Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->observeHasAcceptedBackgroundPermissions()V

    return-void
.end method

.method public requestLocationPermission()V
    .locals 4

    .line 149
    sget-object v0, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->blePermissions:[Ljava/lang/String;

    .line 150
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 151
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 153
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    const/16 v2, 0x63

    const-string v3, "permissions"

    .line 155
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 153
    invoke-interface {v1, v2, v0}, Lbike/smarthalo/app/permissions/PermissionActivityContract;->requestPermissions(I[Ljava/lang/String;)V

    return-void
.end method

.method public requestNotificationPermission()V
    .locals 12

    .line 181
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->NOTIFICATION_PERMISSION_SYSTEM_PAGE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-direct {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->clearSubscriptions()V

    .line 185
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3c

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1f4

    invoke-static/range {v3 .. v11}, Lio/reactivex/Flowable;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 186
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 187
    new-instance v1, Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator$requestNotificationPermission$1;-><init>(Lbike/smarthalo/app/permissions/PermissionsCoordinator;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public requestPhonePermission()V
    .locals 3

    .line 197
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    .line 199
    sget-object v1, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->CALLS_PERMISSIONS:[Ljava/lang/String;

    const-string v2, "SHPermissionsHelper.CALLS_PERMISSIONS"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x7c

    .line 197
    invoke-interface {v0, v2, v1}, Lbike/smarthalo/app/permissions/PermissionActivityContract;->requestPermissions(I[Ljava/lang/String;)V

    return-void
.end method

.method public requestStoragePermission()V
    .locals 3

    .line 204
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionContract:Lbike/smarthalo/app/permissions/PermissionActivityContract;

    .line 206
    sget-object v1, Lbike/smarthalo/sdk/SHSdkHelpers;->storagePermissions:[Ljava/lang/String;

    const-string v2, "SHSdkHelpers.storagePermissions"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0xaf

    .line 204
    invoke-interface {v0, v2, v1}, Lbike/smarthalo/app/permissions/PermissionActivityContract;->requestPermissions(I[Ljava/lang/String;)V

    return-void
.end method

.method public showConfirmation(IIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onConfirm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 238
    invoke-static/range {v1 .. v6}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public showNext()V
    .locals 3

    .line 125
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->clearSubscriptions()V

    .line 127
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getFlowCompletionContract()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;->onForwardFinish()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getCurrentFlowItem()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowItemContract;->getCurrentView()Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionView;->Companion:Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->hasAcceptedLocationPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 136
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "permissionsFlow.poll()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->viewProgressListContract:Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->increment()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showSystemAppSettings()V
    .locals 4

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 250
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final start()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 92
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->hasAcceptedLocationPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    sget-object v1, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionView;->Companion:Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/permissions/locationPermission/LocationPermissionView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    sget-object v1, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionView;->Companion:Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/permissions/locationPermission/ForegroundLocationPermissionView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->hasAcceptedBackgroundLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    sget-object v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionView;->Companion:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->hasAcceptedStoragePermission()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    sget-object v1, Lbike/smarthalo/app/permissions/storage/StoragePermissionView;->Companion:Lbike/smarthalo/app/permissions/storage/StoragePermissionView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/permissions/storage/StoragePermissionView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->hasAcceptedPhonePermission()Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    sget-object v1, Lbike/smarthalo/app/permissions/locationPermission/PhonePermissionView;->Companion:Lbike/smarthalo/app/permissions/locationPermission/PhonePermissionView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/permissions/locationPermission/PhonePermissionView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_3
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->hasAcceptedNotificationPermission()Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    sget-object v1, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;->Companion:Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_4
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_5
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->permissionsFlow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "nextPage"

    .line 115
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->setCurrentView(Ljava/lang/String;)V

    return-object v0
.end method
