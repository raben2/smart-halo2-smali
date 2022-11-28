.class Lcom/instabug/featuresrequest/ui/c/a$d;
.super Ljava/lang/Object;
.source "FeatureRequestsDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/c/a;->c(Lcom/instabug/featuresrequest/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/d/b;

.field final synthetic b:Lcom/instabug/featuresrequest/ui/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/c/a;Lcom/instabug/featuresrequest/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/c/a;->g(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$drawable;->ibg_fr_ic_vote_arrow_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/c/a;->h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 4
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->i(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    sget v3, Lcom/instabug/featuresrequest/R$string;->feature_request_votes_count:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {v5}, Lcom/instabug/featuresrequest/d/b;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    const v3, 0x106000d

    const/16 v4, 0x10

    const/high16 v5, 0x40000000    # 2.0f

    const v6, 0x106000b

    if-ne v1, v2, :cond_3

    .line 6
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {v1}, Lcom/instabug/featuresrequest/d/b;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 8
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 10
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->i(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->g(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    .line 13
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/instabug/featuresrequest/R$color;->ib_fr_toolbar_vote_btn_stroke_color:I

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 19
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 21
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->i(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->g(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_2

    .line 24
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {v1}, Lcom/instabug/featuresrequest/d/b;->p()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 32
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 34
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->i(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->g(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_4

    .line 37
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 39
    :cond_4
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 42
    :cond_5
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 43
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-virtual {v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->i(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->g(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_6

    .line 48
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 50
    :cond_6
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/c/a$d;->b:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v1}, Lcom/instabug/featuresrequest/ui/c/a;->h(Lcom/instabug/featuresrequest/ui/c/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_0
    return-void
.end method
