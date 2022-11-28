.class Llayout/FitnessMainViewFragment$FitnessPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "FitnessMainViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/FitnessMainViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitnessPagerAdapter"
.end annotation


# instance fields
.field private tabTitles:[Ljava/lang/String;

.field final synthetic this$0:Llayout/FitnessMainViewFragment;


# direct methods
.method public constructor <init>(Llayout/FitnessMainViewFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 313
    iput-object p1, p0, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->this$0:Llayout/FitnessMainViewFragment;

    .line 314
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 315
    invoke-direct {p0}, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->getTabTitlesResources()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->tabTitles:[Ljava/lang/String;

    return-void
.end method

.method private getTabTitlesResources()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 306
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->this$0:Llayout/FitnessMainViewFragment;

    .line 307
    invoke-virtual {v1}, Llayout/FitnessMainViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->this$0:Llayout/FitnessMainViewFragment;

    .line 308
    invoke-virtual {v1}, Llayout/FitnessMainViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->this$0:Llayout/FitnessMainViewFragment;

    .line 309
    invoke-virtual {v1}, Llayout/FitnessMainViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 326
    :pswitch_0
    new-instance p1, Llayout/FitnessLifeTimeViewFragment;

    invoke-direct {p1}, Llayout/FitnessLifeTimeViewFragment;-><init>()V

    invoke-virtual {p1}, Llayout/FitnessLifeTimeViewFragment;->newInstance()Llayout/FitnessLifeTimeViewFragment;

    move-result-object p1

    return-object p1

    .line 324
    :pswitch_1
    new-instance p1, Llayout/FitnessPastViewFragment;

    invoke-direct {p1}, Llayout/FitnessPastViewFragment;-><init>()V

    invoke-virtual {p1}, Llayout/FitnessPastViewFragment;->newInstance()Llayout/FitnessPastViewFragment;

    move-result-object p1

    return-object p1

    .line 322
    :pswitch_2
    new-instance p1, Llayout/FitnessCurrentViewFragment;

    invoke-direct {p1}, Llayout/FitnessCurrentViewFragment;-><init>()V

    invoke-virtual {p1}, Llayout/FitnessCurrentViewFragment;->newInstance()Llayout/FitnessCurrentViewFragment;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 357
    iget-object v0, p0, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->tabTitles:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 334
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 344
    :pswitch_0
    iget-object p2, p0, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->this$0:Llayout/FitnessMainViewFragment;

    move-object v0, p1

    check-cast v0, Llayout/FitnessLifeTimeViewFragment;

    invoke-static {p2, v0}, Llayout/FitnessMainViewFragment;->access$602(Llayout/FitnessMainViewFragment;Llayout/FitnessLifeTimeViewFragment;)Llayout/FitnessLifeTimeViewFragment;

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object p2, p0, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->this$0:Llayout/FitnessMainViewFragment;

    move-object v0, p1

    check-cast v0, Llayout/FitnessPastViewFragment;

    invoke-static {p2, v0}, Llayout/FitnessMainViewFragment;->access$502(Llayout/FitnessMainViewFragment;Llayout/FitnessPastViewFragment;)Llayout/FitnessPastViewFragment;

    goto :goto_0

    .line 338
    :pswitch_2
    iget-object p2, p0, Llayout/FitnessMainViewFragment$FitnessPagerAdapter;->this$0:Llayout/FitnessMainViewFragment;

    move-object v0, p1

    check-cast v0, Llayout/FitnessCurrentViewFragment;

    invoke-static {p2, v0}, Llayout/FitnessMainViewFragment;->access$402(Llayout/FitnessMainViewFragment;Llayout/FitnessCurrentViewFragment;)Llayout/FitnessCurrentViewFragment;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
