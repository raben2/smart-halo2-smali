.class public Lcom/instabug/survey/ui/i/h/c/a;
.super Lcom/instabug/survey/ui/i/h/a;
.source "PartialMCQQuestionFragment.java"


# instance fields
.field private k:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/h/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/ui/i/h/c/a;)Lcom/instabug/survey/models/Survey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/survey/ui/i/h/c/a;Lcom/instabug/survey/models/Survey;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/instabug/survey/ui/i/a;->a(Lcom/instabug/survey/models/Survey;Z)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/survey/ui/i/h/c/a;)Lcom/instabug/survey/models/Survey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    return-object p0
.end method

.method public static i(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/i/h/c/a;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "survey"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    const-string v1, "question"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    new-instance p0, Lcom/instabug/survey/ui/i/h/c/a;

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/h/c/a;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/b;

    invoke-virtual {p1, p2}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/ui/i/a;->a(Lcom/instabug/survey/models/Survey;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/survey/ui/i/h/a;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/instabug/survey/R$id;->survey_mcq_fade:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/survey/ui/i/h/c/a;->k:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/ui/SurveyActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/instabug/survey/ui/SurveyActivity;->d(Z)V

    .line 5
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->d:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/instabug/survey/ui/i/h/a;->j:Landroid/widget/GridView;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 9
    iget-object p1, p0, Lcom/instabug/survey/ui/i/h/a;->j:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/instabug/survey/ui/i/h/c/a;->k:Landroid/view/View;

    if-nez p1, :cond_4

    return-void

    .line 13
    :cond_4
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object p2, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, p2, :cond_5

    .line 14
    iget-object p1, p0, Lcom/instabug/survey/ui/i/h/c/a;->k:Landroid/view/View;

    sget p2, Lcom/instabug/survey/R$drawable;->ibg_survey_mcq_fade_light:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/instabug/survey/ui/i/h/c/a;->k:Landroid/view/View;

    sget p2, Lcom/instabug/survey/R$drawable;->ibg_survey_mcq_fade_dark:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/instabug/survey/ui/i/h/c/a;->k:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/survey/ui/i/h/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "survey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/Survey;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/survey/ui/i/h/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/survey/ui/i/h/a;->j:Landroid/widget/GridView;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p2, Lcom/instabug/survey/ui/i/h/c/a$a;

    invoke-direct {p2, p0}, Lcom/instabug/survey/ui/i/h/c/a$a;-><init>(Lcom/instabug/survey/ui/i/h/c/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method
