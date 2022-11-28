.class Llayout/statusBar/StatusBarLayout$15;
.super Ljava/lang/Object;
.source "StatusBarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/StatusBarLayout;->initPagerButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/statusBar/StatusBarLayout;


# direct methods
.method constructor <init>(Llayout/statusBar/StatusBarLayout;)V
    .locals 0

    .line 523
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout$15;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 526
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$15;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {p1}, Llayout/statusBar/StatusBarLayout;->access$000(Llayout/statusBar/StatusBarLayout;)Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 527
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$15;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {v0}, Llayout/statusBar/StatusBarLayout;->access$400(Llayout/statusBar/StatusBarLayout;)Llayout/statusBar/StatusBarHelpCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Llayout/statusBar/StatusBarHelpCardAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 528
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$15;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {v0}, Llayout/statusBar/StatusBarLayout;->access$000(Llayout/statusBar/StatusBarLayout;)Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
