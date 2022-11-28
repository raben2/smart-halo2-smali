.class public Lcom/instabug/survey/ui/i/h/a;
.super Lcom/instabug/survey/ui/i/a;
.source "MCQQuestionFragment.java"

# interfaces
.implements Lcom/instabug/survey/ui/i/h/b$b;


# instance fields
.field protected i:Lcom/instabug/survey/ui/i/h/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected j:Landroid/widget/GridView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/a;-><init>()V

    return-void
.end method

.method public static a(Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/c;)Lcom/instabug/survey/ui/i/h/a;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "question"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    new-instance p0, Lcom/instabug/survey/ui/i/h/a;

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/h/a;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/a;->a(Lcom/instabug/survey/ui/i/c;)V

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 13
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->b:Lcom/instabug/survey/ui/i/c;

    if-eqz p1, :cond_1

    .line 17
    iget-object p2, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

    invoke-interface {p1, p2}, Lcom/instabug/survey/ui/i/c;->a(Lcom/instabug/survey/models/b;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/instabug/survey/models/b;)V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v0, Lcom/instabug/survey/ui/i/h/b;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/instabug/survey/ui/i/h/b;-><init>(Landroid/app/Activity;Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/h/b$b;)V

    iput-object v0, p0, Lcom/instabug/survey/ui/i/h/a;->i:Lcom/instabug/survey/ui/i/h/b;

    .line 9
    iget-object v1, p0, Lcom/instabug/survey/ui/i/h/a;->j:Landroid/widget/GridView;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/a;->i:Lcom/instabug/survey/ui/i/h/b;

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/i/h/b;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/a;->i:Lcom/instabug/survey/ui/i/h/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/survey/ui/i/h/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/a;->i:Lcom/instabug/survey/ui/i/h/b;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/i/h/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$string;->instabug_str_error_survey_without_answer:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_dialog_mcq_survey:I

    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/survey/ui/i/a;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/instabug/survey/R$id;->instabug_text_view_question:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/survey/ui/i/a;->c:Landroid/widget/TextView;

    .line 3
    sget p2, Lcom/instabug/survey/R$id;->instabug_survey_mcq_grid_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/h/a;->j:Landroid/widget/GridView;

    .line 5
    invoke-virtual {p0}, Lcom/instabug/survey/ui/i/a;->g()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/survey/ui/i/a;->onCreate(Landroid/os/Bundle;)V

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

    const-string v0, "question"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/b;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

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
    invoke-super {p0, p1, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/h/a;->a(Lcom/instabug/survey/models/b;)V

    :cond_0
    return-void
.end method
