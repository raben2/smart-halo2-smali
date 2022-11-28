.class public Lcom/instabug/survey/ui/i/h/b;
.super Landroid/widget/BaseAdapter;
.source "SurveyMCQGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/ui/i/h/b$b;,
        Lcom/instabug/survey/ui/i/h/b$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Lcom/instabug/survey/ui/i/h/b$b;

.field private c:Lcom/instabug/survey/models/b;

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/instabug/survey/models/b;Lcom/instabug/survey/ui/i/h/b$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/instabug/survey/ui/i/h/b;->d:I

    .line 7
    iput-object p1, p0, Lcom/instabug/survey/ui/i/h/b;->e:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/survey/ui/i/h/b;->a:Landroid/view/LayoutInflater;

    .line 9
    iput-object p2, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    .line 10
    invoke-direct {p0, p2}, Lcom/instabug/survey/ui/i/h/b;->a(Lcom/instabug/survey/models/b;)V

    .line 11
    iput-object p3, p0, Lcom/instabug/survey/ui/i/h/b;->b:Lcom/instabug/survey/ui/i/h/b$b;

    return-void
.end method

.method private a(Ljava/lang/String;I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 8
    new-instance v0, Lcom/instabug/survey/ui/i/h/b$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/instabug/survey/ui/i/h/b$a;-><init>(Lcom/instabug/survey/ui/i/h/b;ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/instabug/survey/ui/i/h/b;)Lcom/instabug/survey/ui/i/h/b$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/survey/ui/i/h/b;->b:Lcom/instabug/survey/ui/i/h/b$b;

    return-object p0
.end method

.method private a(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/instabug/survey/ui/i/h/b;->d:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private a(Lcom/instabug/survey/models/b;)V
    .locals 3

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iput v0, p0, Lcom/instabug/survey/ui/i/h/b;->d:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/ui/i/h/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/survey/ui/i/h/b;->a(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11
    iget v0, p0, Lcom/instabug/survey/ui/i/h/b;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/instabug/survey/ui/i/h/b;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/survey/ui/i/h/b;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 17
    invoke-virtual {p0, v0}, Lcom/instabug/survey/ui/i/h/b;->getItem(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    iput v0, p0, Lcom/instabug/survey/ui/i/h/b;->d:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/h/b;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "null"

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/instabug/survey/ui/i/h/b$c;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/instabug/survey/ui/i/h/b$c;-><init>(Lcom/instabug/survey/ui/i/h/b$a;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/instabug/survey/R$layout;->instabug_survey_mcq_item:I

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 4
    sget v0, Lcom/instabug/survey/R$id;->mcq_item:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->a:Landroid/widget/LinearLayout;

    .line 5
    sget v0, Lcom/instabug/survey/R$id;->survey_optional_answer_textview:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->b:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/instabug/survey/R$id;->selector_img:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->c:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/instabug/survey/ui/i/h/b$c;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    invoke-virtual {v1}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_1
    iget v0, p0, Lcom/instabug/survey/ui/i/h/b;->d:I

    if-ne p1, v0, :cond_3

    .line 16
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne v0, v1, :cond_2

    .line 17
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    const/16 v2, 0x19

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->a:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    .line 21
    :goto_1
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/h/b;->e:Landroid/content/Context;

    sget v2, Lcom/instabug/survey/R$attr;->instabug_survey_mcq_text_color_selected:I

    invoke-static {v1, v2}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 23
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->c:Landroid/widget/ImageView;

    sget v1, Lcom/instabug/survey/R$drawable;->ibg_survey_ic_mcq_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 25
    :cond_3
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/h/b;->e:Landroid/content/Context;

    sget v2, Lcom/instabug/survey/R$attr;->instabug_survey_mcq_unselected_bg:I

    invoke-static {v1, v2}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    .line 26
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/h/b;->e:Landroid/content/Context;

    sget v2, Lcom/instabug/survey/R$attr;->instabug_survey_mcq_text_color:I

    invoke-static {v1, v2}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/h/b;->e:Landroid/content/Context;

    sget v2, Lcom/instabug/survey/R$attr;->instabug_survey_mcq_radio_icon_color:I

    invoke-static {v1, v2}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 28
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->c:Landroid/widget/ImageView;

    sget v1, Lcom/instabug/survey/R$drawable;->ibg_survey_ic_mcq_unselected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    :goto_2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b;->b:Lcom/instabug/survey/ui/i/h/b$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 31
    iget-object v0, p2, Lcom/instabug/survey/ui/i/h/b$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    invoke-virtual {v1}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/instabug/survey/ui/i/h/b;->a(Ljava/lang/String;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p2, p2, Lcom/instabug/survey/ui/i/h/b$c;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instabug/survey/ui/i/h/b;->c:Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/instabug/survey/ui/i/h/b;->a(Ljava/lang/String;I)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object p3
.end method
