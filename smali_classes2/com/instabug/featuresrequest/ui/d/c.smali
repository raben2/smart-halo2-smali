.class public Lcom/instabug/featuresrequest/ui/d/c;
.super Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;
.source "FeaturesMainFragment.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/d/b;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/featuresrequest/c/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment<",
        "Lcom/instabug/featuresrequest/ui/d/d;",
        ">;",
        "Lcom/instabug/featuresrequest/ui/d/b;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/instabug/featuresrequest/c/c;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/featuresrequest/ui/d/e;

.field private c:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroidx/viewpager/widget/ViewPager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/Button;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected f:Ljava/lang/Boolean;

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/featuresrequest/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/instabug/featuresrequest/ui/d/f/b;

.field private j:Lcom/instabug/featuresrequest/ui/d/g/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;-><init>()V

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->f:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->g:I

    return-void
.end method

.method private I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->c:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_toolbar_dark_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 9
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_toolbar_dark_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget v0, Lcom/instabug/featuresrequest/R$id;->sortingActionsLayoutRoot:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5
    sget v1, Lcom/instabug/featuresrequest/R$id;->imgSortActions:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/instabug/featuresrequest/R$drawable;->ibg_fr_ic_sort:I

    invoke-static {v2, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_1
    sget v1, Lcom/instabug/featuresrequest/R$id;->btnSortActions:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/instabug/featuresrequest/ui/d/c;->e:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->e:Landroid/widget/Button;

    if-nez v0, :cond_3

    return-void

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->e:Landroid/widget/Button;

    sget v1, Lcom/instabug/featuresrequest/R$string;->sort_by_top_rated:I

    .line 19
    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/featuresrequest/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->e:Landroid/widget/Button;

    sget v1, Lcom/instabug/featuresrequest/R$string;->sort_by_recently_updated:I

    .line 24
    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/featuresrequest/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$id;->tab_layout:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    sget v0, Lcom/instabug/featuresrequest/R$id;->tabsContainer:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->c:Landroid/widget/LinearLayout;

    .line 3
    sget v0, Lcom/instabug/featuresrequest/R$id;->pager:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->d:Landroidx/viewpager/widget/ViewPager;

    .line 5
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/d/c;->c:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    sget v2, Lcom/instabug/featuresrequest/R$string;->features_rq_main_fragment_tab1:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$string;->features_rq_main_fragment_tab2:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 11
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 12
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 15
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->c:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 16
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->d:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/d/c;->b:Lcom/instabug/featuresrequest/ui/d/e;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 18
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->d:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 19
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->a:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/instabug/featuresrequest/ui/d/c$c;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/d/c$c;-><init>(Lcom/instabug/featuresrequest/ui/d/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/d/c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->g:I

    return p1
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/d/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/d/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/featuresrequest/ui/d/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/featuresrequest/ui/d/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic e(Lcom/instabug/featuresrequest/ui/d/c;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/d/c;->d:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/featuresrequest/ui/d/c;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/d/c;->e:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic g(Lcom/instabug/featuresrequest/ui/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/featuresrequest/ui/d/c;->g:I

    return p0
.end method


# virtual methods
.method public a(I)Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 55
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->i:Lcom/instabug/featuresrequest/ui/d/f/b;

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->f:Ljava/lang/Boolean;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/d/f/b;->c(Z)Lcom/instabug/featuresrequest/ui/d/f/b;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->i:Lcom/instabug/featuresrequest/ui/d/f/b;

    .line 58
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->i:Lcom/instabug/featuresrequest/ui/d/f/b;

    return-object p1

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->j:Lcom/instabug/featuresrequest/ui/d/g/b;

    if-nez p1, :cond_2

    .line 63
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->f:Ljava/lang/Boolean;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/d/g/b;->c(Z)Lcom/instabug/featuresrequest/ui/d/g/b;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->j:Lcom/instabug/featuresrequest/ui/d/g/b;

    .line 65
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->j:Lcom/instabug/featuresrequest/ui/d/g/b;

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$id;->instabug_fragment_container:I

    new-instance v2, Lcom/instabug/featuresrequest/ui/e/c;

    invoke-direct {v2}, Lcom/instabug/featuresrequest/ui/e/c;-><init>()V

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "search_features"

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$style;->IbFrPopupMenuOverlapAnchorLight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 14
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$style;->IbFrPopupMenuOverlapAnchorDark:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 17
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 18
    new-instance v1, Landroid/widget/PopupMenu;

    const/4 v2, 0x5

    invoke-direct {v1, v0, p1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_1

    .line 20
    :cond_2
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 24
    :goto_1
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/instabug/featuresrequest/R$menu;->ib_fr_sorting_actions_pop_up:I

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 25
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->g:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 27
    new-instance p1, Lcom/instabug/featuresrequest/ui/d/c$d;

    invoke-direct {p1, p0}, Lcom/instabug/featuresrequest/ui/d/c$d;-><init>(Lcom/instabug/featuresrequest/ui/d/c;)V

    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 54
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method protected addToolbarActionButtons()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/DynamicToolbarFragment;->toolbarActionButtons:Ljava/util/ArrayList;

    new-instance v1, Lcom/instabug/featuresrequest/ui/custom/f;

    sget v2, Lcom/instabug/featuresrequest/R$drawable;->ibg_fr_ic_add_white_36dp:I

    new-instance v3, Lcom/instabug/featuresrequest/ui/d/c$b;

    invoke-direct {v3, p0}, Lcom/instabug/featuresrequest/ui/d/c$b;-><init>(Lcom/instabug/featuresrequest/ui/d/c;)V

    sget-object v4, Lcom/instabug/featuresrequest/ui/custom/f$b;->ICON:Lcom/instabug/featuresrequest/ui/custom/f$b;

    const/4 v5, -0x1

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/instabug/featuresrequest/ui/custom/f;-><init>(IILcom/instabug/featuresrequest/ui/custom/f$a;Lcom/instabug/featuresrequest/ui/custom/f$b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/featuresrequest/c/b;

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instabug/featuresrequest/c/b;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getContentLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$layout;->ib_fr_features_main_fragment:I

    return v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->FEATURES_REQUEST:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v1, Lcom/instabug/featuresrequest/R$string;->instabug_str_features_request_header:I

    .line 3
    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getToolbarCloseActionButton()Lcom/instabug/featuresrequest/ui/custom/f;
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/featuresrequest/ui/custom/f;

    sget v1, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_close:I

    sget v2, Lcom/instabug/featuresrequest/R$string;->close:I

    new-instance v3, Lcom/instabug/featuresrequest/ui/d/c$a;

    invoke-direct {v3, p0}, Lcom/instabug/featuresrequest/ui/d/c$a;-><init>(Lcom/instabug/featuresrequest/ui/d/c;)V

    sget-object v4, Lcom/instabug/featuresrequest/ui/custom/f$b;->ICON:Lcom/instabug/featuresrequest/ui/custom/f$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instabug/featuresrequest/ui/custom/f;-><init>(IILcom/instabug/featuresrequest/ui/custom/f$a;Lcom/instabug/featuresrequest/ui/custom/f$b;)V

    return-object v0
.end method

.method protected initContentViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lcom/instabug/featuresrequest/ui/d/e;

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/instabug/featuresrequest/ui/d/e;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/instabug/featuresrequest/c/c;)V

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->b:Lcom/instabug/featuresrequest/ui/d/e;

    .line 3
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/d/c;->K()V

    .line 5
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/d/c;->J()V

    .line 7
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/d/c;->I()V

    return-void
.end method

.method public l()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->finishActivity()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcom/instabug/featuresrequest/R$id;->sortingActionsLayoutRoot:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/d/c;->a(Landroid/view/View;)V

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
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setRetainInstance(Z)V

    .line 3
    new-instance v0, Lcom/instabug/featuresrequest/ui/d/d;

    invoke-direct {v0, p0}, Lcom/instabug/featuresrequest/ui/d/d;-><init>(Lcom/instabug/featuresrequest/ui/d/b;)V

    iput-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->h:Ljava/util/ArrayList;

    .line 5
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->f()I

    move-result v0

    iput v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->g:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->d:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->b:Lcom/instabug/featuresrequest/ui/d/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/instabug/featuresrequest/ui/d/e;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/d/f/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/c/e;->onRefresh()V

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c;->b:Lcom/instabug/featuresrequest/ui/d/e;

    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/ui/d/e;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/d/g/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/c/e;->onRefresh()V

    return-void
.end method
