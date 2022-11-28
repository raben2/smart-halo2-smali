.class public abstract Lcom/instabug/library/core/ui/ToolbarFragment;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "ToolbarFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/instabug/library/core/ui/BaseContract$Presenter;",
        ">",
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "TP;>;"
    }
.end annotation


# instance fields
.field protected toolbarImageButtonClose:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected toolbarImageButtonDone:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    return-void
.end method

.method private initToolbarViews()V
    .locals 2

    .line 1
    sget v0, Lcom/instabug/library/R$id;->instabug_btn_toolbar_right:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->toolbarImageButtonDone:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/instabug/library/core/ui/ToolbarFragment$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/core/ui/ToolbarFragment$a;-><init>(Lcom/instabug/library/core/ui/ToolbarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_0
    sget v0, Lcom/instabug/library/R$id;->instabug_btn_toolbar_left:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/instabug/library/core/ui/ToolbarFragment;->toolbarImageButtonClose:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 16
    new-instance v1, Lcom/instabug/library/core/ui/ToolbarFragment$b;

    invoke-direct {v1, p0}, Lcom/instabug/library/core/ui/ToolbarFragment$b;-><init>(Lcom/instabug/library/core/ui/ToolbarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getContentLayout()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$layout;->instabug_fragment_toolbar:I

    return v0
.end method

.method protected abstract getTitle()Ljava/lang/String;
.end method

.method protected abstract initContentViews(Landroid/view/View;Landroid/os/Bundle;)V
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->initToolbarViews()V

    .line 3
    sget v0, Lcom/instabug/library/R$id;->instabug_content:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getContentLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/core/ui/ToolbarFragment;->initContentViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/ToolbarFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/ToolbarFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method protected onCloseButtonClicked()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/instabug/library/util/SystemServiceUtils;->hideInputMethod(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const-string v0, "ToolbarFragment"

    const-string v1, "onCloseButtonClicked can\'t be executed due to null getActivity() reference"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected abstract onDoneButtonClicked()V
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget v0, Lcom/instabug/library/R$id;->instabug_fragment_title:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
