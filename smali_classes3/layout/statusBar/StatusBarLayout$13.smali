.class Llayout/statusBar/StatusBarLayout$13;
.super Ljava/lang/Object;
.source "StatusBarLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/StatusBarLayout;->initHelpCard()V
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

    .line 481
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout$13;->this$0:Llayout/statusBar/StatusBarLayout;

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
    .locals 2

    .line 488
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$13;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-virtual {v0}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$13;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {v0}, Llayout/statusBar/StatusBarLayout;->access$500(Llayout/statusBar/StatusBarLayout;)V

    .line 491
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$13;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {v0}, Llayout/statusBar/StatusBarLayout;->access$400(Llayout/statusBar/StatusBarLayout;)Llayout/statusBar/StatusBarHelpCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Llayout/statusBar/StatusBarHelpCardAdapter;->stopAllVideos()V

    .line 492
    iget-object v0, p0, Llayout/statusBar/StatusBarLayout$13;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {v0}, Llayout/statusBar/StatusBarLayout;->access$400(Llayout/statusBar/StatusBarLayout;)Llayout/statusBar/StatusBarHelpCardAdapter;

    move-result-object v0

    iget-object v1, p0, Llayout/statusBar/StatusBarLayout$13;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-virtual {v1}, Llayout/statusBar/StatusBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Llayout/statusBar/StatusBarHelpCardAdapter;->playVideoAtIndex(ILandroid/content/Context;)V

    :cond_0
    return-void
.end method
