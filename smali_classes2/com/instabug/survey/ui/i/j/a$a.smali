.class Lcom/instabug/survey/ui/i/j/a$a;
.super Ljava/lang/Object;
.source "RateUsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/i/j/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Landroid/view/animation/Animation;

.field final synthetic c:Landroid/view/animation/Animation;

.field final synthetic d:Lcom/instabug/survey/ui/i/j/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/i/j/a;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/i/j/a$a;->d:Lcom/instabug/survey/ui/i/j/a;

    iput-object p2, p0, Lcom/instabug/survey/ui/i/j/a$a;->a:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/instabug/survey/ui/i/j/a$a;->b:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/instabug/survey/ui/i/j/a$a;->c:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/j/a$a;->d:Lcom/instabug/survey/ui/i/j/a;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/j/a;->a(Lcom/instabug/survey/ui/i/j/a;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/ui/i/j/a$a;->d:Lcom/instabug/survey/ui/i/j/a;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/j/a;->b(Lcom/instabug/survey/ui/i/j/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/ui/i/j/a$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/ui/i/j/a$a;->d:Lcom/instabug/survey/ui/i/j/a;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/j/a;->c(Lcom/instabug/survey/ui/i/j/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/ui/i/j/a$a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/i/j/a$a;->d:Lcom/instabug/survey/ui/i/j/a;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/j/a;->d(Lcom/instabug/survey/ui/i/j/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/ui/i/j/a$a;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
