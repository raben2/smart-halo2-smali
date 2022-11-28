.class public final Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;
.super Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;
.source "InstallInstructionsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;",
        "Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onOptionsItemSelected",
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

    .line 13
    invoke-direct {p0}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f11023c

    .line 17
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;->initToolbar(I)V

    .line 18
    new-instance p1, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;

    .line 19
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    move-object v2, p0

    check-cast v2, Lbike/smarthalo/app/navigationFlow/BaseActivityContract;

    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    const-string v4, "lifecycle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p1, v0, v1, v2, v3}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/BaseActivityContract;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const-string v1, "menuInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0e0004

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a02f8

    if-ne v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionsActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lbike/smarthalo/app/navigationFlow/ToolBarFlowActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
