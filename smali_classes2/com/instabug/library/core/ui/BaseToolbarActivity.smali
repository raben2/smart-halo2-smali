.class public abstract Lcom/instabug/library/core/ui/BaseToolbarActivity;
.super Lcom/instabug/library/core/ui/BaseFragmentActivity;
.source "BaseToolbarActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/instabug/library/core/ui/BaseContract$Presenter;",
        ">",
        "Lcom/instabug/library/core/ui/BaseFragmentActivity<",
        "TP;>;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "UUF_UNUSED_PUBLIC_OR_PROTECTED_FIELD"
    }
.end annotation


# instance fields
.field protected toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private initToolbar()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    sget v0, Lcom/instabug/library/R$id;->instabug_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseToolbarActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lcom/instabug/library/R$drawable;->ibg_core_ic_close:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getContentLayout()I
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$layout;->instabug_toolbar_activity:I

    return v0
.end method

.method protected abstract initContentViews()V
.end method

.method protected initViews()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->initToolbar()V

    .line 3
    sget v0, Lcom/instabug/library/R$id;->instabug_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->getContentLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseToolbarActivity;->initContentViews()V

    return-void
.end method
