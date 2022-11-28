.class public Lcom/instabug/survey/ui/i/b;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "SurveyFragment.java"

# interfaces
.implements Lcom/instabug/survey/ui/i/e;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/survey/ui/i/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "Lcom/instabug/survey/ui/i/f;",
        ">;",
        "Lcom/instabug/survey/ui/i/e;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/instabug/survey/ui/i/c;"
    }
.end annotation


# instance fields
.field a:Lcom/instabug/survey/models/Survey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Landroid/widget/Button;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/instabug/library/ui/custom/InstabugViewPager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/instabug/survey/ui/i/g/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/instabug/survey/ui/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Z

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/survey/ui/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/instabug/survey/ui/i/b;->g:I

    const-string v0, "CURRENT_QUESTION_POSITION"

    .line 21
    iput-object v0, p0, Lcom/instabug/survey/ui/i/b;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/instabug/survey/ui/i/b;->j:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/survey/ui/i/b;->l:Ljava/util/List;

    return-void
.end method

.method private a(J)I
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/models/b;

    invoke-virtual {v2}, Lcom/instabug/survey/models/b;->c()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/instabug/survey/ui/i/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/survey/ui/i/b;->g:I

    return p0
.end method

.method static synthetic a(Lcom/instabug/survey/ui/i/b;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/survey/ui/i/b;->g:I

    return p1
.end method

.method public static a(Lcom/instabug/survey/models/Survey;Z)Lcom/instabug/survey/ui/i/b;
    .locals 2

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "survey"

    .line 5
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "should_show_keyboard"

    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    new-instance p0, Lcom/instabug/survey/ui/i/b;

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/instabug/survey/ui/i/b;->g:I

    .line 14
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/survey/ui/i/f;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0, v1, p1}, Lcom/instabug/survey/ui/i/f;->a(Lcom/instabug/survey/models/Survey;I)Z

    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/instabug/survey/ui/i/b;->g:I

    .line 19
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/survey/ui/i/f;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0, v1, p1}, Lcom/instabug/survey/ui/i/f;->a(Lcom/instabug/survey/models/Survey;I)Z

    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .line 67
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->d:Lcom/instabug/survey/ui/i/g/a;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result p1

    .line 72
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:switcher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/instabug/survey/R$id;->instabug_survey_pager:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/i/b;->e(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 80
    check-cast v0, Lcom/instabug/survey/ui/i/a;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/i/a;->f()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 83
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isStoreRatingSurvey()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_3
    add-int/lit8 v0, p1, 0x1

    .line 87
    invoke-direct {p0, v0}, Lcom/instabug/survey/ui/i/b;->c(I)V

    .line 88
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    new-instance v2, Lcom/instabug/survey/ui/i/b$d;

    invoke-direct {v2, p0}, Lcom/instabug/survey/ui/i/b$d;-><init>(Lcom/instabug/survey/ui/i/b;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Lcom/instabug/library/ui/custom/InstabugViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isStoreRatingSurvey()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_6

    .line 101
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0, v1}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    .line 106
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->d:Lcom/instabug/survey/ui/i/g/a;

    .line 107
    invoke-virtual {v0}, Lcom/instabug/survey/ui/i/g/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_7

    .line 108
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->i()V

    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/ui/i/b;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/survey/ui/i/b;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/survey/ui/i/g/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/survey/ui/i/b;->d:Lcom/instabug/survey/ui/i/g/a;

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/survey/ui/i/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/i/b;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v1, Lcom/instabug/survey/ui/i/b$c;

    invoke-direct {v1, p0, p1}, Lcom/instabug/survey/ui/i/b$c;-><init>(Lcom/instabug/survey/ui/i/b;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/instabug/library/ui/custom/InstabugViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/instabug/survey/ui/i/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/survey/ui/i/b;->j:Z

    return p0
.end method

.method static synthetic d(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/library/ui/custom/InstabugViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    return-object p0
.end method

.method private d(I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/i/b;->f(I)V

    return-void
.end method

.method private e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isAppStoreRatingEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->addRateEvent()V

    .line 6
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/h/d;->b(Landroid/content/Context;)V

    .line 9
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-interface {p1, v0}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-interface {p1, v0}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/i/b;->d(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private f(I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/i/b;->c(I)V

    .line 2
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/survey/ui/i/b$e;

    invoke-direct {v0, p0}, Lcom/instabug/survey/ui/i/b$e;-><init>(Lcom/instabug/survey/ui/i/b;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/instabug/library/ui/custom/InstabugViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isAppStoreRatingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/instabug/survey/g/c;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getRatingCTATitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getRatingCTATitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    sget v1, Lcom/instabug/survey/R$string;->surveys_nps_btn_rate_us:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-interface {v0, v1}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/instabug/survey/ui/e;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/instabug/survey/ui/e;->b(Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private h()V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    if-nez v0, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-interface {v0, v1}, Lcom/instabug/survey/ui/a;->b(Lcom/instabug/survey/models/Survey;)V

    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->hasPositiveNpsAnswer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    .line 29
    invoke-virtual {v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result v1

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v2}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->scrollBackward(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/h/c;->a(Landroid/app/Activity;)V

    .line 4
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->j()V

    .line 5
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-interface {v0, v1}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->j()V

    .line 7
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-interface {v0, v1}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/instabug/survey/ui/i/b;->d:Lcom/instabug/survey/ui/i/g/a;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/instabug/survey/ui/i/b;->d:Lcom/instabug/survey/ui/i/g/a;

    invoke-virtual {v2}, Lcom/instabug/survey/ui/i/g/a;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/instabug/survey/ui/i/b;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1, v3}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setCurrentItem(IZ)V

    .line 5
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    sget v1, Lcom/instabug/survey/R$string;->instabug_str_action_submit:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result v0

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v0, v3, v3}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setCurrentItem(IZ)V

    .line 10
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->l:Ljava/util/List;

    iget v1, p0, Lcom/instabug/survey/ui/i/b;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 123
    instance-of v0, v0, Lcom/instabug/survey/ui/i/j/a;

    if-eqz v0, :cond_1

    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->scrollBackward(Z)V

    return-void
.end method

.method public a(ILcom/instabug/survey/models/Survey;)V
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/ui/i/b;->a(ILjava/util/List;)V

    .line 24
    invoke-virtual {p2}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 25
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-direct {p0, v2}, Lcom/instabug/survey/ui/i/b;->g(I)V

    .line 28
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    sget v2, Lcom/instabug/survey/R$string;->instabug_str_survey_next:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    sget v2, Lcom/instabug/survey/R$string;->instabug_str_action_submit:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    sget v2, Lcom/instabug/survey/R$string;->instabug_str_survey_next:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 37
    :goto_0
    invoke-virtual {p2}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {p2}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/b;

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 39
    invoke-virtual {p0, v1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p0, v3}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    goto :goto_1

    .line 43
    :cond_4
    invoke-virtual {p2}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 44
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 46
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->g()V

    .line 47
    invoke-direct {p0, v2}, Lcom/instabug/survey/ui/i/b;->g(I)V

    goto :goto_1

    .line 48
    :cond_5
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->l()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 50
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    sget p2, Lcom/instabug/survey/R$string;->instabug_str_next:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 53
    :cond_6
    invoke-direct {p0, v3}, Lcom/instabug/survey/ui/i/b;->g(I)V

    .line 54
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    sget p2, Lcom/instabug/survey/R$string;->instabug_str_action_submit:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method a(ILjava/util/List;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/b;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 60
    iget-object p2, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 61
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x64

    aput p1, v0, v1

    const-string p1, "progress"

    .line 62
    invoke-static {p2, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public a(Lcom/instabug/survey/models/b;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->c()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instabug/survey/ui/i/b;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    .line 114
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {v0, p1}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    return-void
.end method

.method public b(Lcom/instabug/survey/models/b;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    .line 7
    invoke-virtual {p0, v2}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    .line 8
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->c()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instabug/survey/ui/i/b;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    .line 12
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0, v1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0, v1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    :goto_0
    return-void
.end method

.method public c(Lcom/instabug/survey/models/Survey;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/b;->h(Lcom/instabug/survey/models/Survey;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/survey/ui/i/b;->l:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/instabug/survey/ui/i/g/a;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/ui/i/b;->l:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/instabug/survey/ui/i/g/a;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/instabug/survey/ui/i/b;->d:Lcom/instabug/survey/ui/i/g/a;

    .line 6
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setOffscreenPageLimit(I)V

    .line 7
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    iget-object v2, p0, Lcom/instabug/survey/ui/i/b;->d:Lcom/instabug/survey/ui/i/g/a;

    invoke-virtual {v0, v2}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 9
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    sget v4, Lcom/instabug/survey/R$string;->instabug_str_survey_next:I

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 12
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/instabug/survey/ui/i/b;->a(ILjava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    new-instance v4, Lcom/instabug/survey/ui/i/b$b;

    invoke-direct {v4, p0, p1}, Lcom/instabug/survey/ui/i/b$b;-><init>(Lcom/instabug/survey/ui/i/b;Lcom/instabug/survey/models/Survey;)V

    invoke-virtual {v0, v4}, Lcom/instabug/library/ui/custom/InstabugViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 40
    :goto_0
    iput v1, p0, Lcom/instabug/survey/ui/i/b;->g:I

    .line 41
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 42
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/b;

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p0, v1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public c(Lcom/instabug/survey/models/b;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->c()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instabug/survey/ui/i/b;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    .line 56
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result p1

    if-nez p1, :cond_4

    .line 63
    invoke-virtual {p0, v1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public d(Lcom/instabug/survey/models/b;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->c()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instabug/survey/ui/i/b;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    .line 39
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/b;->d(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_4

    .line 8
    invoke-static {}, Lcom/instabug/survey/g/c;->n()Z

    move-result p1

    const v2, 0x106000b

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 10
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, v1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    .line 12
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    .line 15
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x106000c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    .line 19
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 22
    :cond_4
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object v2, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, v2, :cond_5

    .line 23
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$color;->survey_btn_disabled_color_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    goto :goto_0

    .line 26
    :cond_5
    invoke-static {}, Lcom/instabug/survey/g/c;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 27
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 28
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    const-string v0, "#d9d9d9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    goto :goto_0

    .line 30
    :cond_6
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$color;->survey_btn_txt_color_dark:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 32
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$color;->survey_btn_disabled_color_dark:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/LocaleHelper;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget v0, p0, Lcom/instabug/survey/ui/i/b;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 22
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->n()V

    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    new-instance v1, Lcom/instabug/survey/ui/i/b$g;

    invoke-direct {v1, p0}, Lcom/instabug/survey/ui/i/b$g;-><init>(Lcom/instabug/survey/ui/i/b;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/instabug/library/ui/custom/InstabugViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public f()V
    .locals 4

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/LocaleHelper;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->n()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setCurrentItem(IZ)V

    .line 14
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    new-instance v1, Lcom/instabug/survey/ui/i/b$f;

    invoke-direct {v1, p0}, Lcom/instabug/survey/ui/i/b$f;-><init>(Lcom/instabug/survey/ui/i/b;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/instabug/library/ui/custom/InstabugViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_dialog_survey:I

    return v0
.end method

.method h(Lcom/instabug/survey/models/Survey;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/survey/models/Survey;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/survey/ui/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/models/b;

    .line 3
    invoke-virtual {v2}, Lcom/instabug/survey/models/b;->f()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4
    invoke-static {v2, p0}, Lcom/instabug/survey/ui/i/h/a;->a(Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/c;)Lcom/instabug/survey/ui/i/h/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/instabug/survey/models/b;->f()I

    move-result v3

    if-nez v3, :cond_3

    .line 6
    invoke-static {}, Lcom/instabug/survey/g/c;->n()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {v2, p0}, Lcom/instabug/survey/ui/i/l/b/a;->a(Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/c;)Lcom/instabug/survey/ui/i/l/b/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v2, p0}, Lcom/instabug/survey/ui/i/l/a;->a(Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/c;)Lcom/instabug/survey/ui/i/l/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v2}, Lcom/instabug/survey/models/b;->f()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 12
    invoke-static {v2, p0}, Lcom/instabug/survey/ui/i/k/a;->a(Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/c;)Lcom/instabug/survey/ui/i/k/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v2}, Lcom/instabug/survey/models/b;->f()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 14
    iget-object v3, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_5

    const/16 v4, 0x8

    .line 15
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 17
    :cond_5
    invoke-static {v2, p0}, Lcom/instabug/survey/ui/i/i/a;->a(Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/c;)Lcom/instabug/survey/ui/i/i/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    invoke-static {p1, p0}, Lcom/instabug/survey/ui/i/j/a;->a(Lcom/instabug/survey/models/Survey;Lcom/instabug/survey/ui/i/c;)Lcom/instabug/survey/ui/i/j/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public hidePoweredByFooter()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/h/e;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p2, Lcom/instabug/survey/ui/i/b$a;

    invoke-direct {p2, p0}, Lcom/instabug/survey/ui/i/b$a;-><init>(Lcom/instabug/survey/ui/i/b;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 8
    sget p2, Lcom/instabug/survey/R$id;->instabug_btn_submit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    .line 9
    sget p1, Lcom/instabug/survey/R$id;->instabug_survey_pager:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/instabug/library/ui/custom/InstabugViewPager;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    .line 10
    sget p1, Lcom/instabug/survey/R$id;->instabug_ic_survey_close:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    .line 11
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget p1, Lcom/instabug/survey/R$id;->survey_step_progressbar:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    .line 15
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setSwipeable(Z)V

    .line 17
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    iget-object p2, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p2}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setOffscreenPageLimit(I)V

    .line 20
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 22
    :cond_1
    new-instance p1, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;

    .line 23
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x106000b

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;->THIN:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;

    invoke-direct {p1, p2, v0, v1}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;-><init>(Landroid/content/Context;ILcom/instabug/library/ui/custom/MaterialMenuDrawable$Stroke;)V

    .line 25
    iget-object p2, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object p2, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p2, p0, Lcom/instabug/survey/ui/i/b;->e:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/instabug/library/util/LocaleHelper;->isRTL(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 30
    invoke-virtual {p1, v0}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->setRTLEnabled(Z)V

    .line 31
    iget-object p2, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p2, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setRotation(F)V

    .line 34
    :cond_2
    sget-object p2, Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;->ARROW:Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;

    invoke-virtual {p1, p2}, Lcom/instabug/library/ui/custom/MaterialMenuDrawable;->setIconState(Lcom/instabug/library/ui/custom/MaterialMenuDrawable$IconState;)V

    .line 36
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    if-nez p1, :cond_3

    return-void

    .line 38
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 39
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p2

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    const/high16 v2, 0x1020000

    if-ne p2, v1, :cond_4

    .line 40
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/instabug/survey/R$drawable;->ibg_survey_progressbar_background_light:I

    .line 41
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 42
    invoke-virtual {p1, v2, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/instabug/survey/R$drawable;->ibg_survey_progressbar_background_dark:I

    .line 46
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 47
    invoke-virtual {p1, v2, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 50
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 51
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 53
    iget-object p2, p0, Lcom/instabug/survey/ui/i/b;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/instabug/survey/ui/SurveyActivity;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/ui/a;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must implement SurveyActivityCallback "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcom/instabug/survey/R$id;->instabug_btn_submit:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/i/b;->a(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lcom/instabug/survey/R$id;->instabug_ic_survey_close:I

    if-ne v0, p1, :cond_2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instabug/survey/ui/i/b;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/survey/ui/i/b;->k:J

    .line 9
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/b;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setRetainInstance(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "survey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/Survey;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "should_show_keyboard"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/instabug/survey/ui/i/b;->j:Z

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/instabug/survey/ui/i/f;

    invoke-direct {v0, p0, p1}, Lcom/instabug/survey/ui/i/f;-><init>(Lcom/instabug/survey/ui/i/e;Lcom/instabug/survey/models/Survey;)V

    iput-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/instabug/survey/ui/i/b;->i:Lcom/instabug/survey/ui/a;

    .line 2
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->c:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/ui/custom/InstabugViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/ui/i/b;->c(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->h:Ljava/lang/String;

    iget v1, p0, Lcom/instabug/survey/ui/i/b;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/instabug/survey/ui/i/f;

    invoke-virtual {p1}, Lcom/instabug/survey/ui/i/f;->a()V

    .line 5
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/survey/ui/i/f;

    invoke-virtual {p1}, Lcom/instabug/survey/ui/i/f;->b()V

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lcom/instabug/survey/ui/i/b;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public showPoweredByFooter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/survey/h/e;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/instabug/library/util/DisplayUtils;->dpToPx(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method
