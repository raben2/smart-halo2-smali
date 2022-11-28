.class public Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;
.super Lcom/instabug/library/core/ui/BaseFragmentActivity;
.source "AnnouncementActivity.java"

# interfaces
.implements Lcom/instabug/survey/announcements/ui/activity/b;
.implements Lcom/instabug/library/_InstabugActivity;
.implements Lcom/instabug/survey/announcements/ui/activity/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BaseFragmentActivity<",
        "Lcom/instabug/survey/announcements/ui/activity/d;",
        ">;",
        "Lcom/instabug/survey/announcements/ui/activity/b;",
        "Lcom/instabug/library/_InstabugActivity;",
        "Lcom/instabug/survey/announcements/ui/activity/a;"
    }
.end annotation


# instance fields
.field a:Z

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/instabug/survey/d/c/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->d:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;)Lcom/instabug/survey/d/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->c:Lcom/instabug/survey/d/c/a;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;Lcom/instabug/survey/d/c/a;)Lcom/instabug/survey/d/c/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->c:Lcom/instabug/survey/d/c/a;

    return-object p1
.end method

.method static synthetic a(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->e:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->b:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/instabug/survey/d/c/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->c:Lcom/instabug/survey/d/c/a;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$c;

    invoke-direct {v0, p0}, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$c;-><init>(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(Lcom/instabug/survey/d/c/a;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 19
    check-cast v0, Lcom/instabug/survey/announcements/ui/activity/d;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/announcements/ui/activity/d;->a(Lcom/instabug/survey/d/c/a;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    new-instance p1, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$b;

    invoke-direct {p1, p0}, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$b;-><init>(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;)V

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->b:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Lcom/instabug/survey/d/c/a;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 7
    check-cast v0, Lcom/instabug/survey/announcements/ui/activity/d;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/announcements/ui/activity/d;->b(Lcom/instabug/survey/d/c/a;)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcom/instabug/survey/R$color;->instabug_transparent_color:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/instabug/survey/R$color;->instabug_dialog_bg_color:I

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/instabug/survey/announcements/ui/activity/d;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/announcements/ui/activity/d;->a(Z)V

    :cond_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_survey_activity:I

    return v0
.end method

.method protected initViews()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/h/j;->a(Lcom/instabug/library/InstabugColorTheme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->setTheme(I)V

    .line 4
    invoke-static {p0}, Lcom/instabug/library/util/StatusBarUtils;->setStatusBarForDialog(Landroid/app/Activity;)V

    .line 6
    sget v0, Lcom/instabug/survey/R$id;->instabug_fragment_container:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->b:Landroid/widget/FrameLayout;

    .line 7
    sget v0, Lcom/instabug/survey/R$id;->survey_activity_container:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 10
    new-instance v0, Lcom/instabug/survey/announcements/ui/activity/d;

    invoke-direct {v0, p0}, Lcom/instabug/survey/announcements/ui/activity/d;-><init>(Lcom/instabug/survey/announcements/ui/activity/b;)V

    iput-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 11
    check-cast v0, Lcom/instabug/survey/announcements/ui/activity/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/d;->a(Z)V

    .line 14
    new-instance v0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity$a;-><init>(Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->f:Ljava/lang/Runnable;

    .line 36
    iget-object p1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->b:Landroid/widget/FrameLayout;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onDestroy()V

    .line 2
    const-class v0, Lcom/instabug/survey/SurveyPlugin;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/SurveyPlugin;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->e:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->d:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iput-object v1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->d:Landroid/os/Handler;

    .line 9
    iput-object v1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->e:Ljava/lang/Runnable;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->f:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iput-object v1, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->f:Ljava/lang/Runnable;

    .line 14
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$id;->instabug_fragment_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/instabug/survey/d/e/a/b/c;

    if-eqz v1, :cond_3

    .line 18
    check-cast v0, Lcom/instabug/survey/d/e/a/b/c;

    invoke-virtual {v0}, Lcom/instabug/survey/d/e/a/b/c;->onDestroy()V

    .line 20
    :cond_3
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/c;->e()V

    .line 21
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_4

    .line 22
    check-cast v0, Lcom/instabug/survey/announcements/ui/activity/d;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BasePresenter;->onDestroy()V

    :cond_4
    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->a:Z

    .line 2
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onPause()V

    .line 3
    invoke-virtual {p0, v0, v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->a:Z

    .line 3
    const-class v1, Lcom/instabug/survey/SurveyPlugin;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/SurveyPlugin;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lcom/instabug/library/core/plugin/Plugin;->setState(I)V

    :cond_0
    return-void
.end method
