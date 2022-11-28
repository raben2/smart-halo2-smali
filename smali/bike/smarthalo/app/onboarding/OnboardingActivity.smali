.class public final Lbike/smarthalo/app/onboarding/OnboardingActivity;
.super Lbike/smarthalo/app/navigationFlow/FlowActivity;
.source "OnboardingActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/OnboardingActivity;",
        "Lbike/smarthalo/app/navigationFlow/FlowActivity;",
        "()V",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "getAnalyticsManager",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "setAnalyticsManager",
        "(Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "connectivityManager",
        "Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
        "getConnectivityManager",
        "()Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
        "setConnectivityManager",
        "(Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V",
        "userCloudManager",
        "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        "getUserCloudManager",
        "()Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        "setUserCloudManager",
        "(Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V",
        "userStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "getUserStorageManager",
        "()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "setUserStorageManager",
        "(Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field public analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lbike/smarthalo/app/navigationFlow/FlowActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getAnalyticsManager()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    if-nez v0, :cond_0

    const-string v1, "analyticsManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getConnectivityManager()Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    if-nez v0, :cond_0

    const-string v1, "connectivityManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getUserCloudManager()Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    if-nez v0, :cond_0

    const-string v1, "userCloudManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getUserStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    if-nez v0, :cond_0

    const-string v1, "userStorageManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->injectAuthenticationActivity(Lbike/smarthalo/app/onboarding/OnboardingActivity;)V

    .line 33
    new-instance v0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;

    .line 34
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 35
    move-object v2, p0

    check-cast v2, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    .line 36
    move-object v3, p0

    check-cast v3, Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    .line 37
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    const-string p1, "lifecycle"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v5, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    if-nez v5, :cond_0

    const-string p1, "userStorageManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v6, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    if-nez v6, :cond_1

    const-string p1, "userCloudManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/OnboardingActivity;->getViewProgressList()Lbike/smarthalo/app/navigationFlow/ViewProgressList;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    .line 41
    iget-object v8, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    if-nez v8, :cond_2

    const-string p1, "connectivityManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    :cond_2
    iget-object v9, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    if-nez v9, :cond_3

    const-string p1, "analyticsManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    :cond_3
    invoke-direct/range {v0 .. v9}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/FlowActivityContract;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method

.method public final setAnalyticsManager(Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public final setConnectivityManager(Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->connectivityManager:Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;

    return-void
.end method

.method public final setUserCloudManager(Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    return-void
.end method

.method public final setUserStorageManager(Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/OnboardingActivity;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-void
.end method
