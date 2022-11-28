.class public abstract Lcom/instabug/survey/ui/i/a;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "QuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instabug/survey/ui/g/b$b;


# instance fields
.field protected a:Lcom/instabug/survey/models/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected b:Lcom/instabug/survey/ui/i/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected c:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected d:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected e:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected f:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected g:Lcom/instabug/survey/models/Survey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/view/GestureDetector;
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


# virtual methods
.method public a()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/instabug/survey/ui/i/a;->a(Lcom/instabug/survey/models/Survey;Z)V

    return-void
.end method

.method protected a(Lcom/instabug/survey/models/Survey;Z)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/survey/ui/SurveyActivity;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/b;

    invoke-virtual {v1}, Lcom/instabug/survey/models/b;->f()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/b;

    invoke-virtual {v1}, Lcom/instabug/survey/models/b;->f()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/ui/SurveyActivity;

    sget-object v4, Lcom/instabug/survey/ui/f;->PRIMARY:Lcom/instabug/survey/ui/f;

    invoke-virtual {v1, v4, v3}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/ui/f;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/survey/models/b;

    .line 10
    invoke-virtual {v4}, Lcom/instabug/survey/models/b;->f()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/ui/SurveyActivity;

    sget-object v2, Lcom/instabug/survey/ui/f;->SECONDARY:Lcom/instabug/survey/ui/f;

    invoke-virtual {v1, v2, v3}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/ui/f;Z)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/ui/SurveyActivity;

    sget-object v2, Lcom/instabug/survey/ui/f;->SECONDARY:Lcom/instabug/survey/ui/f;

    invoke-virtual {v1, v2, v3}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/ui/f;Z)V

    goto :goto_1

    .line 18
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/ui/SurveyActivity;

    sget-object v2, Lcom/instabug/survey/ui/f;->PRIMARY:Lcom/instabug/survey/ui/f;

    invoke-virtual {v1, v2, v3}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/ui/f;Z)V

    .line 32
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_5

    .line 33
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v0, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$id;->instabug_fragment_container:I

    .line 35
    invoke-static {p1, p2}, Lcom/instabug/survey/ui/i/b;->a(Lcom/instabug/survey/models/Survey;Z)Lcom/instabug/survey/ui/i/b;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_5
    return-void
.end method

.method public a(Lcom/instabug/survey/ui/i/c;)V
    .locals 0
    .param p1    # Lcom/instabug/survey/ui/i/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/i/a;->b:Lcom/instabug/survey/ui/i/c;

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/instabug/survey/ui/i/j/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/survey/ui/a;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/a;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    invoke-interface {v0, v1}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/survey/ui/a;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/a;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    invoke-interface {v0, v1}, Lcom/instabug/survey/ui/a;->b(Lcom/instabug/survey/models/Survey;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract f()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method protected g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/OrientationUtils;->isInLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->c:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected h(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/instabug/survey/ui/i/j/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/models/Survey;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/SurveyActivity;->h(Lcom/instabug/survey/models/Survey;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/instabug/survey/ui/i/l/c/a;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/instabug/survey/ui/i/h/c/a;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/instabug/survey/ui/i/k/b/a;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/instabug/survey/ui/i/i/b/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/instabug/survey/ui/SurveyActivity;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/instabug/survey/ui/SurveyActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/instabug/survey/ui/SurveyActivity;->d(Z)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 9
    :cond_2
    sget p2, Lcom/instabug/survey/R$id;->survey_shadow:I

    invoke-virtual {p0, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/instabug/survey/ui/i/a;->d:Landroid/view/View;

    .line 10
    sget p2, Lcom/instabug/survey/R$id;->survey_partial_close_btn:I

    invoke-virtual {p0, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/instabug/survey/ui/i/a;->e:Landroid/widget/ImageView;

    .line 11
    sget p2, Lcom/instabug/survey/R$id;->instabug_text_view_question:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/survey/ui/i/a;->c:Landroid/widget/TextView;

    .line 12
    sget p2, Lcom/instabug/survey/R$id;->instabug_survey_dialog_container:I

    invoke-virtual {p0, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/instabug/survey/ui/i/a;->f:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    iget-object p2, p0, Lcom/instabug/survey/ui/i/a;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_3
    iget-object p2, p0, Lcom/instabug/survey/ui/i/a;->e:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/instabug/survey/ui/i/a;->h()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/instabug/library/util/LocaleHelper;->isRTL(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/high16 p2, 0x43340000    # 180.0f

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 4
    sget v0, Lcom/instabug/survey/R$id;->survey_partial_close_btn:I

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/a;->h(Lcom/instabug/survey/models/Survey;)V

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lcom/instabug/survey/R$id;->instabug_survey_dialog_container:I

    if-eq p1, v0, :cond_2

    sget v0, Lcom/instabug/survey/R$id;->instabug_text_view_question:I

    if-ne p1, v0, :cond_3

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {p1}, Lcom/instabug/survey/ui/SurveyActivity;->a()Lcom/instabug/survey/ui/f;

    move-result-object p1

    sget-object v0, Lcom/instabug/survey/ui/f;->SECONDARY:Lcom/instabug/survey/ui/f;

    if-eq p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/ui/i/a;->a(Lcom/instabug/survey/models/Survey;Z)V

    :cond_3
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
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/survey/ui/SurveyActivity;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/SurveyActivity;->e()Lcom/instabug/survey/models/Survey;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/survey/ui/g/b;->a()V

    .line 2
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/survey/ui/SurveyActivity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/instabug/survey/ui/i/l/c/a;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isStoreRatingSurvey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/SurveyActivity;

    sget-object v1, Lcom/instabug/survey/ui/f;->PRIMARY:Lcom/instabug/survey/ui/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/ui/f;Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/SurveyActivity;

    sget-object v1, Lcom/instabug/survey/ui/f;->PARTIAL:Lcom/instabug/survey/ui/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/ui/f;Z)V

    .line 12
    :cond_2
    :goto_0
    invoke-static {}, Lcom/instabug/survey/ui/g/b;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/h/c;->a(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/survey/ui/i/a;->h()Z

    move-result v0

    invoke-static {p1, p2, v0, v1, p0}, Lcom/instabug/survey/ui/g/b;->a(Landroid/view/View;Landroid/view/MotionEvent;ZZLcom/instabug/survey/ui/g/b$b;)V

    .line 5
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->h:Landroid/view/GestureDetector;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/instabug/survey/ui/g/a;

    new-instance v2, Lcom/instabug/survey/ui/i/a$a;

    invoke-direct {v2, p0}, Lcom/instabug/survey/ui/i/a$a;-><init>(Lcom/instabug/survey/ui/i/a;)V

    invoke-direct {v1, v2}, Lcom/instabug/survey/ui/g/a;-><init>(Lcom/instabug/survey/ui/g/a$a;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/instabug/survey/ui/i/a;->h:Landroid/view/GestureDetector;

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->h:Landroid/view/GestureDetector;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
