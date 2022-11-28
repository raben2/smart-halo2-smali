.class public Lcom/instabug/featuresrequest/ui/b/c/b;
.super Ljava/lang/Object;
.source "FeatureHolder.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

.field private i:Lcom/instabug/featuresrequest/c/a;

.field private j:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/instabug/featuresrequest/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->i:Lcom/instabug/featuresrequest/c/a;

    .line 4
    sget p2, Lcom/instabug/featuresrequest/R$id;->instabug_txt_feature_request_vote_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->a:Landroid/widget/TextView;

    .line 5
    sget p2, Lcom/instabug/featuresrequest/R$id;->instabug_txt_feature_request_vote_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->b:Landroid/widget/ImageView;

    .line 6
    sget p2, Lcom/instabug/featuresrequest/R$id;->instabug_txt_feature_request_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->c:Landroid/widget/TextView;

    .line 7
    sget p2, Lcom/instabug/featuresrequest/R$id;->instabug_txt_feature_request_vote_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->d:Landroid/widget/TextView;

    .line 8
    sget p2, Lcom/instabug/featuresrequest/R$id;->instabug_txt_feature_request_comment_count:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->e:Landroid/widget/TextView;

    .line 10
    sget p2, Lcom/instabug/featuresrequest/R$id;->instabug_txt_feature_request_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->f:Landroid/widget/TextView;

    .line 11
    sget p2, Lcom/instabug/featuresrequest/R$id;->instabug_txt_feature_request_date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->g:Landroid/widget/TextView;

    .line 12
    sget p2, Lcom/instabug/featuresrequest/R$id;->ib_btn_fr_vote:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/b/c/b;)Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    return-object p0
.end method

.method private a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/featuresrequest/ui/b/c/b;Landroid/content/Context;I)V
    .locals 1
    .param p4    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 78
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p2, p2, Lcom/instabug/featuresrequest/ui/b/c/b;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/instabug/featuresrequest/g/b;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p2, Lcom/instabug/featuresrequest/ui/b/c/b;->f:Landroid/widget/TextView;

    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/b;->a(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/b/c/b;)Lcom/instabug/featuresrequest/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->i:Lcom/instabug/featuresrequest/c/a;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->e:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/featuresrequest/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/instabug/featuresrequest/g/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/b;)V
    .locals 3

    .line 6
    sget-object v0, Lcom/instabug/featuresrequest/ui/b/c/b$b;->a:[I

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->l()Lcom/instabug/featuresrequest/d/b$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->f:Landroid/widget/TextView;

    sget v2, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_maybe_later:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_maybe_later:I

    invoke-direct {p0, p1, p0, v0, v2}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/featuresrequest/ui/b/c/b;Landroid/content/Context;I)V

    .line 35
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->f:Landroid/widget/TextView;

    sget v2, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_open:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_opened:I

    invoke-direct {p0, p1, p0, v0, v2}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/featuresrequest/ui/b/c/b;Landroid/content/Context;I)V

    .line 39
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 40
    :pswitch_2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->f:Landroid/widget/TextView;

    sget v2, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_planned:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 41
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_planned:I

    invoke-direct {p0, p1, p0, v0, v2}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/featuresrequest/ui/b/c/b;Landroid/content/Context;I)V

    .line 43
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 44
    :pswitch_3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->f:Landroid/widget/TextView;

    sget v2, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_inprogress:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 45
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_in_progress:I

    invoke-direct {p0, p1, p0, v0, v2}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/featuresrequest/ui/b/c/b;Landroid/content/Context;I)V

    .line 47
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 48
    :pswitch_4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->f:Landroid/widget/TextView;

    sget v1, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_completed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_completed:I

    invoke-direct {p0, p1, p0, v0, v1}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/featuresrequest/ui/b/c/b;Landroid/content/Context;I)V

    .line 51
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$drawable;->ibg_fr_ic_vote_arrow:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const v0, 0x106000b

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 58
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-static {p1, v1}, Lcom/instabug/featuresrequest/g/b;->a(Landroid/view/View;I)V

    .line 59
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/g/b;->a(Landroid/view/View;I)V

    .line 65
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_ptr_loading_txt:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 68
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_ptr_loading_txt:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_ptr_loading_txt:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$color;->ib_fr_vote_text_dark:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 75
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$attr;->instabug_fr_text_color:I

    invoke-static {v0, v1}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$attr;->instabug_fr_text_color:I

    invoke-static {v0, v1}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->c:Landroid/widget/TextView;

    const/16 v1, 0x3f

    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/featuresrequest/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Lcom/instabug/featuresrequest/d/b;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/b;->h:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    new-instance v1, Lcom/instabug/featuresrequest/ui/b/c/b$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/featuresrequest/ui/b/c/b$a;-><init>(Lcom/instabug/featuresrequest/ui/b/c/b;Lcom/instabug/featuresrequest/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
