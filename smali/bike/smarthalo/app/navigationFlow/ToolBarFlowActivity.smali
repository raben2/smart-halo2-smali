.class public abstract Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;
.super Lbike/smarthalo/app/navigationFlow/BaseActivity;
.source "ToolBarFlowActivity.kt"

# interfaces
.implements Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToolBarFlowActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToolBarFlowActivity.kt\nbike/smarthalo/app/navigationFlow/ToolBarFlowActivity\n*L\n1#1,45:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0004J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;",
        "Lbike/smarthalo/app/navigationFlow/BaseActivity;",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "()V",
        "initToolbar",
        "",
        "titleStringResource",
        "",
        "onBackwardFinish",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onOptionsItemSelected",
        "",
        "menuItem",
        "Landroid/view/MenuItem;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lbike/smarthalo/app/navigationFlow/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final initToolbar(I)V
    .locals 2

    .line 37
    sget v0, Lbike/smarthalo/app/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 38
    invoke-virtual {p0}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "safeActionBar"

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 41
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0801aa

    .line 42
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    :cond_0
    return-void
.end method

.method public onBackwardFinish()V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003f

    .line 20
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->setContentView(I)V

    .line 21
    sget p1, Lbike/smarthalo/app/R$id;->statusBarLayer:I

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDimensionsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method public onForwardFinish()V
    .locals 0

    .line 17
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract$DefaultImpls;->onForwardFinish(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;)V

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

    .line 25
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 26
    invoke-super {p0}, Lbike/smarthalo/app/navigationFlow/BaseActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 29
    :cond_0
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
