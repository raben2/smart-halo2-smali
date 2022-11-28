.class public Lcom/instabug/survey/ui/i/k/a;
.super Lcom/instabug/survey/ui/i/a;
.source "StarRatingQuestionFragment.java"

# interfaces
.implements Lcom/instabug/survey/ui/custom/RatingView$b;


# instance fields
.field protected i:Lcom/instabug/survey/ui/custom/RatingView;
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

.method public static a(Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/c;)Lcom/instabug/survey/ui/i/k/a;
    .locals 2

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "question"

    .line 5
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    new-instance p0, Lcom/instabug/survey/ui/i/k/a;

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/k/a;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/a;->a(Lcom/instabug/survey/ui/i/c;)V

    return-object p0
.end method

.method private a(Lcom/instabug/survey/models/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/k/a;->i:Lcom/instabug/survey/ui/custom/RatingView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/instabug/survey/ui/custom/RatingView;->a(FZ)V

    :cond_0
    return-void
.end method

.method private b(Lcom/instabug/survey/models/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/a;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/i/k/a;->a(Lcom/instabug/survey/models/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/survey/ui/custom/RatingView;FZ)V
    .locals 0

    .line 9
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_1

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Lcom/instabug/survey/models/b;->a(Ljava/lang/String;)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/instabug/survey/ui/i/a;->b:Lcom/instabug/survey/ui/i/c;

    if-eqz p1, :cond_2

    .line 17
    iget-object p2, p0, Lcom/instabug/survey/ui/i/a;->a:Lcom/instabug/survey/models/b;

    invoke-interface {p1, p2}, Lcom/instabug/survey/ui/i/c;->b(Lcom/instabug/survey/models/b;)V

    :cond_2
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/k/a;->i:Lcom/instabug/survey/ui/custom/RatingView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/instabug/survey/ui/i/k/a;->i:Lcom/instabug/survey/ui/custom/RatingView;

    invoke-virtual {v1}, Lcom/instabug/survey/ui/custom/RatingView;->getRating()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_star_rating_question:I

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
    sget p2, Lcom/instabug/survey/R$id;->ib_ratingbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/ui/custom/RatingView;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/k/a;->i:Lcom/instabug/survey/ui/custom/RatingView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Lcom/instabug/survey/ui/custom/RatingView;->setOnRatingBarChangeListener(Lcom/instabug/survey/ui/custom/RatingView$b;)V

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

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/i/k/a;->b(Lcom/instabug/survey/models/b;)V

    :cond_0
    return-void
.end method
