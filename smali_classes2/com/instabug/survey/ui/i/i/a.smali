.class public Lcom/instabug/survey/ui/i/i/a;
.super Lcom/instabug/survey/ui/i/a;
.source "NPSQuestionFragment.java"

# interfaces
.implements Lcom/instabug/survey/ui/custom/NpsView$a;


# instance fields
.field private i:Lcom/instabug/survey/ui/custom/NpsView;
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

.method public static a(Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/c;)Lcom/instabug/survey/ui/i/i/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/survey/ui/i/i/a;

    invoke-direct {v0}, Lcom/instabug/survey/ui/i/i/a;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "question"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/i/a;->a(Lcom/instabug/survey/ui/i/c;)V

    return-object v0
.end method


# virtual methods
.method a(Lcom/instabug/survey/models/b;)V
    .locals 2
    .param p1    # Lcom/instabug/survey/models/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/i/a;->i:Lcom/instabug/survey/ui/custom/NpsView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/instabug/survey/ui/i/i/a;->i:Lcom/instabug/survey/ui/custom/NpsView;

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/custom/NpsView;->setScore(I)V

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->b:Lcom/instabug/survey/ui/i/c;

    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

    invoke-interface {p1, v0}, Lcom/instabug/survey/ui/i/c;->d(Lcom/instabug/survey/models/b;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_dialog_nps_survey:I

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
    sget p2, Lcom/instabug/survey/R$id;->instabug_survey_nps_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/ui/custom/NpsView;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/i/a;->i:Lcom/instabug/survey/ui/custom/NpsView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Lcom/instabug/survey/ui/custom/NpsView;->setOnSelectionListener(Lcom/instabug/survey/ui/custom/NpsView$a;)V

    :cond_0
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

    .line 2
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/i/a;->a(Lcom/instabug/survey/models/b;)V

    return-void
.end method
