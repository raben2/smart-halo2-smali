.class public Lcom/instabug/survey/ui/i/m/a;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "ThanksFragment.java"

# interfaces
.implements Lcom/instabug/survey/ui/i/m/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "Lcom/instabug/survey/ui/i/m/d;",
        ">;",
        "Lcom/instabug/survey/ui/i/m/c;"
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String; = "key_survey"


# instance fields
.field private a:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/ui/i/m/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/SurveyActivity;->f()Lcom/instabug/survey/ui/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/SurveyActivity;->f()Lcom/instabug/survey/ui/f;

    move-result-object v0

    sget-object v1, Lcom/instabug/survey/ui/f;->PRIMARY:Lcom/instabug/survey/ui/f;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 7
    iget-object v1, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/instabug/survey/ui/i/m/a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/survey/ui/i/m/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/ui/i/m/a;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()Lcom/instabug/survey/models/Survey;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/instabug/survey/ui/i/m/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/Survey;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->e()Lcom/instabug/survey/models/Survey;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/ui/i/m/a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/survey/ui/i/m/d;

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->e()Lcom/instabug/survey/models/Survey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/survey/ui/i/m/d;->a(Lcom/instabug/survey/models/Survey;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/survey/ui/i/m/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->e()Lcom/instabug/survey/models/Survey;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/survey/ui/i/m/d;

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->e()Lcom/instabug/survey/models/Survey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/survey/ui/i/m/d;->b(Lcom/instabug/survey/models/Survey;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static h(Lcom/instabug/survey/models/Survey;)Lcom/instabug/survey/ui/i/m/a;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/instabug/survey/ui/i/m/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    new-instance p0, Lcom/instabug/survey/ui/i/m/a;

    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private h()V
    .locals 5

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$anim;->ib_srv_anim_fade_in_scale:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/instabug/survey/R$anim;->ib_srv_anim_fly_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/instabug/survey/R$anim;->ib_srv_anim_fly_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    const-wide/16 v3, 0x12c

    .line 10
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v3, 0x190

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 13
    iget-object v3, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    if-nez v3, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/instabug/survey/ui/i/m/a$a;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/instabug/survey/ui/i/m/a$a;-><init>(Lcom/instabug/survey/ui/i/m/a;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_survey_fragment_thanks_dialog:I

    return v0
.end method

.method public hidePoweredByFooter()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/h/e;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/instabug/survey/R$id;->instabug_img_thanks:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    .line 2
    sget p1, Lcom/instabug/survey/R$id;->txt_thanks_title:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    .line 3
    sget p1, Lcom/instabug/survey/R$id;->txtSubTitle:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->c:Landroid/widget/TextView;

    .line 4
    iget-object p2, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->g()V

    .line 7
    sget p1, Lcom/instabug/survey/R$id;->instabug_pbi_container:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->d:Landroid/widget/LinearLayout;

    .line 9
    invoke-static {}, Lcom/instabug/survey/g/c;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->e()Lcom/instabug/survey/models/Survey;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->e()Lcom/instabug/survey/models/Survey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 12
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object p2, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, p2, :cond_1

    .line 13
    iget-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$drawable;->ic_suvey_vz_custom_thanks_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 17
    invoke-static {p2, v0}, Lcom/instabug/library/util/Colorizer;->getTintedDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/survey/R$drawable;->ic_suvey_vz_custom_thanks_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 26
    invoke-static {p2, v0}, Lcom/instabug/library/util/Colorizer;->getTintedDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    const-string p2, "#f5bf56"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    .line 33
    :cond_2
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->f()V

    .line 34
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object p1

    sget-object p2, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, p2, :cond_3

    .line 35
    iget-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 37
    :cond_3
    iget-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x106000b

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    :goto_1
    iget-object p1, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 40
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/instabug/survey/R$drawable;->ibg_survey_ic_thanks_background:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 42
    iget-object p2, p0, Lcom/instabug/survey/ui/i/m/a;->a:Landroid/widget/ImageView;

    .line 43
    invoke-static {p1}, Lcom/instabug/library/util/Colorizer;->getPrimaryColorTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_5

    .line 51
    check-cast p1, Lcom/instabug/survey/ui/i/m/d;

    invoke-virtual {p1}, Lcom/instabug/survey/ui/i/m/d;->a()V

    .line 53
    :cond_5
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->h()V

    .line 54
    invoke-direct {p0}, Lcom/instabug/survey/ui/i/m/a;->a()V

    :cond_6
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/instabug/survey/ui/i/m/d;

    invoke-direct {p1, p0}, Lcom/instabug/survey/ui/i/m/d;-><init>(Lcom/instabug/survey/ui/i/m/c;)V

    iput-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-void
.end method

.method public showPoweredByFooter()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/ui/i/m/a;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/ui/i/m/a;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/instabug/survey/h/e;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method
