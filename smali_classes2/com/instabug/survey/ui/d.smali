.class public Lcom/instabug/survey/ui/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "SurveyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/survey/ui/b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/survey/ui/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/survey/ui/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method

.method private c(Lcom/instabug/survey/models/Survey;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/b;

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public a()Lcom/instabug/survey/ui/f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/instabug/survey/ui/d;->a:Lcom/instabug/survey/ui/f;

    return-object v0
.end method

.method public a(Lcom/instabug/survey/models/Survey;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->setDismissed()V

    .line 15
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getSessionCounter()I

    move-result v0

    .line 17
    invoke-static {}, Lcom/instabug/survey/g/c;->k()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isOptInSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    .line 21
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->resetSessionsCounter()V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getSessionCounter()I

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1, v1}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    .line 30
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/instabug/survey/cache/SurveysCacheManager;->update(Lcom/instabug/survey/models/Survey;)V

    .line 32
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 33
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/instabug/survey/g/b;->d(J)V

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 35
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/ui/b;

    if-eqz p1, :cond_3

    .line 36
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 37
    invoke-interface {p1}, Lcom/instabug/survey/ui/b;->b()Landroid/content/Intent;

    move-result-object v0

    .line 38
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    invoke-interface {p1, v1}, Lcom/instabug/survey/ui/b;->c(Z)V

    :cond_3
    return-void
.end method

.method public a(Lcom/instabug/survey/ui/f;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/d;->a:Lcom/instabug/survey/ui/f;

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1, p1}, Lcom/instabug/survey/e/b;->a(Landroid/app/Activity;Lcom/instabug/survey/ui/f;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/instabug/survey/ui/b;->a(I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0, p1}, Lcom/instabug/survey/ui/b;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/b;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 11
    instance-of v2, v1, Lcom/instabug/survey/ui/i/b;

    if-eqz v2, :cond_0

    .line 12
    check-cast v1, Lcom/instabug/survey/ui/i/b;

    invoke-virtual {v1}, Lcom/instabug/survey/ui/i/b;->a()V

    :cond_1
    return-void
.end method

.method public b(Lcom/instabug/survey/models/Survey;)V
    .locals 3

    .line 13
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->setSubmitted()V

    .line 14
    new-instance v0, Lcom/instabug/survey/ui/d$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/survey/ui/d$a;-><init>(Lcom/instabug/survey/ui/d;Lcom/instabug/survey/models/Survey;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    .line 20
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/g/b;->d(J)V

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/instabug/survey/h/g;->a(Lcom/instabug/survey/models/Survey;)V

    .line 25
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/b;

    if-eqz v0, :cond_4

    .line 27
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 28
    invoke-interface {v0}, Lcom/instabug/survey/ui/b;->b()Landroid/content/Intent;

    move-result-object v1

    .line 29
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isAppStoreRatingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/instabug/survey/g/c;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/instabug/survey/ui/b;->b(Z)V

    return-void

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isStoreRatingSurvey()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/d;->c(Lcom/instabug/survey/models/Survey;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/instabug/survey/ui/b;->c(Z)V

    return-void

    .line 38
    :cond_3
    invoke-interface {v0, v2}, Lcom/instabug/survey/ui/b;->c(Z)V

    :cond_4
    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/survey/g/c;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
