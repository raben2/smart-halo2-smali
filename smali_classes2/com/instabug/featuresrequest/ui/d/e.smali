.class public Lcom/instabug/featuresrequest/ui/d/e;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "FeaturesMainViewPagerAdapter.java"


# instance fields
.field a:Lcom/instabug/featuresrequest/c/c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/instabug/featuresrequest/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/d/e;->a:Lcom/instabug/featuresrequest/c/c;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/e;->a:Lcom/instabug/featuresrequest/c/c;

    invoke-interface {v0, p1}, Lcom/instabug/featuresrequest/c/c;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/e;->a:Lcom/instabug/featuresrequest/c/c;

    invoke-interface {v0, p1}, Lcom/instabug/featuresrequest/c/c;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "My features"

    return-object p1

    :cond_1
    const-string p1, "Features"

    return-object p1
.end method
