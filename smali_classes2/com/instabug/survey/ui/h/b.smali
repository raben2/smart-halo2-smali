.class public Lcom/instabug/survey/ui/h/b;
.super Lcom/instabug/survey/ui/h/f;
.source "PopupCustomizedQuestionFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/ui/h/f;-><init>()V

    return-void
.end method

.method public static h(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/h/b;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_SURVEY_ARGUMENT"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "KEY_QUESTION_ARGUMENT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "KEY_POSITIVE_QUESTION_ARGUMENT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    const-string v1, "KEY_NEGATIVE_QUESTION_ARGUMENT"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    new-instance p0, Lcom/instabug/survey/ui/h/b;

    invoke-direct {p0}, Lcom/instabug/survey/ui/h/b;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/survey/ui/h/a$e;

    invoke-direct {v0, p1}, Lcom/instabug/survey/ui/h/a$e;-><init>(Landroid/app/Activity;)V

    sget p1, Lcom/instabug/survey/R$layout;->instabug_custom_app_rating_feedback:I

    .line 4
    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/h/a$e;->a(I)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/instabug/survey/ui/h/a$e;->a(Ljava/lang/String;)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p3}, Lcom/instabug/survey/ui/h/a$e;->c(Ljava/lang/String;)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p4}, Lcom/instabug/survey/ui/h/a$e;->b(Ljava/lang/String;)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    new-instance p2, Lcom/instabug/survey/ui/h/b$a;

    invoke-direct {p2, p0}, Lcom/instabug/survey/ui/h/b$a;-><init>(Lcom/instabug/survey/ui/h/b;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/instabug/survey/ui/h/a$e;->a(Lcom/instabug/survey/ui/h/a$f;)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/instabug/survey/ui/h/a$e;->a()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/survey/ui/h/a$e;

    invoke-direct {v0, p1}, Lcom/instabug/survey/ui/h/a$e;-><init>(Landroid/app/Activity;)V

    sget p1, Lcom/instabug/survey/R$layout;->instabug_custom_store_rating:I

    .line 4
    invoke-virtual {v0, p1}, Lcom/instabug/survey/ui/h/a$e;->a(I)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/instabug/survey/ui/h/a$e;->a(Ljava/lang/String;)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p3}, Lcom/instabug/survey/ui/h/a$e;->c(Ljava/lang/String;)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p4}, Lcom/instabug/survey/ui/h/a$e;->b(Ljava/lang/String;)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    new-instance p2, Lcom/instabug/survey/ui/h/b$b;

    invoke-direct {p2, p0}, Lcom/instabug/survey/ui/h/b$b;-><init>(Lcom/instabug/survey/ui/h/b;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/instabug/survey/ui/h/a$e;->a(Lcom/instabug/survey/ui/h/a$f;)Lcom/instabug/survey/ui/h/a$e;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/instabug/survey/ui/h/a$e;->a()V

    :cond_0
    return-void
.end method
