.class Llayout/MainToolbarLayout$5;
.super Ljava/lang/Object;
.source "MainToolbarLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/MainToolbarLayout;->getExitAnimationListener(Landroid/widget/ImageView;)Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/MainToolbarLayout;

.field final synthetic val$grayHelpCardOverlay:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Llayout/MainToolbarLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 288
    iput-object p1, p0, Llayout/MainToolbarLayout$5;->this$0:Llayout/MainToolbarLayout;

    iput-object p2, p0, Llayout/MainToolbarLayout$5;->val$grayHelpCardOverlay:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 296
    iget-object p1, p0, Llayout/MainToolbarLayout$5;->val$grayHelpCardOverlay:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Llayout/MainToolbarLayout$5;->this$0:Llayout/MainToolbarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llayout/MainToolbarLayout;->access$202(Llayout/MainToolbarLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 291
    iget-object p1, p0, Llayout/MainToolbarLayout$5;->this$0:Llayout/MainToolbarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Llayout/MainToolbarLayout;->setElevation(Z)V

    return-void
.end method
