.class public final Lbike/smarthalo/app/designRefresh/DRMainActivity;
.super Lbike/smarthalo/app/navigationFlow/BaseActivity;
.source "DRMainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0008\u0010\t\u001a\u00020\u0006H\u0014J\u0008\u0010\n\u001a\u00020\u0006H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lbike/smarthalo/app/designRefresh/DRMainActivity;",
        "Lbike/smarthalo/app/navigationFlow/BaseActivity;",
        "()V",
        "bottomDrawerCoordinator",
        "Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "onResume",
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

.field private bottomDrawerCoordinator:Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lbike/smarthalo/app/navigationFlow/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/DRMainActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/DRMainActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/designRefresh/DRMainActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/DRMainActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/designRefresh/DRMainActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0020

    .line 24
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/designRefresh/DRMainActivity;->setContentView(I)V

    .line 26
    sget v0, Lbike/smarthalo/app/R$id;->googleMapsMaps:I

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/designRefresh/DRMainActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-virtual {v0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance p1, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;

    move-object v0, p0

    check-cast v0, Lbike/smarthalo/app/navigationFlow/LifeCycleContract;

    sget v1, Lbike/smarthalo/app/R$id;->googleMapsMaps:I

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/designRefresh/DRMainActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Llayout/mapAdapter/SHGoogleMapsMap;

    const-string v2, "googleMapsMaps"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/LifeCycleContract;Llayout/mapAdapter/SHGoogleMapsMap;)V

    .line 28
    new-instance p1, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;

    sget v0, Lbike/smarthalo/app/R$id;->bottom_navigation:I

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/designRefresh/DRMainActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "bottom_navigation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    .line 30
    new-instance v0, Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabPresenter;

    invoke-direct {v0}, Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabPresenter;-><init>()V

    .line 31
    new-instance v1, Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabCoordinator;

    move-object v2, v0

    check-cast v2, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    new-instance v3, Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabView;

    check-cast v0, Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabPresenterContract;

    const v4, 0x7f0d00de

    invoke-virtual {p0, v4}, Lbike/smarthalo/app/designRefresh/DRMainActivity;->addView(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabView;-><init>(Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabPresenterContract;Landroid/view/View;)V

    check-cast v3, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/designRefresh/guidance/GuidanceTabCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 33
    new-instance v0, Lbike/smarthalo/app/designRefresh/fitness/FitnessTabTabPresenter;

    invoke-direct {v0}, Lbike/smarthalo/app/designRefresh/fitness/FitnessTabTabPresenter;-><init>()V

    .line 34
    new-instance v2, Lbike/smarthalo/app/designRefresh/fitness/FitnessTabCoordinator;

    move-object v3, v0

    check-cast v3, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    new-instance v4, Lbike/smarthalo/app/designRefresh/fitness/FitnessTabView;

    check-cast v0, Lbike/smarthalo/app/designRefresh/fitness/FitnessTabPresenterContract;

    const v5, 0x7f0d00dd

    invoke-virtual {p0, v5}, Lbike/smarthalo/app/designRefresh/DRMainActivity;->addView(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lbike/smarthalo/app/designRefresh/fitness/FitnessTabView;-><init>(Lbike/smarthalo/app/designRefresh/fitness/FitnessTabPresenterContract;Landroid/view/View;)V

    check-cast v4, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v2, v3, v4}, Lbike/smarthalo/app/designRefresh/fitness/FitnessTabCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 36
    new-instance v0, Lbike/smarthalo/app/designRefresh/myHalo/MyHaloTabPresenter;

    invoke-direct {v0}, Lbike/smarthalo/app/designRefresh/myHalo/MyHaloTabPresenter;-><init>()V

    .line 37
    new-instance v3, Lbike/smarthalo/app/designRefresh/myHalo/MyHaloTabCoordinator;

    move-object v4, v0

    check-cast v4, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    new-instance v5, Lbike/smarthalo/app/designRefresh/myHalo/MyHaloTabView;

    check-cast v0, Lbike/smarthalo/app/designRefresh/myHalo/MyHaloTabPresenterContract;

    const v6, 0x7f0d00df

    invoke-virtual {p0, v6}, Lbike/smarthalo/app/designRefresh/DRMainActivity;->addView(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lbike/smarthalo/app/designRefresh/myHalo/MyHaloTabView;-><init>(Lbike/smarthalo/app/designRefresh/myHalo/MyHaloTabPresenterContract;Landroid/view/View;)V

    check-cast v5, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    invoke-direct {v3, v4, v5}, Lbike/smarthalo/app/designRefresh/myHalo/MyHaloTabCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;Lbike/smarthalo/app/navigationFlow/NavigationFlowView;)V

    .line 39
    new-instance v0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;

    .line 40
    move-object v7, v1

    check-cast v7, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    move-object v8, v2

    check-cast v8, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    move-object v9, v3

    check-cast v9, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    move-object v10, p1

    check-cast v10, Lbike/smarthalo/app/designRefresh/BottomNavigationContract;

    sget p1, Lbike/smarthalo/app/R$id;->bottomSheet:I

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/designRefresh/DRMainActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Landroid/widget/FrameLayout;

    const-string p1, "bottomSheet"

    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    .line 39
    invoke-direct/range {v6 .. v11}, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;Lbike/smarthalo/app/designRefresh/BottomNavigationContract;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lbike/smarthalo/app/designRefresh/DRMainActivity;->bottomDrawerCoordinator:Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 50
    invoke-super {p0}, Lbike/smarthalo/app/navigationFlow/BaseActivity;->onPause()V

    .line 51
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/DRMainActivity;->bottomDrawerCoordinator:Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;

    if-nez v0, :cond_0

    const-string v1, "bottomDrawerCoordinator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->onDispose()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 45
    invoke-super {p0}, Lbike/smarthalo/app/navigationFlow/BaseActivity;->onResume()V

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/DRMainActivity;->bottomDrawerCoordinator:Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;

    if-nez v0, :cond_0

    const-string v1, "bottomDrawerCoordinator"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->onStart()V

    return-void
.end method
