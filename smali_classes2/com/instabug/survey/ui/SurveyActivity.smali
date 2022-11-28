.class public Lcom/instabug/survey/ui/SurveyActivity;
.super Lcom/instabug/library/core/ui/BaseFragmentActivity;
.source "SurveyActivity.java"

# interfaces
.implements Lcom/instabug/survey/ui/b;
.implements Lcom/instabug/library/_InstabugActivity;
.implements Lcom/instabug/survey/ui/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BaseFragmentActivity<",
        "Lcom/instabug/survey/ui/d;",
        ">;",
        "Lcom/instabug/survey/ui/b;",
        "Lcom/instabug/library/_InstabugActivity;",
        "Lcom/instabug/survey/ui/a;"
    }
.end annotation


# instance fields
.field a:Z

.field private b:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/instabug/survey/models/Survey;

.field private f:Landroid/view/GestureDetector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/survey/ui/SurveyActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/SurveyActivity;->b(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/ui/SurveyActivity;Lcom/instabug/survey/models/Survey;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/SurveyActivity;->i(Lcom/instabug/survey/models/Survey;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private b(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->b:Landroid/os/Handler;

    .line 9
    new-instance v1, Lcom/instabug/survey/ui/SurveyActivity$e;

    invoke-direct {v1, p0, p1}, Lcom/instabug/survey/ui/SurveyActivity$e;-><init>(Lcom/instabug/survey/ui/SurveyActivity;Landroidx/fragment/app/Fragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/instabug/survey/ui/SurveyActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/SurveyActivity;->c(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method static synthetic c(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/survey/models/Survey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/ui/SurveyActivity;->e:Lcom/instabug/survey/models/Survey;

    return-object p0
.end method

.method private c(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$anim;->instabug_anim_flyout_to_bottom:I

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/instabug/survey/ui/SurveyActivity$d;

    invoke-direct {v0, p0}, Lcom/instabug/survey/ui/SurveyActivity$d;-><init>(Lcom/instabug/survey/ui/SurveyActivity;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/instabug/survey/ui/SurveyActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/ui/SurveyActivity;->c:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$id;->instabug_fragment_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/instabug/survey/ui/i/b;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 4
    instance-of v3, v2, Lcom/instabug/survey/ui/i/j/a;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/instabug/survey/ui/SurveyActivity;->e:Lcom/instabug/survey/models/Survey;

    if-nez v1, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lcom/instabug/survey/ui/SurveyActivity;->c(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/instabug/survey/g/c;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/instabug/survey/ui/SurveyActivity;->e:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->isAppStoreRatingEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    :cond_2
    invoke-direct {p0, v0}, Lcom/instabug/survey/ui/SurveyActivity;->b(Landroidx/fragment/app/Fragment;)V

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "THANKS_FRAGMENT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "THANKS_FRAGMENT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/ui/SurveyActivity;->c(Landroidx/fragment/app/Fragment;)V

    :cond_4
    return-void
.end method

.method private i(Lcom/instabug/survey/models/Survey;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/instabug/survey/ui/i/n/a;->h(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/i/n/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/SurveyActivity;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/survey/ui/f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 24
    check-cast v0, Lcom/instabug/survey/ui/d;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/d;->a()Lcom/instabug/survey/ui/f;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    sget-object v0, Lcom/instabug/survey/ui/f;->PRIMARY:Lcom/instabug/survey/ui/f;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/instabug/survey/ui/SurveyActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/instabug/survey/ui/SurveyActivity$f;

    invoke-direct {v0, p0}, Lcom/instabug/survey/ui/SurveyActivity$f;-><init>(Lcom/instabug/survey/ui/SurveyActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 20
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 4
    sget v0, Lcom/instabug/survey/R$anim;->instabug_anim_flyin_from_bottom:I

    sget v1, Lcom/instabug/survey/R$anim;->instabug_anim_flyout_to_bottom:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/instabug/survey/ui/SurveyActivity;->a(Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method protected a(Landroidx/fragment/app/Fragment;II)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    sget p3, Lcom/instabug/survey/R$id;->instabug_fragment_container:I

    .line 7
    invoke-virtual {p2, p3, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public a(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 28
    check-cast v0, Lcom/instabug/survey/ui/d;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/d;->b(Lcom/instabug/survey/models/Survey;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/survey/ui/f;Z)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 22
    check-cast v0, Lcom/instabug/survey/ui/d;

    invoke-virtual {v0, p1, p2}, Lcom/instabug/survey/ui/d;->a(Lcom/instabug/survey/ui/f;Z)V

    :cond_0
    return-void
.end method

.method public b()Landroid/content/Intent;
    .locals 2

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->c:Landroid/widget/FrameLayout;

    .line 12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14
    iget-object p1, p0, Lcom/instabug/survey/ui/SurveyActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 16
    check-cast v0, Lcom/instabug/survey/ui/d;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/d;->a(Lcom/instabug/survey/models/Survey;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcom/instabug/survey/ui/SurveyActivity;->c(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/instabug/survey/ui/SurveyActivity;->b(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$id;->instabug_fragment_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/instabug/survey/R$anim;->instabug_anim_flyout_to_bottom:I

    .line 9
    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 12
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->g:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v1, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/instabug/survey/R$id;->instabug_fragment_container:I

    iget-object v1, p0, Lcom/instabug/survey/ui/SurveyActivity;->e:Lcom/instabug/survey/models/Survey;

    .line 16
    invoke-static {v1}, Lcom/instabug/survey/ui/i/m/a;->h(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/i/m/a;

    move-result-object v1

    const-string v2, "THANKS_FRAGMENT"

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 19
    new-instance p1, Lcom/instabug/survey/ui/SurveyActivity$b;

    invoke-direct {p1, p0}, Lcom/instabug/survey/ui/SurveyActivity$b;-><init>(Lcom/instabug/survey/ui/SurveyActivity;)V

    iput-object p1, p0, Lcom/instabug/survey/ui/SurveyActivity;->h:Ljava/lang/Runnable;

    .line 27
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->g:Landroid/os/Handler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 29
    :cond_2
    new-instance p1, Lcom/instabug/survey/ui/SurveyActivity$c;

    invoke-direct {p1, p0}, Lcom/instabug/survey/ui/SurveyActivity$c;-><init>(Lcom/instabug/survey/ui/SurveyActivity;)V

    iput-object p1, p0, Lcom/instabug/survey/ui/SurveyActivity;->h:Ljava/lang/Runnable;

    .line 35
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->g:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :goto_0
    invoke-static {}, Lcom/instabug/survey/h/g;->a()V

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

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->f:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/instabug/survey/ui/g/a;

    new-instance v2, Lcom/instabug/survey/ui/SurveyActivity$g;

    invoke-direct {v2, p0}, Lcom/instabug/survey/ui/SurveyActivity$g;-><init>(Lcom/instabug/survey/ui/SurveyActivity;)V

    invoke-direct {v1, v2}, Lcom/instabug/survey/ui/g/a;-><init>(Lcom/instabug/survey/ui/g/a$a;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->f:Landroid/view/GestureDetector;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e()Lcom/instabug/survey/models/Survey;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->e:Lcom/instabug/survey/models/Survey;

    return-object v0
.end method

.method public f()Lcom/instabug/survey/ui/f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/survey/ui/d;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/d;->a()Lcom/instabug/survey/ui/f;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/survey/ui/f;->PRIMARY:Lcom/instabug/survey/ui/f;

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_survey_activity:I

    return v0
.end method

.method public h(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/instabug/survey/ui/d;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/d;->a(Lcom/instabug/survey/models/Survey;)V

    :cond_0
    return-void
.end method

.method protected initViews()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/instabug/survey/ui/d;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/d;->b()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
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

    iput-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->c:Landroid/widget/FrameLayout;

    .line 7
    sget v0, Lcom/instabug/survey/R$id;->survey_activity_container:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 10
    new-instance v0, Lcom/instabug/survey/ui/d;

    invoke-direct {v0, p0}, Lcom/instabug/survey/ui/d;-><init>(Lcom/instabug/survey/ui/b;)V

    iput-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "survey"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/Survey;

    iput-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->e:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 14
    sget-object v0, Lcom/instabug/survey/ui/f;->PARTIAL:Lcom/instabug/survey/ui/f;

    .line 15
    invoke-virtual {v0}, Lcom/instabug/survey/ui/f;->a()I

    move-result v0

    const-string v1, "viewType"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/instabug/survey/ui/f;->PARTIAL:Lcom/instabug/survey/ui/f;

    invoke-static {v0, v1}, Lcom/instabug/survey/ui/f;->a(ILcom/instabug/survey/ui/f;)Lcom/instabug/survey/ui/f;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v1, Lcom/instabug/survey/ui/d;

    invoke-virtual {v1, v0, v2}, Lcom/instabug/survey/ui/d;->a(Lcom/instabug/survey/ui/f;Z)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isStoreRatingSurvey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/survey/ui/d;

    sget-object v2, Lcom/instabug/survey/ui/f;->PRIMARY:Lcom/instabug/survey/ui/f;

    invoke-virtual {v0, v2, v1}, Lcom/instabug/survey/ui/d;->a(Lcom/instabug/survey/ui/f;Z)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/survey/ui/d;

    sget-object v1, Lcom/instabug/survey/ui/f;->PARTIAL:Lcom/instabug/survey/ui/f;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/ui/d;->a(Lcom/instabug/survey/ui/f;Z)V

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/instabug/survey/ui/SurveyActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/survey/ui/SurveyActivity$a;-><init>(Lcom/instabug/survey/ui/SurveyActivity;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const-string p1, "SurveyActivity"

    const-string v0, "survey activity will be finished the survey is null"

    .line 32
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/instabug/survey/ui/SurveyActivity;->h:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->g:Landroid/os/Handler;

    .line 5
    iput-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->h:Ljava/lang/Runnable;

    .line 7
    :cond_1
    invoke-super {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onDestroy()V

    .line 8
    const-class v0, Lcom/instabug/survey/SurveyPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/library/core/InstabugCore;->setPluginState(Ljava/lang/Class;I)V

    .line 9
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/c;->e()V

    .line 12
    :cond_2
    invoke-static {}, Lcom/instabug/survey/e/a;->b()Lcom/instabug/survey/e/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instabug/survey/e/a;->b(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/instabug/survey/ui/SurveyActivity;->a:Z

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

    .line 2
    const-class v0, Lcom/instabug/survey/SurveyPlugin;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instabug/library/core/InstabugCore;->setPluginState(Ljava/lang/Class;I)V

    .line 3
    iput-boolean v1, p0, Lcom/instabug/survey/ui/SurveyActivity;->a:Z

    .line 6
    invoke-direct {p0}, Lcom/instabug/survey/ui/SurveyActivity;->g()V

    .line 8
    invoke-static {}, Lcom/instabug/survey/e/a;->b()Lcom/instabug/survey/e/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instabug/survey/e/a;->b(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/survey/ui/d;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/d;->a()Lcom/instabug/survey/ui/f;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const-string v0, "viewType"

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v1, Lcom/instabug/survey/ui/d;

    invoke-virtual {v1}, Lcom/instabug/survey/ui/d;->a()Lcom/instabug/survey/ui/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/ui/f;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Something went wrong while saving survey state"

    .line 6
    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
