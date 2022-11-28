.class Lcom/instabug/featuresrequest/ui/custom/c$b;
.super Ljava/lang/Object;
.source "InstaToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/custom/c;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instabug/featuresrequest/ui/custom/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/custom/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$b;->b:Lcom/instabug/featuresrequest/ui/custom/c;

    iput p2, p0, Lcom/instabug/featuresrequest/ui/custom/c$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/c$b;->b:Lcom/instabug/featuresrequest/ui/custom/c;

    iget v0, p0, Lcom/instabug/featuresrequest/ui/custom/c$b;->a:I

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/c;->b(Lcom/instabug/featuresrequest/ui/custom/c;I)V

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
