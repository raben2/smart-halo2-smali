.class public Lcom/instabug/survey/ui/c;
.super Ljava/lang/Object;
.source "SurveyNavigator.java"


# direct methods
.method public static a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget p2, Lcom/instabug/survey/R$id;->instabug_fragment_container:I

    .line 18
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;)V
    .locals 2

    .line 15
    sget v0, Lcom/instabug/survey/R$anim;->instabug_anim_flyin_from_bottom:I

    sget v1, Lcom/instabug/survey/R$anim;->instabug_anim_flyout_to_bottom:I

    invoke-static {p0, p1, v0, v1}, Lcom/instabug/survey/ui/c;->a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V

    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->f()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->d(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->b(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->f()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 8
    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->e(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->f()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 11
    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->c(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->f()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->f(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static b(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lcom/instabug/survey/ui/c;->a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V

    return-void
.end method

.method private static b(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/instabug/survey/ui/i/h/c/a;->i(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/i/h/c/a;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method private static c(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/instabug/survey/ui/i/i/b/a;->i(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/i/i/b/a;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method private static d(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/instabug/survey/ui/i/l/c/a;->i(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/i/l/c/a;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method private static e(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/instabug/survey/ui/i/k/b/a;->i(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/i/k/b/a;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method private static f(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/instabug/survey/ui/h/b;->h(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/h/b;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/instabug/survey/ui/h/c;->h(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/h/c;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/ui/c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V

    return-void
.end method
