.class Llayout/MapViewFragment$1;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/MapViewFragment;->animateMapControlsOverlay(ZLlayout/MapViewFragment$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/MapViewFragment;

.field final synthetic val$animationListener:Llayout/MapViewFragment$AnimationListener;

.field final synthetic val$shouldDisplayBottomDrawer:Z


# direct methods
.method constructor <init>(Llayout/MapViewFragment;ZLlayout/MapViewFragment$AnimationListener;)V
    .locals 0

    .line 355
    iput-object p1, p0, Llayout/MapViewFragment$1;->this$0:Llayout/MapViewFragment;

    iput-boolean p2, p0, Llayout/MapViewFragment$1;->val$shouldDisplayBottomDrawer:Z

    iput-object p3, p0, Llayout/MapViewFragment$1;->val$animationListener:Llayout/MapViewFragment$AnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 365
    iget-boolean p1, p0, Llayout/MapViewFragment$1;->val$shouldDisplayBottomDrawer:Z

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Llayout/MapViewFragment$1;->this$0:Llayout/MapViewFragment;

    invoke-static {p1}, Llayout/MapViewFragment;->access$000(Llayout/MapViewFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    :cond_0
    iget-object p1, p0, Llayout/MapViewFragment$1;->val$animationListener:Llayout/MapViewFragment$AnimationListener;

    if-eqz p1, :cond_1

    .line 370
    invoke-interface {p1}, Llayout/MapViewFragment$AnimationListener;->onAnimationCompleted()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 358
    iget-boolean p1, p0, Llayout/MapViewFragment$1;->val$shouldDisplayBottomDrawer:Z

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, p0, Llayout/MapViewFragment$1;->this$0:Llayout/MapViewFragment;

    invoke-static {p1}, Llayout/MapViewFragment;->access$000(Llayout/MapViewFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
