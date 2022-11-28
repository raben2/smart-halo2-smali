.class public Lcom/instabug/library/ui/onboarding/OnboardingActivity;
.super Lcom/instabug/library/core/ui/BaseFragmentActivity;
.source "OnboardingActivity.java"

# interfaces
.implements Lcom/instabug/library/ui/onboarding/b;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BaseFragmentActivity<",
        "Lcom/instabug/library/ui/onboarding/c;",
        ">;",
        "Lcom/instabug/library/ui/onboarding/b;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/library/ui/custom/InstabugViewPager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/library/ui/onboarding/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/Button;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field e:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instabug/library/ui/onboarding/OnboardingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "welcome_state"

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->c:Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->b:Lcom/instabug/library/ui/onboarding/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/instabug/library/ui/onboarding/a;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->c:Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->c:Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 11
    sget v0, Lcom/instabug/library/R$id;->instabug_pbi_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    sget v0, Lcom/instabug/library/R$id;->text_view_pb:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 13
    sget v1, Lcom/instabug/library/R$id;->image_instabug_logo:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 14
    sget v2, Lcom/instabug/library/R$drawable;->ibg_core_ic_instabug_logo:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v2, "#FFFFFF"

    .line 15
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v1, 0x106000b

    .line 16
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/ui/onboarding/d;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/instabug/library/ui/onboarding/a;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instabug/library/ui/onboarding/a;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->b:Lcom/instabug/library/ui/onboarding/a;

    .line 4
    iget-object p1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->c:Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->b:Lcom/instabug/library/ui/onboarding/a;

    invoke-virtual {v0}, Lcom/instabug/library/ui/onboarding/a;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->setNumberOfItems(I)V

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->e()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    sget v0, Lcom/instabug/library/R$id;->instabug_pbi_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$id;->ib_core_onboarding_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 2
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_fade_in:I

    sget v1, Lcom/instabug/library/R$anim;->ib_core_anim_fade_out:I

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    .line 3
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setOnboardingShowing(Z)V

    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/library/R$layout;->ib_core_lyt_onboarding_activity:I

    return v0
.end method

.method protected initViews()V
    .locals 3

    .line 1
    sget v0, Lcom/instabug/library/R$id;->ib_core_onboarding_viewpager:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/ui/custom/InstabugViewPager;

    iput-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-eqz v0, :cond_0

    .line 3
    sget v1, Lcom/instabug/library/R$attr;->instabug_background_color:I

    .line 4
    invoke-static {p0, v1}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Lcom/instabug/library/util/DrawableUtils;->setColor(Landroid/view/View;I)V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 9
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->setAutoHeight(Z)V

    .line 12
    :cond_0
    sget v0, Lcom/instabug/library/R$id;->ib_core_onboarding_done:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 18
    :cond_1
    sget v0, Lcom/instabug/library/R$id;->ib_core_onboarding_viewpager_indicator:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;

    iput-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->c:Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;

    if-eqz v0, :cond_2

    .line 20
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->setSelectedDotColor(I)V

    .line 21
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->c:Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;

    .line 22
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    const/16 v2, 0x50

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->setUnselectedDotColor(I)V

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a:Lcom/instabug/library/ui/custom/InstabugViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 28
    invoke-static {p0}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/LocaleUtils;->isRTL(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a:Lcom/instabug/library/ui/custom/InstabugViewPager;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setRotation(F)V

    .line 30
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    iget-object v1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 32
    iget-object v1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 35
    iget-object v1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->a:Lcom/instabug/library/ui/custom/InstabugViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 36
    iget-object v1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_5

    .line 41
    check-cast v0, Lcom/instabug/library/ui/onboarding/c;

    iget-object v1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->e:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/onboarding/c;->a(Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;)V

    :cond_5
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 2
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_fade_in:I

    sget v1, Lcom/instabug/library/R$anim;->ib_core_anim_fade_out:I

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/instabug/library/R$id;->ib_core_onboarding_done:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/instabug/library/R$id;->ib_core_onboarding_container:I

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setOnboardingShowing(Z)V

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setShouldAutoShowOnboarding(Z)V

    .line 3
    new-instance v0, Lcom/instabug/library/ui/onboarding/c;

    invoke-direct {v0, p0}, Lcom/instabug/library/ui/onboarding/c;-><init>(Lcom/instabug/library/ui/onboarding/b;)V

    iput-object v0, p0, Lcom/instabug/library/core/ui/BaseFragmentActivity;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "welcome_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    iput-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->e:Lcom/instabug/library/ui/onboarding/WelcomeMessage$State;

    .line 5
    sget v0, Lcom/instabug/library/R$anim;->ib_core_anim_fade_in:I

    sget v1, Lcom/instabug/library/R$anim;->ib_core_anim_fade_out:I

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    .line 6
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    invoke-static {p0}, Lcom/instabug/library/util/StatusBarUtils;->setStatusBarColorForPrompt(Landroid/app/Activity;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->c:Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/instabug/library/ui/custom/pagerindicator/DotIndicator;->setSelectedItem(IZ)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->b:Lcom/instabug/library/ui/onboarding/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/instabug/library/ui/onboarding/a;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->b:Lcom/instabug/library/ui/onboarding/a;

    invoke-virtual {p1}, Lcom/instabug/library/ui/onboarding/a;->getCount()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/instabug/library/ui/onboarding/OnboardingActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->requestFocus(I)Z

    :cond_2
    :goto_0
    return-void
.end method
