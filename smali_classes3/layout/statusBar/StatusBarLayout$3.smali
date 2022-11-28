.class Llayout/statusBar/StatusBarLayout$3;
.super Ljava/lang/Object;
.source "StatusBarLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/StatusBarLayout;->getHelpCardEntranceListener()Landroid/view/animation/Animation$AnimationListener;
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

    .line 179
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout$3;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 188
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$3;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {p1}, Llayout/statusBar/StatusBarLayout;->access$400(Llayout/statusBar/StatusBarLayout;)Llayout/statusBar/StatusBarHelpCardAdapter;

    move-result-object p1

    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$3;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {v0}, Llayout/statusBar/StatusBarLayout;->access$000(Llayout/statusBar/StatusBarLayout;)Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCardPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Llayout/statusBar/StatusBarLayout$3;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-virtual {v1}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Llayout/statusBar/StatusBarHelpCardAdapter;->playVideoAtIndex(ILandroid/content/Context;)V

    .line 189
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$3;->this$0:Llayout/statusBar/StatusBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llayout/statusBar/StatusBarLayout;->access$202(Llayout/statusBar/StatusBarLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 182
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$3;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {p1}, Llayout/statusBar/StatusBarLayout;->access$000(Llayout/statusBar/StatusBarLayout;)Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCard:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$3;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {p1}, Llayout/statusBar/StatusBarLayout;->access$300(Llayout/statusBar/StatusBarLayout;)V

    return-void
.end method
