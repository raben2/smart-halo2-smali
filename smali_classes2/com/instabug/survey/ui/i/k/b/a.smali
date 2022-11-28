.class public Lcom/instabug/survey/ui/i/k/b/a;
.super Lcom/instabug/survey/ui/i/k/a;
.source "PartialStarRatingQuestionFragment.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/k/a;-><init>()V

    return-void
.end method

.method public static i(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/i/k/b/a;
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
    new-instance p0, Lcom/instabug/survey/ui/i/k/b/a;

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/k/b/a;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/instabug/survey/ui/custom/RatingView;FZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/survey/ui/i/k/a;->i:Lcom/instabug/survey/ui/custom/RatingView;

    if-eqz p1, :cond_1

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

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/instabug/survey/ui/i/k/a;->i:Lcom/instabug/survey/ui/custom/RatingView;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/instabug/survey/ui/custom/RatingView;->a(FZ)V

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/b;

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->g:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p0, p1, p3}, Lcom/instabug/survey/ui/i/a;->a(Lcom/instabug/survey/models/Survey;Z)V

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
    invoke-super {p0, p1, p2}, Lcom/instabug/survey/ui/i/k/a;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
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
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->d:Landroid/view/View;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/util/OrientationUtils;->isInLandscape(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/instabug/survey/ui/i/k/a;->i:Lcom/instabug/survey/ui/custom/RatingView;

    if-nez p1, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p1, p2, v0, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 13
    iget-object p2, p0, Lcom/instabug/survey/ui/i/k/a;->i:Lcom/instabug/survey/ui/custom/RatingView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object p1, p0, Lcom/instabug/survey/ui/i/k/a;->i:Lcom/instabug/survey/ui/custom/RatingView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

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
    invoke-super {p0, p1}, Lcom/instabug/survey/ui/i/k/a;->onCreate(Landroid/os/Bundle;)V

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
