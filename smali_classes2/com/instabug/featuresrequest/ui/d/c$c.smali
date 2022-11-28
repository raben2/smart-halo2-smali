.class Lcom/instabug/featuresrequest/ui/d/c$c;
.super Ljava/lang/Object;
.source "FeaturesMainFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/d/c;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener<",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/d/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/d/c$c;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c$c;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/d/c;->e(Lcom/instabug/featuresrequest/ui/d/c;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/c$c;->a:Lcom/instabug/featuresrequest/ui/d/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/d/c;->e(Lcom/instabug/featuresrequest/ui/d/c;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
