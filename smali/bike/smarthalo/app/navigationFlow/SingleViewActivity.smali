.class public abstract Lbike/smarthalo/app/navigationFlow/SingleViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SingleViewActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u000cH\u0014J\u0008\u0010\u0011\u001a\u00020\u000cH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/SingleViewActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "presenter",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "view",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "addView",
        "Landroid/view/View;",
        "viewResource",
        "",
        "init",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "onStop",
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

.field private presenter:Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

.field private view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addView(I)Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    invoke-virtual {p0}, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "view"

    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    sget v0, Lbike/smarthalo/app/R$id;->viewContainer:I

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public final init(Lbike/smarthalo/app/navigationFlow/NavigationFlowView;Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    .line 58
    iput-object p2, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->presenter:Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003e

    .line 32
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->setContentView(I)V

    .line 34
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDimensionsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 36
    sget v0, Lbike/smarthalo/app/R$id;->backButton:I

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "backButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    sget p1, Lbike/smarthalo/app/R$id;->backButton:I

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity$onCreate$1;->INSTANCE:Lbike/smarthalo/app/navigationFlow/SingleViewActivity$onCreate$1;

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    sget p1, Lbike/smarthalo/app/R$id;->backButton:I

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity$onCreate$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/navigationFlow/SingleViewActivity$onCreate$2;-><init>(Lbike/smarthalo/app/navigationFlow/SingleViewActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 63
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    if-nez v0, :cond_0

    const-string v1, "view"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->onShown()V

    .line 64
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->presenter:Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    if-nez v0, :cond_1

    const-string v1, "presenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 69
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->view:Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    if-nez v0, :cond_0

    const-string v1, "view"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->onHidden()V

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/SingleViewActivity;->presenter:Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;

    if-nez v0, :cond_1

    const-string v1, "presenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;->onStop()V

    return-void
.end method
