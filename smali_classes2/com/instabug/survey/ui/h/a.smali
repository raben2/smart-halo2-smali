.class public Lcom/instabug/survey/ui/h/a;
.super Ljava/lang/Object;
.source "CustomQuestionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/ui/h/a$f;,
        Lcom/instabug/survey/ui/h/a$e;
    }
.end annotation


# direct methods
.method static synthetic a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/survey/ui/h/a$f;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/instabug/survey/ui/h/a;->b(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/survey/ui/h/a$f;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 19
    sget v0, Lcom/instabug/survey/R$id;->survey_partial_close_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 21
    new-instance v0, Lcom/instabug/survey/ui/h/a$d;

    invoke-direct {v0, p0}, Lcom/instabug/survey/ui/h/a$d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/widget/Button;Landroid/widget/Button;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 4
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 6
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 7
    sget p0, Lcom/instabug/survey/R$drawable;->ib_survey_bg_apprating_negative:I

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundResource(I)V

    if-eqz p2, :cond_1

    .line 9
    sget p0, Lcom/instabug/survey/R$drawable;->ib_ic_survey_apprating_light:I

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 13
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 15
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 16
    sget p0, Lcom/instabug/survey/R$drawable;->ib_survey_bg_apprating_negative_dark:I

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundResource(I)V

    if-eqz p2, :cond_1

    .line 18
    sget p0, Lcom/instabug/survey/R$drawable;->ib_ic_survey_apprating_dark:I

    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/survey/ui/h/a$f;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p5    # Lcom/instabug/survey/ui/h/a$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x1030010

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 8
    sget v1, Lcom/instabug/survey/R$id;->instabug_text_view_question:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9
    sget v2, Lcom/instabug/survey/R$id;->ib_survey_btn_yes:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 10
    sget v3, Lcom/instabug/survey/R$id;->ib_survey_btn_no:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 11
    sget v4, Lcom/instabug/survey/R$id;->ib_survey_custom_dialog_illustration:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    sget v5, Lcom/instabug/survey/R$id;->survey_partial_close_btn:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 14
    invoke-static {v2, v3, v4}, Lcom/instabug/survey/ui/h/a;->a(Landroid/widget/Button;Landroid/widget/Button;Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 18
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v3, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-static {p0, p1}, Lcom/instabug/survey/ui/h/a;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 24
    new-instance p2, Lcom/instabug/survey/ui/h/a$a;

    invoke-direct {p2, v0, p5}, Lcom/instabug/survey/ui/h/a$a;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/instabug/survey/ui/h/a$f;)V

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance p2, Lcom/instabug/survey/ui/h/a$b;

    invoke-direct {p2, v0, p5}, Lcom/instabug/survey/ui/h/a$b;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/instabug/survey/ui/h/a$f;)V

    invoke-virtual {v3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_0

    .line 41
    new-instance p2, Lcom/instabug/survey/ui/h/a$c;

    invoke-direct {p2, p5}, Lcom/instabug/survey/ui/h/a$c;-><init>(Lcom/instabug/survey/ui/h/a$f;)V

    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :cond_0
    invoke-static {p0, p1}, Lcom/instabug/survey/h/e;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 52
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
