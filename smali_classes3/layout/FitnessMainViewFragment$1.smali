.class Llayout/FitnessMainViewFragment$1;
.super Ljava/lang/Object;
.source "FitnessMainViewFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/FitnessMainViewFragment;->getPagerOnPageChangedListener()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/FitnessMainViewFragment;


# direct methods
.method constructor <init>(Llayout/FitnessMainViewFragment;)V
    .locals 0

    .line 159
    iput-object p1, p0, Llayout/FitnessMainViewFragment$1;->this$0:Llayout/FitnessMainViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Llayout/FitnessMainViewFragment$1;->this$0:Llayout/FitnessMainViewFragment;

    invoke-static {v0, p1}, Llayout/FitnessMainViewFragment;->access$000(Llayout/FitnessMainViewFragment;I)V

    .line 168
    iget-object v0, p0, Llayout/FitnessMainViewFragment$1;->this$0:Llayout/FitnessMainViewFragment;

    invoke-static {v0, p1}, Llayout/FitnessMainViewFragment;->access$102(Llayout/FitnessMainViewFragment;I)I

    return-void
.end method
