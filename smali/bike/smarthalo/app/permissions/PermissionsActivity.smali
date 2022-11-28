.class public final Lbike/smarthalo/app/permissions/PermissionsActivity;
.super Lbike/smarthalo/app/navigationFlow/FlowActivity;
.source "PermissionsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0008\u0010\u000e\u001a\u00020\nH\u0016R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/PermissionsActivity;",
        "Lbike/smarthalo/app/navigationFlow/FlowActivity;",
        "()V",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "getAnalyticsManager",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "setAnalyticsManager",
        "(Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "onBackwardFinish",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onForwardFinish",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lbike/smarthalo/app/navigationFlow/FlowActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/permissions/PermissionsActivity;->_$_findViewCache:Ljava/util/HashMap;

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

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/permissions/PermissionsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    if-nez v0, :cond_0

    const-string v1, "analyticsManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onBackwardFinish()V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Lbike/smarthalo/app/permissions/PermissionsActivity;)V

    .line 21
    new-instance v0, Lbike/smarthalo/app/permissions/PermissionsMasterCoordinator;

    .line 23
    move-object v2, p0

    check-cast v2, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    .line 24
    move-object v3, p0

    check-cast v3, Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    .line 25
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    const-string p1, "lifecycle"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v5, p0, Lbike/smarthalo/app/permissions/PermissionsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    if-nez v5, :cond_0

    const-string p1, "analyticsManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    :cond_0
    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/permissions/PermissionsMasterCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/FlowActivityContract;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    const/4 p1, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 28
    invoke-static {p0, p1, v1, v0, v1}, Lbike/smarthalo/app/navigationFlow/FlowActivityContract$DefaultImpls;->toggleBackButtonVisibility$default(Lbike/smarthalo/app/navigationFlow/FlowActivityContract;ZLjava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public onForwardFinish()V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lbike/smarthalo/app/permissions/PermissionsActivity;->finish()V

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

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/permissions/PermissionsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method
