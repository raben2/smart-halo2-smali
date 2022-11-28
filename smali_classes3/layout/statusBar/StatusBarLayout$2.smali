.class Llayout/statusBar/StatusBarLayout$2;
.super Ljava/lang/Object;
.source "StatusBarLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/StatusBarLayout;->getHelpCardBackgroundExitListener()Landroid/view/animation/Animation$AnimationListener;
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

    .line 161
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout$2;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 168
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$2;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {p1}, Llayout/statusBar/StatusBarLayout;->access$000(Llayout/statusBar/StatusBarLayout;)Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->grayInnerOverlay:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
