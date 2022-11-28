.class Lcom/instabug/featuresrequest/ui/a/b$d;
.super Ljava/lang/Object;
.source "AddCommentFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/a/b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/a/b;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-virtual {p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->f(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->f(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->f(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->f(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/instabug/featuresrequest/R$attr;->ib_fr_add_comment_edit_text_underline_color:I

    invoke-static {p2, v0}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->f(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$d;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->f(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_1
    return-void
.end method
