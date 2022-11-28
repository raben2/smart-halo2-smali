.class Llayout/DropMenuFragment$2;
.super Ljava/lang/Object;
.source "DropMenuFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/DropMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/DropMenuFragment;


# direct methods
.method constructor <init>(Llayout/DropMenuFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Llayout/DropMenuFragment$2;->this$0:Llayout/DropMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 109
    iget-object p1, p0, Llayout/DropMenuFragment$2;->this$0:Llayout/DropMenuFragment;

    invoke-static {p1}, Llayout/DropMenuFragment;->access$300(Llayout/DropMenuFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Llayout/DropMenuFragment$2;->this$0:Llayout/DropMenuFragment;

    invoke-virtual {p1}, Llayout/DropMenuFragment;->closeSelf()V

    .line 111
    iget-object p1, p0, Llayout/DropMenuFragment$2;->this$0:Llayout/DropMenuFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llayout/DropMenuFragment;->access$302(Llayout/DropMenuFragment;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
