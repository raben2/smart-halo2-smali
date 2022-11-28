.class Llayout/statusBar/StatusBarLayout$7;
.super Ljava/lang/Object;
.source "StatusBarLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/StatusBarLayout;->showPagerArrow(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/statusBar/StatusBarLayout;

.field final synthetic val$arrowButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Llayout/statusBar/StatusBarLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 271
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout$7;->this$0:Llayout/statusBar/StatusBarLayout;

    iput-object p2, p0, Llayout/statusBar/StatusBarLayout$7;->val$arrowButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 274
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$7;->val$arrowButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
