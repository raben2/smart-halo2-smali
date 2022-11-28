.class public Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;
.super Lcom/instabug/library/core/ui/BaseFragmentActivity;
.source "InstabugDialogActivity.java"

# interfaces
.implements Lcom/instabug/library/invocation/invocationdialog/g$d;
.implements Lcom/instabug/library/invocation/invocationdialog/d;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/library/invocation/invocationdialog/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BaseFragmentActivity<",
        "Lcom/instabug/library/invocation/invocationdialog/e;",
        ">;",
        "Lcom/instabug/library/invocation/invocationdialog/g$d;",
        "Lcom/instabug/library/invocation/invocationdialog/d;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/instabug/library/invocation/invocationdialog/b;"
    }
.end annotation


# static fields
.field public static final KEY_DIALOG_ITEMS:Ljava/lang/String; = "dialog_items"

.field public static final KEY_DIALOG_TITLE:Ljava/lang/String; = "dialog_title"

.field public static final KEY_SCREENSHOT_URI:Ljava/lang/String; = "screenshot_uri"

.field private static final KEY_SHOULD_BE_KILLED:Ljava/lang/String; = "should_be_killed"


# instance fields
.field private screenshotUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sharedViews:[Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shouldBeKilled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->shouldBeKilled:Z

    return-void
.end method

.method private createPresenter()Lcom/instabug/library/invocation/invocationdialog/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/invocationdialog/e;-><init>(Lcom/instabug/library/invocation/invocationdialog/d;)V

    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/ArrayList;Z)Landroid/content/Intent;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "dialog_title"

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "screenshot_uri"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "dialog_items"

    .line 4
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "should_be_killed"

    .line 5
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 6
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private runOnSdkInvokedRunnable()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnSdkInvokedCallback()Lcom/instabug/library/OnSdkInvokedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnSdkInvokedCallback()Lcom/instabug/library/OnSdkInvokedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/OnSdkInvokedCallback;->onSdkInvoked()V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getOnSdkDismissCallback()Lcom/instabug/library/OnSdkDismissCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/instabug/library/OnSdkDismissCallback$DismissType;->CANCEL:Lcom/instabug/library/OnSdkDismissCallback$DismissType;

    sget-object v2, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->OTHER:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    invoke-interface {v0, v1, v2}, Lcom/instabug/library/OnSdkDismissCallback;->call(Lcom/instabug/library/OnSdkDismissCallback$DismissType;Lcom/instabug/library/OnSdkDismissCallback$ReportType;)V

    .line 7
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 8
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_fade_in:I

    sget v1, Lcom/instabug/library/R$anim;->ib_core_anim_fade_out:I

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getDialogItems()Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_INCONSISTENT_SUBCLASS_RETURN_ANNOTATION"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dialog_items"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnterAnimation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/e;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExitAnimation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/e;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFadeInAnimation()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_fade_in:I

    return v0
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$layout;->ib_lyt_activity_dialog:I

    return v0
.end method

.method public getSlidInLeftAnimation()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_slide_in_left:I

    return v0
.end method

.method public getSlidInRightAnimation()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_slide_in_right:I

    return v0
.end method

.method public getSlidOutLeftAnimation()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_slide_out_left:I

    return v0
.end method

.method public getSlidOutRightAnimation()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_slide_out_right:I

    return v0
.end method

.method protected initViews()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->createPresenter()Lcom/instabug/library/invocation/invocationdialog/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dialog_items"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->finish()V

    return-void

    .line 8
    :cond_1
    sget v0, Lcom/instabug/library/R$id;->ib_fragment_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v0, Lcom/instabug/library/R$id;->ib_dialog_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "should_be_killed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->shouldBeKilled:Z

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/instabug/library/R$id;->ib_fragment_container:I

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "dialog_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dialog_items"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 19
    invoke-static {v2, v3}, Lcom/instabug/library/invocation/invocationdialog/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/instabug/library/invocation/invocationdialog/g;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_fade_in:I

    sget v1, Lcom/instabug/library/R$anim;->ib_core_anim_fade_out:I

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/e;->d()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/instabug/library/R$id;->ib_fragment_container:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/instabug/library/R$id;->ib_dialog_container:I

    if-ne p1, v0, :cond_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/e;->c()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {p1}, Lcom/instabug/library/invocation/invocationdialog/e;->g()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_fade_in:I

    sget v1, Lcom/instabug/library/R$anim;->ib_core_anim_fade_out:I

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    .line 2
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0}, Lcom/instabug/library/util/StatusBarUtils;->setStatusBarColorForPrompt(Landroid/app/Activity;)V

    .line 5
    invoke-static {p0}, Lcom/instabug/library/util/ScreenUtility;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/instabug/library/util/ScreenUtility;->isLandscape(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    sget p1, Lcom/instabug/library/R$id;->ib_fragment_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/library/util/ScreenUtility;->getNavigationBarHeight(Landroid/content/res/Resources;)I

    move-result v4

    add-int/2addr v3, v4

    .line 10
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "screenshot_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->screenshotUri:Landroid/net/Uri;

    .line 15
    invoke-direct {p0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->runOnSdkInvokedRunnable()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->screenshotUri:Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/e;->a([Landroid/net/Uri;)V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onDestroy()V

    return-void
.end method

.method public varargs onDialogItemClicked(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;[Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p2, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->sharedViews:[Landroid/view/View;

    .line 2
    iget-object p2, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p2, :cond_0

    check-cast p2, Lcom/instabug/library/invocation/invocationdialog/e;

    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->screenshotUri:Landroid/net/Uri;

    invoke-virtual {p2, p1, v0}, Lcom/instabug/library/invocation/invocationdialog/e;->a(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;Landroid/net/Uri;)V

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->shouldBeKilled:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onInitialScreenShotNotRequired()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->screenshotUri:Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/instabug/library/invocation/invocationdialog/e;->a([Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setIntent(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dialog_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialog_items"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->finish()V

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->setContent(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "should_be_killed"

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->shouldBeKilled:Z

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onPause()V

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setPromptOptionsScreenShown(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onResume()V

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setPromptOptionsScreenShown(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/e;->e()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {v0}, Lcom/instabug/library/invocation/invocationdialog/e;->f()V

    :cond_0
    return-void
.end method

.method public removeScreenshotIfNeeded(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/instabug/library/invocation/invocationdialog/e;

    invoke-virtual {v0, p1}, Lcom/instabug/library/invocation/invocationdialog/e;->a(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;)V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->sharedViews:[Landroid/view/View;

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogActivity;->sharedViews:[Landroid/view/View;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 5
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v0, v5, v6}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :catch_0
    :cond_1
    sget v2, Lcom/instabug/library/R$anim;->ib_core_anim_invocation_dialog_exit:I

    .line 15
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/instabug/library/R$id;->ib_fragment_container:I

    .line 17
    invoke-static {p1, p2}, Lcom/instabug/library/invocation/invocationdialog/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/instabug/library/invocation/invocationdialog/g;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
