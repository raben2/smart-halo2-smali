.class public abstract Lbike/smarthalo/app/navigationFlow/FlowActivity;
.super Lbike/smarthalo/app/navigationFlow/BaseActivity;
.source "FlowActivity.kt"

# interfaces
.implements Lbike/smarthalo/app/navigationFlow/FlowActivityContract;
.implements Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowActivity.kt\nbike/smarthalo/app/navigationFlow/FlowActivity\n*L\n1#1,77:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001f\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0002\u0010\u0019R\u001a\u0010\u0005\u001a\u00020\u0006X\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/FlowActivity;",
        "Lbike/smarthalo/app/navigationFlow/BaseActivity;",
        "Lbike/smarthalo/app/navigationFlow/FlowActivityContract;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "()V",
        "viewProgressList",
        "Lbike/smarthalo/app/navigationFlow/ViewProgressList;",
        "getViewProgressList",
        "()Lbike/smarthalo/app/navigationFlow/ViewProgressList;",
        "setViewProgressList",
        "(Lbike/smarthalo/app/navigationFlow/ViewProgressList;)V",
        "onBackwardFinish",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onForwardFinish",
        "onOptionsItemSelected",
        "",
        "menuItem",
        "Landroid/view/MenuItem;",
        "toggleBackButtonVisibility",
        "isVisible",
        "animation",
        "",
        "(ZLjava/lang/Integer;)V",
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

.field protected viewProgressList:Lbike/smarthalo/app/navigationFlow/ViewProgressList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lbike/smarthalo/app/navigationFlow/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final getViewProgressList()Lbike/smarthalo/app/navigationFlow/ViewProgressList;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/FlowActivity;->viewProgressList:Lbike/smarthalo/app/navigationFlow/ViewProgressList;

    if-nez v0, :cond_0

    const-string v1, "viewProgressList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onBackwardFinish()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->finishAffinity()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003d

    .line 31
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->setContentView(I)V

    .line 33
    sget p1, Lbike/smarthalo/app/R$id;->backButton:I

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "backButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDimensionsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 35
    sget v1, Lbike/smarthalo/app/R$id;->backButton:I

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "backButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    sget p1, Lbike/smarthalo/app/R$id;->backButton:I

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object v1, Lbike/smarthalo/app/navigationFlow/FlowActivity$onCreate$1;->INSTANCE:Lbike/smarthalo/app/navigationFlow/FlowActivity$onCreate$1;

    check-cast v1, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    sget p1, Lbike/smarthalo/app/R$id;->backButton:I

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lbike/smarthalo/app/navigationFlow/FlowActivity$onCreate$2;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/navigationFlow/FlowActivity$onCreate$2;-><init>(Lbike/smarthalo/app/navigationFlow/FlowActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance p1, Lbike/smarthalo/app/navigationFlow/ViewProgressList;

    sget v1, Lbike/smarthalo/app/R$id;->pagerIndex:I

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "pagerIndex"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lbike/smarthalo/app/navigationFlow/ViewProgressList;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/FlowActivity;->viewProgressList:Lbike/smarthalo/app/navigationFlow/ViewProgressList;

    return-void

    .line 33
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onForwardFinish()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->finishAffinity()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->getBackButtonSource()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 64
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHKeyboardHelper;->hideKeyboard(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected final setViewProgressList(Lbike/smarthalo/app/navigationFlow/ViewProgressList;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/navigationFlow/ViewProgressList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/FlowActivity;->viewProgressList:Lbike/smarthalo/app/navigationFlow/ViewProgressList;

    return-void
.end method

.method public toggleBackButtonVisibility(ZLjava/lang/Integer;)V
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 50
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 52
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 53
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 51
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 55
    sget v0, Lbike/smarthalo/app/R$id;->backButton:I

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    :cond_0
    sget p2, Lbike/smarthalo/app/R$id;->backButton:I

    invoke-virtual {p0, p2}, Lbike/smarthalo/app/navigationFlow/FlowActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "backButton"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
